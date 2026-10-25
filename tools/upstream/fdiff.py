"""fdiff.py a.pex b.pex -> function-level diff summary (header vars/props + changed/added/removed funcs)"""
import sys, re, difflib
sys.path.insert(0, __import__('os').path.dirname(__file__))
from pexdump import dump
def split(t):
    head, funcs, cur, state = [], {}, None, ''
    for l in t.splitlines():
        if l.startswith(' state '): state = l[7:]; cur = None; continue
        m = re.match(r'  func (\S+)', l)
        if m: cur = (state.strip("'") + '::' if state != "''" else '') + m.group(1); funcs[cur] = [l]; continue
        if cur and l.startswith('    '): funcs[cur].append(l)
        else: cur = None; head.append(l)
    return head, funcs
ha, fa = split(dump(sys.argv[1])); hb, fb = split(dump(sys.argv[2]))
for l in difflib.unified_diff(ha, hb, lineterm='', n=0):
    if not l.startswith(('---', '+++', '@@')): print('HDR', l)
for k in sorted(set(fa) | set(fb), key=str.lower):
    if k not in fa: print('ADDED  ', k, len(fb[k]))
    elif k not in fb: print('REMOVED', k)
    elif fa[k] != fb[k]:
        n = sum(1 for l in difflib.unified_diff(fa[k], fb[k], lineterm='', n=0) if l[:1] in '+-' and not l.startswith(('---', '+++')))
        print('CHANGED', k, n)
