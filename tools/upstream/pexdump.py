"""Canonical text dump of a Skyrim .pex, no timestamps/line numbers, strings resolved.
Usage: pexdump.py file.pex            -> prints dump
       pexdump.py --cmp dirA dirB     -> lists scripts whose dumps differ
"""
import struct, sys, os

NARGS = {0:0,1:3,2:3,3:3,4:3,5:3,6:3,7:3,8:3,9:3,10:2,11:2,12:2,13:2,14:2,15:3,16:3,17:3,18:3,19:3,
         20:1,21:2,22:2,23:3,24:2,25:3,26:1,27:3,28:3,29:3,30:2,31:2,32:3,33:3,34:4,35:4}
VARARG = {23, 24, 25}
OPN = {0:'nop',1:'iadd',2:'fadd',3:'isub',4:'fsub',5:'imul',6:'fmul',7:'idiv',8:'fdiv',9:'imod',10:'not',
       11:'ineg',12:'fneg',13:'assign',14:'cast',15:'cmp_eq',16:'cmp_lt',17:'cmp_le',18:'cmp_gt',19:'cmp_ge',
       20:'jmp',21:'jmpt',22:'jmpf',23:'callmethod',24:'callparent',25:'callstatic',26:'return',27:'strcat',
       28:'propget',29:'propset',30:'array_create',31:'array_length',32:'array_getelement',33:'array_setelement',
       34:'array_findelement',35:'array_rfindelement'}

class R:
    def __init__(s, b): s.b, s.p = b, 0
    def u8(s): v = s.b[s.p]; s.p += 1; return v
    def u16(s): v = struct.unpack_from('>H', s.b, s.p)[0]; s.p += 2; return v
    def u32(s): v = struct.unpack_from('>I', s.b, s.p)[0]; s.p += 4; return v
    def i32(s): v = struct.unpack_from('>i', s.b, s.p)[0]; s.p += 4; return v
    def f32(s): v = struct.unpack_from('>f', s.b, s.p)[0]; s.p += 4; return v
    def u64(s): v = struct.unpack_from('>Q', s.b, s.p)[0]; s.p += 8; return v
    def ws(s): n = s.u16(); v = s.b[s.p:s.p+n].decode('latin-1'); s.p += n; return v

def dump(path):
    r = R(open(path, 'rb').read())
    assert r.u32() == 0xFA57C0DE
    r.u8(); r.u8(); r.u16(); r.u64(); r.ws(); r.ws(); r.ws()
    st = [r.ws() for _ in range(r.u16())]
    S = lambda: st[r.u16()]
    if r.u8():
        r.u64()
        for _ in range(r.u16()):
            r.u16(); r.u16(); r.u16(); r.u8(); n = r.u16(); r.p += 2 * n
    out = []
    uf = [(S(), r.u8()) for _ in range(r.u16())]
    out.append('userflags %r' % sorted(uf))
    def var():
        t = r.u8()
        if t == 0: return 'None'
        if t == 1: return 'id:' + S()
        if t == 2: return repr(S())
        if t == 3: return str(r.i32())
        if t == 4: return repr(r.f32())
        if t == 5: return 'true' if r.u8() else 'false'
        raise ValueError(t)
    def func(name):
        rt = S(); doc = S(); fl = r.u32(); ff = r.u8()
        ps = [(S(), S()) for _ in range(r.u16())]
        ls = [(S(), S()) for _ in range(r.u16())]
        out.append('  func %s -> %s flags=%d/%d params=%r doc=%r' % (name, rt, fl, ff, ps, doc))
        tmap = {}
        def norm(x):
            if x.startswith('id:::temp') or x.startswith('id:::nonetemp'):
                if x not in tmap: tmap[x] = 'id:T%d' % len(tmap)
                return tmap[x]
            return x
        body = []
        for i in range(r.u16()):
            op = r.u8(); a = [var() for _ in range(NARGS[op])]
            if op in VARARG:
                n = r.u8(); assert n == 3; c = r.i32(); a += [var() for _ in range(c)]
            body.append('    %s %s' % (OPN[op], ' '.join(norm(x) for x in a)))
        out.append('    locals %r' % sorted((n, t) for n, t in ls if not n.startswith('::')))
        out.extend(body)
    for _ in range(r.u16()):
        oname = S(); r.u32()
        out.append('object %s extends %s flags=%d autostate=%r doc=%r' % (oname, S(), (S(), r.u32())[1], S(), None))
        vs = []
        for _ in range(r.u16()):
            n = S(); t = S(); f = r.u32(); v = var()
            vs.append(' var %s %s %d = %s' % (t, n, f, v))
        out.extend(sorted(vs, key=str.lower))
        props = []
        for _ in range(r.u16()):
            start = len(out)
            n = S(); t = S(); d = S(); f = r.u32(); pf = r.u8()
            out.append(' prop %s %s flags=%d/%d doc=%r' % (t, n, f, pf, d))
            if pf & 4: out.append('  auto ' + S())
            else:
                if pf & 1: func(n + '.get')
                if pf & 2: func(n + '.set')
            props.append((n.lower(), out[start:])); del out[start:]
        for n, lines in sorted(props): out.extend(lines)
        for _ in range(r.u16()):
            sn = S(); out.append(' state %r' % sn)
            fs = []
            for _ in range(r.u16()):
                fn = S(); start = len(out); func(fn); fs.append((fn, out[start:])); del out[start:]
            for fn, lines in sorted(fs, key=lambda x: x[0].lower()): out.extend(lines)
    return '\n'.join(out)

import re as _re
_Q = _re.compile(r"""('(?:[^'\\]|\\.)*'|"(?:[^"\\]|\\.)*")""")
def _loose(text):
    out = []
    for line in text.splitlines():
        if line.startswith('    locals '):
            line = _re.sub(r"\('(?:::)?mangled_[^']*', '[^']*'\),? ?", '', line.lower())
            out.append(line); continue
        if line.startswith(('  func ', ' var ', ' prop ')):
            line = line.lower()
        parts = _Q.split(line)
        line = ''.join(p if i % 2 else _re.sub(r'id:t\d+', 'id:T', p.lower()) for i, p in enumerate(parts))
        line = _re.sub(r'id:(?:::)?mangled_([a-z0-9_]+?)_\d+\b', r'id:mangled_\1', line)
        out.append(line)
    return '\n'.join(out)
_dump_strict = dump
def dump(path):
    t = _dump_strict(path)
    return _loose(t) if os.environ.get('LOOSE') else t


if __name__ == '__main__':
    if sys.argv[1] == '--cmp':
        a, b = sys.argv[2], sys.argv[3]
        for f in sorted(os.listdir(a)):
            if not f.lower().endswith('.pex'): continue
            pb = os.path.join(b, f)
            if not os.path.exists(pb): print('ONLY-A', f); continue
            if dump(os.path.join(a, f)) != dump(pb): print('DIFF', f)
        for f in sorted(os.listdir(b)):
            if f.lower().endswith('.pex') and not os.path.exists(os.path.join(a, f)): print('ONLY-B', f)
    else:
        print(dump(sys.argv[1]))
