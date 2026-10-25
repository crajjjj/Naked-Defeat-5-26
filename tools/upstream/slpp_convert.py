"""slpp_convert.py <file.psc> [--dry]  apply the 6.46.2 P+ patch's mechanical scene-query conversion
(legacy sslBaseAnimation[] queries -> P+ registry scene IDs) to live code. Prints every change.
Commented-out code (; and ;/ /;) is left alone."""
import re, sys
from pscblocks import code_lines

ARR = ['Animations1', 'Animations2', 'Animations3', 'Animations4',
       'Animations1_Follower01', 'Animations2_Follower01', 'Animations3_Follower01', 'Animations4_Follower01',
       'AnimationsForeplay', 'AnimationsSolo', 'AnimationsIdle01',
       'AnimationsPee1', 'AnimationsPee2', 'AnimationsPee3', 'AnimationsPee4', 'AnimationsForeplayName']
arr_re = '|'.join(sorted(ARR, key=len, reverse=True))
FURN = '\tThread.SetFurnitureStatus(0)\t;#P+ SLU+ DisableFurnitureUse(true) has no P+ equivalent; furniture is controlled by SetFurnitureStatus (0 = disabled, same as P+ DisableBedUse(true))'

RULES = [
    # X = SexLab.GetAnimationsByTags(...)  ->  X_IDs = cfgqst.SLPP_GetSceneIDs(...)
    (re.compile(r'\b(%s)(\s*=\s*)sexlab\.getanimationsbytags\(' % arr_re, re.I), r'\1_IDs\2cfgqst.SLPP_GetSceneIDs('),
    (re.compile(r'\b(%s)(\s*=\s*)sexlab\.getcreatureanimationsbyracekeytags\(' % arr_re, re.I), r'\1_IDs\2cfgqst.SLPP_GetCreatureSceneIDs('),
    # Thread.SetForcedAnimations(X) / SetAnimations(X)
    (re.compile(r'\.(setforcedanimations|setanimations)\(\s*(%s)\s*\)' % arr_re, re.I), r'.\1(cfgqst.SLPP_AnimsFromIDs(\2_IDs))'),
    # X.Length / X[i] reads of converted arrays
    (re.compile(r'\b(%s)\.length\b' % arr_re, re.I), r'\1_IDs.Length'),
    (re.compile(r'\bsexlab\.getanimationbyname\(', re.I), r'SexlabRegistry.GetSceneByName('),
]
SUSPECT = re.compile(r'getanimationsbytags|getcreatureanimationsbyracekeytags|getanimationbyname|findanimationbyname|'
                     r'disablefurnitureuse|sslbaseanimation\[\]|\b(%s)\b(?!_IDs)' % arr_re, re.I)

def convert(lines, label=''):
    code = code_lines(lines)
    out, changes, suspects = [], [], []
    for i, (l, c) in enumerate(zip(lines, code)):
        if not c.strip(): out.append(l); continue
        new = l
        # only rewrite inside the code part of the line (keep trailing ; comment untouched)
        cpos = len(c.rstrip('\r\n'))
        head, tail = new[:cpos], new[cpos:]
        for rx, rep in RULES:
            head = rx.sub(rep, head)
        if re.search(r'\bdisablefurnitureuse\(\s*true\s*\)', head, re.I):
            ind = re.match(r'\s*', head).group(0)
            head = ind + FURN.lstrip('\t'); tail = '\r\n' if l.endswith('\r\n') else '\n'
        new = head + tail
        if new != l: changes.append((i + 1, l.strip(), new.strip()))
        if SUSPECT.search(code_lines([new])[0]): suspects.append((i + 1, new.strip()))
        out.append(new)
    return out, changes, suspects

if __name__ == '__main__':
    p = sys.argv[1]
    L = open(p, encoding='latin-1', newline='').read().splitlines(True)
    out, ch, su = convert(L)
    for n, a, b in ch: print('CHG %d: %s\n     -> %s' % (n, a[:150], b[:150]))
    for n, s in su: print('SUSPECT %d: %s' % (n, s[:170]))
    if '--dry' not in sys.argv:
        open(p, 'w', encoding='latin-1', newline='').write(''.join(out))
