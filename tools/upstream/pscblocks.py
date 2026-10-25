"""Split a Papyrus source into function/event blocks keyed by (state, name), lowercase.
Lines are kept verbatim (line endings included). Comment lines directly above a
function are NOT attached (they stay in the gap text)."""
import re

HDR = re.compile(r'^\s*(?:[\w\[\]]+\s+)?(function|event)\s+(\w+)\s*\(', re.I)
END = re.compile(r'^\s*end(function|event)\b', re.I)
STATE = re.compile(r'^\s*(?:auto\s+)?state\s+(\w+)', re.I)
ENDSTATE = re.compile(r'^\s*endstate\b', re.I)
NATIVE = re.compile(r'\bnative\b', re.I)

def code_lines(lines):
    """code text of each line: strings kept, ';' line comments, ';/ /;' block comments and
    '{ }' docstrings removed."""
    out, blk, doc = [], False, False
    for l in lines:
        c, i, q = [], 0, False
        while i < len(l):
            ch = l[i]
            if blk:
                if l.startswith('/;', i): blk = False; i += 2; continue
                i += 1; continue
            if doc:
                if ch == '}': doc = False
                i += 1; continue
            if q:
                c.append(ch)
                if ch == '\\': c.append(l[i + 1:i + 2]); i += 2; continue
                if ch == '"': q = False
                i += 1; continue
            if ch == '"': q = True; c.append(ch); i += 1; continue
            if l.startswith(';/', i): blk = True; i += 2; continue
            if ch == ';': break
            if ch == '{': doc = True; i += 1; continue
            c.append(ch); i += 1
        out.append(''.join(c))
    return out

def split(lines):
    """returns list of items: ('text', [lines]) or ('func', key, [lines])"""
    code = code_lines(lines)
    items, state, i, buf = [], '', 0, []
    while i < len(lines):
        s = code[i]
        m = HDR.match(s)
        if m and not NATIVE.search(s):
            if buf: items.append(('text', buf)); buf = []
            key = (state, m.group(2).lower())
            blk = [lines[i]]; i += 1
            while i < len(lines):
                blk.append(lines[i])
                if END.match(code[i]): break
                i += 1
            i += 1
            items.append(('func', key, blk)); continue
        ms = STATE.match(s)
        if ms: state = ms.group(1).lower()
        elif ENDSTATE.match(s): state = ''
        buf.append(lines[i]); i += 1
    if buf: items.append(('text', buf))
    return items

def funcs(lines):
    return {it[1]: it[2] for it in split(lines) if it[0] == 'func'}
