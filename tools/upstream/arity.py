"""arity.py <dir of pex> [extra dir...]  report callmethod/callstatic arg-count mismatches against
the callee's declared parameter count, for callees defined in the given pex dirs (later dirs override)."""
import sys, os, glob, re
from pexdump import _dump_strict as dump

TOK = re.compile(r"""'(?:[^'\\]|\\.)*'|\"(?:[^\"\\]|\\.)*\"|\S+""")
sigs = {}      # (script, func) -> nparams
types = {}     # script -> {var: type}
calls = []     # (script, func_ctx, op, target_type, func, nargs)
files = {}
for d in sys.argv[1:]:
    for p in glob.glob(os.path.join(d, '*.pex')):
        files[os.path.basename(p).lower()] = p
for name, p in sorted(files.items()):
    script = name[:-4]
    t = dump(p)
    vt = {}
    for l in t.splitlines():
        m = re.match(r' var (\S+) (\S+) ', l)
        if m: vt[m.group(2).lower()] = m.group(1).lower()
        m = re.match(r' prop (\S+) (\S+) ', l)
        if m: vt[m.group(2).lower()] = m.group(1).lower()
    cur = None; loc = {}
    for l in t.splitlines():
        m = re.match(r'  func (\S+) -> \S+ flags=\S+ params=(\[.*?\]) doc=', l)
        if m:
            cur = m.group(1); ps = eval(m.group(2))
            sigs[(script, cur.lower())] = len(ps)
            loc = {n.lower(): ty.lower() for n, ty in ps}
            continue
        m = re.match(r'    locals (\[.*\])', l)
        if m:
            loc.update({n.lower(): ty.lower() for n, ty in eval(m.group(1))}); continue
        m = re.match(r'    (callmethod|callstatic) (.*)', l)
        if m:
            a = TOK.findall(m.group(2))
            if m.group(1) == 'callmethod':
                fn, obj = a[0][3:], a[1][3:]
                o = obj.lower()
                ty = script if o == 'self' else loc.get(o) or vt.get(o)
                nargs = len(a) - 3
            else:
                ty, fn = a[0][3:].lower(), a[1][3:]
                nargs = len(a) - 3
            calls.append((script, cur, ty, fn.lower(), nargs))
bad = 0
for script, ctx, ty, fn, n in calls:
    if ty and (ty, fn) in sigs and sigs[(ty, fn)] != n:
        print('%s.%s -> %s.%s: %d args, callee takes %d' % (script, ctx, ty, fn, n, sigs[(ty, fn)])); bad += 1
print('mismatches:', bad)
