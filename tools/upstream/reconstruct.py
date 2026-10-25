"""reconstruct.py <old_src.psc> <decompiled_new.psc> <fdiff list> <out.psc>
Takes the last commented upstream source and swaps in the decompiled new version of every function the
bytecode says changed/added (fdiff.py output: compile(old_src) vs the new official .pex), deletes removed
ones, and appends new script-level vars/props. A function the decompiler could not structure is kept
as the old text and reported: port it by hand from fnd.py's bytecode diff."""
import sys, re
from pscblocks import split, funcs

src = open(sys.argv[1], encoding='latin-1', newline='').read().splitlines(keepends=True)
dec = open(sys.argv[2], encoding='latin-1', newline='').read().splitlines(keepends=True)
nl = '\r\n' if src[0].endswith('\r\n') else '\n'
def unmangle(l):
    # compiler: pex = utf8(cp1252(src)); decompiler: psc = utf8(cp1252(pex)) -> undo both rounds
    if all(ord(c) < 128 for c in l): return l
    try:
        b = l.encode('latin-1')
        for _ in range(2): b = b.decode('utf-8').encode('cp1252')
        return b.decode('latin-1')
    except Exception:
        print('WARN could not unmangle:', ascii(l[:80])); return l
dec = [unmangle(l.rstrip('\r\n')) + nl for l in dec]
changed, added, removed, hdr = set(), [], set(), []
for l in open(sys.argv[3]):
    p = l.split()
    if p[0] == 'CHANGED': changed.add(p[1].lower())
    elif p[0] == 'ADDED': added.append(p[1].lower())
    elif p[0] == 'REMOVED': removed.add(p[1].lower())
    elif p[0] == 'HDR': hdr.append(l)
dfun = funcs(dec)
ditems = [it for it in split(dec) if it[0] == 'func']
dorder = [it[1][1] for it in ditems if it[1][0] == '']

items = split(src)
out = []
present = set()
for it in items:
    if it[0] == 'text': out.append(it); continue
    st, name = it[1]
    if st == '' and name in removed: continue
    if st == '' and name in changed and any('DECOMPILE FAILED' in l for l in dfun[('', name)]):
        print('WARN decompile failed, kept 6.50 text, port by hand:', name)
    elif st == '' and name in changed:
        out.append(('func', it[1], dfun[('', name)])); present.add(name); continue
    out.append(it); present.add(name) if st == '' else None
# insert added functions after their predecessor in decompiled order
for name in added:
    idx = dorder.index(name)
    pred = next((dorder[j] for j in range(idx - 1, -1, -1) if dorder[j] in present), None)
    blk = dfun[('', name)]
    pos = None
    if pred:
        for k, it in enumerate(out):
            if it[0] == 'func' and it[1] == ('', pred): pos = k + 1; break
    ins = [('text', [nl]), ('func', ('', name), blk)]
    if pos is None: out.extend(ins)
    else: out[pos:pos] = ins
    present.add(name)
# new script-level declarations
decls = []
for h in hdr:
    m = re.match(r'HDR \+ var (\S+) (\S+) \d+ = (.*)', h)
    if m and not m.group(2).startswith('::'):
        name = m.group(2)
        line = next(l for l in dec if re.match(r'^\s*[\w\[\]]+\s+%s\b(\s*=.*)?\s*$' % re.escape(name), l, re.I))
        decls.append(line.strip() + nl)
    m = re.match(r'HDR \+ prop (\S+) (\S+) ', h)
    if m:
        name = m.group(2)
        line = next(l for l in dec if re.match(r'^\s*[\w\[\]]+\s+property\s+%s\b' % re.escape(name), l, re.I))
        decls.append(line.strip() + nl)
    if h.startswith('HDR -'): print('WARN header removal not handled:', h.strip())
text = ''.join(''.join(it[1] if it[0] == 'text' else it[2]) for it in out)
if decls:
    text = text.rstrip('\r\n') + nl + nl + '; ---- added in Naked Defeat 6.51 ----' + nl + ''.join(decls)
open(sys.argv[4], 'w', encoding='latin-1', newline='').write(text)
print(sys.argv[4], 'changed=%d added=%d removed=%d decls=%d' % (len(changed), len(added), len(removed), len(decls)))
missing = [n for n in changed if ('', n) not in funcs(src)]
if missing: print('WARN changed but not found in src:', missing)
