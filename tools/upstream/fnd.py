"""fnd.py a.pex b.pex funcname  -> unified diff of one function's bytecode"""
import difflib, sys
from pexdump import dump
def fn(t, name):
    out, on = [], False
    for l in t.splitlines():
        if l.startswith('  func '): on = l.split()[1].lower() == name.lower()
        elif not l.startswith('    '): on = False
        if on: out.append(l)
    return out
a = fn(dump(sys.argv[1]), sys.argv[3]); b = fn(dump(sys.argv[2]), sys.argv[3])
for l in difflib.unified_diff(a, b, lineterm='', n=int(sys.argv[4]) if len(sys.argv) > 4 else 3): print(l)
