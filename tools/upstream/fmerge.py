"""fmerge.py <base> <ours> <theirs> <out>  function-level 3-way merge, theirs' layout as skeleton.
Prints a report; conflicting functions get diff3 markers inside the function block."""
import sys, subprocess, tempfile, os, difflib
from pscblocks import split

def load(p):
    L = open(p, encoding='latin-1', newline='').read().splitlines(True)
    return [l.rstrip('\r\n') + '\r\n' for l in L]   # normalize CRLF

B, O, T = (split(load(p)) for p in sys.argv[1:4])
def fmap(items): return {it[1]: it[2] for it in items if it[0] == 'func'}
fb, fo, ft = fmap(B), fmap(O), fmap(T)
def gaps(items): return [l for it in items if it[0] == 'text' for l in it[1]]
norm = lambda blk: None if blk is None else ''.join(blk)

def merge3(o, b, t):
    d = tempfile.mkdtemp()
    ps = []
    for n, x in (('ours', o), ('base', b), ('theirs', t)):
        p = os.path.join(d, n); open(p, 'w', encoding='latin-1', newline='').write(''.join(x)); ps.append(p)
    r = subprocess.run(['git', 'merge-file', '-p', '--diff3', '-L', 'ours', '-L', 'base', '-L', 'theirs'] + ps,
                       capture_output=True)
    return r.returncode, r.stdout.decode('latin-1')

report = {'take_theirs': [], 'take_ours': [], 'automerged': [], 'CONFLICT': [], 'ours_added': [],
          'theirs_deleted_ours_changed': [], 'theirs_deleted': [], 'ours_deleted': []}
out = []
for it in T:
    if it[0] == 'text': out.append(''.join(it[1])); continue
    k = it[1]; b, o, t = norm(fb.get(k)), norm(fo.get(k)), norm(ft[k])
    if o == b or (o is None and b is None):
        out.append(t); report['take_theirs'].append(k) if t != b else None
    elif t == b:
        out.append(o if o is not None else ''); report['take_ours' if o is not None else 'ours_deleted'].append(k)
    elif o is None:
        out.append(t); report['CONFLICT'].append((k, 'ours deleted, theirs changed'))
    else:
        rc, m = merge3(fo[k], fb.get(k) or [], ft[k])
        out.append(m if rc == 0 else ';@@CONFLICT@@ resolve: ' + k[1] + '\r\n' + t)
        (report['automerged'] if rc == 0 else report['CONFLICT']).append(k if rc == 0 else (k, '%d hunks' % rc))
# functions only in ours (added by us) or deleted by theirs
torder = [it[1] for it in T if it[0] == 'func']
oorder = [it[1] for it in O if it[0] == 'func']
result_keys = list(torder)
inserts = []
for i, k in enumerate(oorder):
    if k in ft: continue
    if k in fb:
        if norm(fo[k]) != norm(fb[k]): report['theirs_deleted_ours_changed'].append(k)
        else: report['theirs_deleted'].append(k)
        continue
    pred = next((oorder[j] for j in range(i - 1, -1, -1) if oorder[j] in result_keys), None)
    inserts.append((pred, k)); result_keys.insert(result_keys.index(pred) + 1 if pred else len(result_keys), k)
    report['ours_added'].append((k, 'after', pred))
# rebuild with inserts: map func position in out list
text = []
pos = 0
func_iter = iter(torder)
idx_of = {}
for i, it in enumerate(T):
    if it[0] == 'func': idx_of[it[1]] = i
for i, chunk in enumerate(out):
    text.append(chunk)
    if T[i][0] == 'func':
        k = T[i][1]
        for pred, ak in inserts:
            if pred == k:
                text.append('\r\n' + ''.join(fo[ak]))
                # chained inserts (ours-added after ours-added)
                chain = [ak]
                while True:
                    nxt = [a2 for p2, a2 in inserts if p2 == chain[-1]]
                    if not nxt: break
                    for a2 in nxt: text.append('\r\n' + ''.join(fo[a2])); chain.append(a2)
for pred, ak in inserts:
    if pred is None: text.append('\r\n' + ''.join(fo[ak]))
open(sys.argv[4], 'w', encoding='latin-1', newline='').write(''.join(text))
# gap (script-level text) changes made by ours
gd = [l for l in difflib.unified_diff([x.rstrip() for x in gaps(B)], [x.rstrip() for x in gaps(O)], lineterm='', n=0)
      if not l.startswith(('---', '+++')) and l.strip() not in ('+', '-')]
def fmt(x):
    if isinstance(x, tuple) and len(x) == 2 and isinstance(x[0], str): return (x[0] + '::' if x[0] else '') + x[1]
    return '(' + ' '.join(fmt(y) if isinstance(y, tuple) else str(y) for y in x) + ')'
for k, v in report.items():
    if v: print('%-28s %s' % (k, ', '.join(fmt(x) for x in v)))
print('ours script-level text changes (apply by hand if not in theirs):')
print('\n'.join('   ' + l for l in gd))
