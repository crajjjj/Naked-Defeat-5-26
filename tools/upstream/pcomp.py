"""pcomp.py <srcdir_first> <outdir> <script.psc>...  compile with the repo ppj's import list, <srcdir_first>
replacing .\\Source. Env: EXTRA_IMPORTS (;-list, inserted right after it), DROP_IMPORTS (;-list of
substrings to drop), PFLAGS (extra compiler flags; -op matches upstream builds), PTIMEOUT (s per file)."""
import re, subprocess, sys, os
PPJ = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', 'skyrimse.ppj')
G = os.environ.get('SKYRIM_GAME_PATH', r"C:\SteamLibrary\steamapps\common\Skyrim Special Edition")
x = open(PPJ, encoding='utf-8').read()
x = re.sub(r'<!--.*?-->', '', x, flags=re.S)
imps = re.findall(r'<Import>(.*?)</Import>', x)
first = sys.argv[1]; out = sys.argv[2]
imps = [first] + [i for i in imps if not i.startswith('.')]
drop = os.environ.get('DROP_IMPORTS')
if drop: imps = [i for i in imps if not any(d.lower() in i.lower() for d in drop.split(';'))]
extra = os.environ.get('EXTRA_IMPORTS')
if extra: imps = [first] + extra.split(';') + imps[1:]
os.makedirs(out, exist_ok=True)
rc = 0
for s in sys.argv[3:]:
    cmd = [os.path.join(G, 'Papyrus Compiler', 'PapyrusCompiler.exe'), s, '-i=' + ';'.join(imps),
           '-o=' + out, '-f=' + os.path.join(G, r'Data\Source\Scripts\TESV_Papyrus_Flags.flg')] + os.environ.get('PFLAGS', '').split()
    try:
        p = subprocess.run(cmd, capture_output=True, text=True, timeout=int(os.environ.get('PTIMEOUT', '420')))
    except subprocess.TimeoutExpired as e:
        out_ = e.stdout.decode(errors='replace') if isinstance(e.stdout, bytes) else (e.stdout or '')
        print(os.path.basename(s), 'TIMEOUT', *list(dict.fromkeys(out_.splitlines()))[:20], sep='\n  '); rc = 1; continue
    lines = [l for l in (p.stdout + p.stderr).splitlines() if p.returncode and l.strip() and not l.startswith(('Starting', 'Assembly', 'Compilation succeeded', 'Batch compile'))]
    print(os.path.basename(s), 'rc=%d' % p.returncode, *list(dict.fromkeys(lines))[:30], sep='\n  ' if lines else ' ')
    rc |= p.returncode
sys.exit(rc)
