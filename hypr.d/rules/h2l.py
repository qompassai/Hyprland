#!/usr/bin/env python3
# /qompassai/dotfiles/.local/bin/h2l
# Qompass AI
# Copyright (C) 2026 Qompass AI, All rights reserved
# ----------------------------------------
"""
h2l - Hyprland .conf to .lua converter
Handles: env, monitor, exec-once, exec, bind/bindel/bindm/bindr,
         section blocks, nested blocks, col.* keys,
         hyprlang conditionals, source, comments,
         $variable substitution, Unicode/emoji in strings,
         shell subcommands with nested single quotes,
         regex patterns with backslash sequences (windowrule fix),
         already-converted .lua input passthrough.
"""

import re
import sys
from pathlib import Path

VARS: dict = {}

# ---------------------------------------------------------------------------
# String helpers
# ---------------------------------------------------------------------------

def resolve_vars(s: str) -> str:
    def replacer(m):
        name = m.group(1)
        return VARS.get(name, m.group(0))
    return re.sub(r'\$([A-Za-z_][A-Za-z0-9_]*)', replacer, s)


_LUA_VALID_ESCAPES = set('abfnrtvz\\\'"0123456789xuU\n\r ')

def _has_invalid_lua_escape(s: str) -> bool:
    i = 0
    while i < len(s):
        if s[i] == '\\' and i + 1 < len(s):
            if s[i + 1] not in _LUA_VALID_ESCAPES:
                return True
            i += 2
        else:
            i += 1
    return False


def needs_long_string(s: str) -> bool:
    if "'" in s:
        return True
    if _has_invalid_lua_escape(s):
        return True
    return False


def lua_string(s: str) -> str:
    if needs_long_string(s):
        level = 0
        while (']' + '=' * level + ']') in s:
            level += 1
        eq = '=' * level
        return f'[{eq}[{s}]{eq}]'
    return f"'{s}'"


def lua_value(raw: str) -> str:
    v = raw.strip()
    if v.lower() == 'true':
        return 'true'
    if v.lower() == 'false':
        return 'false'
    if re.fullmatch(r'-?\d+', v):
        return v
    if re.fullmatch(r'-?\d+\.\d+', v):
        return v
    return lua_string(v)


def lua_key(k: str) -> str:
    k = k.strip()
    if '.' in k or not re.fullmatch(r'[A-Za-z_][A-Za-z0-9_]*', k):
        return f"['{k}']"
    return k


def ind(n: int) -> str:
    return '    ' * n


def strip_inline_comment(s: str) -> tuple:
    in_single = False
    in_double = False
    for i, ch in enumerate(s):
        if ch == "'" and not in_double:
            in_single = not in_single
        elif ch == '"' and not in_single:
            in_double = not in_double
        elif ch == '#' and not in_single and not in_double:
            return s[:i].rstrip(), '  -- ' + s[i + 1:].strip()
    return s, ''

# ---------------------------------------------------------------------------
# Line converters
# ---------------------------------------------------------------------------

def convert_var_decl(s: str) -> str:
    m = re.match(r'^\$([A-Za-z_][A-Za-z0-9_]*)\s*=\s*(.+)$', s)
    if not m:
        return f'-- FIXME(var): {s}'
    name = m.group(1)
    val, _ = strip_inline_comment(m.group(2).strip())
    val = val.strip()
    VARS[name] = val
    return f'local {name} = {lua_string(val)}'


def convert_env(s: str) -> str:
    m = re.match(r'^env\s*=\s*([^,]+?)\s*,\s*(.+)$', s)
    if not m:
        return f'-- FIXME(env): {s}'
    key = m.group(1).strip()
    val, _ = strip_inline_comment(m.group(2))
    return f"hl.env('{key}', '{val.strip()}')"


def convert_monitor(s: str) -> str:
    body, _ = strip_inline_comment(s[s.index('=') + 1:])
    parts = [p.strip() for p in body.split(',')]
    name = parts[0] if parts else ''
    res_raw = parts[1] if len(parts) > 1 else 'preferred'
    pos = parts[2] if len(parts) > 2 else 'auto'
    scale = parts[3] if len(parts) > 3 else '1.0'
    extras = parts[4:] if len(parts) > 4 else []

    res_part = res_raw
    hz_part = None
    if '@' in res_raw:
        res_part, hz_part = res_raw.split('@', 1)

    fields = [f"resolution = '{res_part.strip()}'"]
    if hz_part:
        fields.append(f'refresh = {hz_part.strip()}')
    fields += [f"position = '{pos.strip()}'", f'scale = {scale.strip()}']

    i = 0
    while i < len(extras):
        tok = extras[i].strip().lower()
        if tok == 'bitdepth' and i + 1 < len(extras):
            fields.append(f'bitdepth = {extras[i + 1].strip()}')
            i += 2
        elif tok in ('cm', 'hdr'):
            fields.append(f'{tok} = true')
            i += 1
        elif tok == 'sdrbrightness' and i + 1 < len(extras):
            fields.append(f'sdrbrightness = {extras[i + 1].strip()}')
            i += 2
        elif tok == 'sdrsaturation' and i + 1 < len(extras):
            fields.append(f'sdrsaturation = {extras[i + 1].strip()}')
            i += 2
        elif tok:
            fields.append(f'-- extra: {extras[i]}')
            i += 1
        else:
            i += 1

    return f"hl.monitor('{name}', {{ {', '.join(fields)} }})"


def convert_exec_once(s: str) -> str:
    m = re.match(r'^exec-once\s*=\s*(.+)$', s)
    if not m:
        return f'-- FIXME(exec-once): {s}'
    cmd = resolve_vars(m.group(1).strip())
    return f'hl.exec_once({lua_string(cmd)})'


def convert_exec(s: str) -> str:
    m = re.match(r'^exec\s*=\s*(.+)$', s)
    if not m:
        return f'-- FIXME(exec): {s}'
    cmd = resolve_vars(m.group(1).strip())
    return f'hl.exec({lua_string(cmd)})'


def convert_source(s: str) -> str:
    m = re.match(r'^source\s*=\s*(.+)$', s)
    if not m:
        return f'-- FIXME(source): {s}'
    path = m.group(1).strip()
    rel = re.sub(r'^.*hypr[/\\]?', '', path)
    rel = re.sub(r'\.conf$', '', rel).replace('/', '.').replace('\\', '.')
    return f'require("{rel}")  -- was: source = {path}'


def convert_bind(s: str) -> str:
    m = re.match(r'^(bind\w*)\s*=\s*(.+)$', s)
    if not m:
        return f'-- FIXME(bind): {s}'

    bind_word = m.group(1)
    flags = re.sub(r'^bind', '', bind_word)
    rest = m.group(2)

    parts = rest.split(',', 3)
    mods = resolve_vars(parts[0].strip()) if len(parts) > 0 else ''
    key = resolve_vars(parts[1].strip()) if len(parts) > 1 else ''
    dispatcher = parts[2].strip() if len(parts) > 2 else ''
    arg = resolve_vars(parts[3].strip()) if len(parts) > 3 else ''

    combo = f'{mods} + {key}'.strip()
    combo = re.sub(r'\s*\+\s*', ' + ', combo).strip(' +')

    out = f'hl.bind({lua_string(combo)}, {lua_string(dispatcher)}'
    if arg:
        out += f', {lua_string(arg)}'
    if flags:
        out += f", {{ flags = '{flags}' }}"
    return out + ')'


def convert_windowrule(s: str) -> str:
    """
    Convert windowrule/windowrulev2 = ... lines.
    Always uses Lua [[...]] long-string so regex backslash sequences
    like \\w \\s \\d \\. never trigger 'Invalid escape sequence'.
    """
    m = re.match(r'^windowrulev?2?\s*=\s*(.+)$', s)
    if not m:
        return f'-- FIXME(windowrule): {s}'
    rhs = m.group(1).strip()
    return f'hl.windowrule({lua_string(rhs)})'

# ---------------------------------------------------------------------------
# Block / section parsers
# ---------------------------------------------------------------------------

def parse_block(lines: list, start: int, depth: int) -> tuple:
    out = []
    i = start
    while i < len(lines):
        raw = lines[i]
        s = raw.strip()

        if s == '}':
            return out, i + 1

        if not s:
            out.append('')
            i += 1
            continue

        if s.startswith('#'):
            out.append(ind(depth) + '-- ' + s[1:].strip())
            i += 1
            continue

        nb = re.match(r'^(\w[\w.]*)\s*\{', s)
        if nb:
            bname = nb.group(1)
            inner, i = parse_block(lines, i + 1, depth + 1)
            out.append(ind(depth) + f'{lua_key(bname)} = {{')
            out.extend(inner)
            out.append(ind(depth) + '},')
            continue

        kv = re.match(r'^([\w.]+)\s*=\s*(.+)$', s)
        if kv:
            k = kv.group(1).strip()
            v_raw, cmt = strip_inline_comment(kv.group(2))
            out.append(ind(depth) + f'{lua_key(k)} = {lua_value(v_raw.strip())},{cmt}')
            i += 1
            continue

        out.append(ind(depth) + f'-- FIXME: {s}')
        i += 1

    return out, i


def convert_conditional(lines: list, start: int) -> tuple:
    out = []
    cond_m = re.match(r'^#\s*hyprlang if\s+(.+)$', lines[start].strip())
    if not cond_m:
        return [f'-- {lines[start].rstrip()}'], start + 1

    cond = cond_m.group(1).strip()
    lua_cond = f"not hl.version('{cond[1:]}')" if cond.startswith('!') else f"hl.version('{cond}')"

    out.append(f'if {lua_cond} then')
    i = start + 1
    while i < len(lines):
        s = lines[i].strip()
        if re.match(r'^#\s*hyprlang endif', s):
            i += 1
            break
        if re.match(r'^#\s*hyprlang else', s):
            out.append('else')
            i += 1
            continue
        if s.startswith('#'):
            out.append(f'  -- {s[1:].strip()}')
            i += 1
            continue
        if not s:
            out.append('')
            i += 1
            continue
        kv = re.match(r'^([\w.]+)\s*=\s*(.+)$', s)
        if kv:
            out.append(f'  {lua_key(kv.group(1))} = {lua_value(kv.group(2))}')
        else:
            out.append(f'  -- FIXME: {s}')
        i += 1

    out.append('end')
    return out, i


def collect_section(lines: list, start: int) -> tuple:
    depth = 1
    body = []
    i = start
    while i < len(lines):
        s = lines[i].strip()
        depth += s.count('{') - s.count('}')
        if depth <= 0:
            return body, i + 1
        body.append(lines[i])
        i += 1
    return body, i

# ---------------------------------------------------------------------------
# Lua windowrule block converter (for inline hl.config windowrule tables)
# ---------------------------------------------------------------------------

def convert_windowrule_block(block_lines: list) -> list:
    """
    Convert a windowrule { name=... tile=... } config block into
    individual hl.windowrule() calls instead of a broken hl.config table.
    """
    props = {}
    name = None
    match_clauses = []

    for line in block_lines:
        s = line.strip()
        if not s or s.startswith('#') or s.startswith('--'):
            continue
        kv = re.match(r'^([\w.]+)\s*=\s*(.+)$', s)
        if not kv:
            continue
        k = kv.group(1).strip()
        v_raw, _ = strip_inline_comment(kv.group(2))
        v = v_raw.strip().strip("'\"")
        if k == 'name':
            name = v
        elif k.startswith('match:') or k == 'match':
            match_clauses.append(f'{k} {v}')
        else:
            props[k] = v

    out = []
    if name:
        out.append(f'-- windowrule group: {name}')
    for prop_k, prop_v in props.items():
        parts = [f'{prop_k} {prop_v}'] + match_clauses
        rhs = ', '.join(parts)
        out.append(f'hl.windowrule({lua_string(rhs)})')

    return out

# ---------------------------------------------------------------------------
# Main file converter
# ---------------------------------------------------------------------------

def _is_already_lua(lines: list) -> bool:
    """Return True if the file is already a converted .lua file (not a .conf)."""
    for line in lines[:10]:
        s = line.strip()
        if s.startswith('#!/usr/bin/env lua'):
            return True
        if re.match(r'^hl\.\w+\(', s):
            return True
    return False


def convert_file(src: Path) -> str:
    global VARS
    VARS = {}

    lines = src.read_text(encoding='utf-8').splitlines()

    # If already converted to Lua, pass through unchanged
    if src.suffix == '.lua' or _is_already_lua(lines):
        return '\n'.join(lines) + '\n'

    out = [
        '#!/usr/bin/env lua',
        f'-- {src.stem}.lua',
        '-- Qompass AI Hyprland Config (auto-converted by h2l)',
        '-- Copyright (C) 2026 Qompass AI, All rights reserved',
        '-- NOTE: Review FIXME comments before use',
        '',
    ]

    # First pass: register all $VAR declarations
    for line in lines:
        s = line.strip()
        if re.match(r'^\$[A-Za-z_][A-Za-z0-9_]*\s*=', s):
            vm = re.match(r'^\$([A-Za-z_][A-Za-z0-9_]*)\s*=\s*(.+)$', s)
            if vm:
                val, _ = strip_inline_comment(vm.group(2).strip())
                VARS[vm.group(1)] = val.strip()

    config_sections: dict = {}
    windowrule_blocks: list = []  # list of (name, body_lines)
    i = 0
    while i < len(lines):
        raw = lines[i]
        s = raw.strip()

        if not s:
            out.append('')
            i += 1
            continue

        if re.match(r'^\$[A-Za-z_][A-Za-z0-9_]*\s*=', s):
            out.append(convert_var_decl(s))
            i += 1
            continue

        if s.startswith('#') and not re.match(r'^#\s*hyprlang', s):
            out.append('-- ' + s[1:].strip())
            i += 1
            continue

        if re.match(r'^#\s*hyprlang if', s):
            clines, i = convert_conditional(lines, i)
            out.extend(clines)
            continue

        # windowrule { } block — emit as individual hl.windowrule() calls
        if re.match(r'^windowrule\s*\{', s):
            body, i = collect_section(lines, i + 1)
            out.extend(convert_windowrule_block(body))
            continue

        # Generic section block
        sec_m = re.match(r'^(\w[\w.]*)\s*\{', s)
        if sec_m:
            sec_name = sec_m.group(1)
            body, i = collect_section(lines, i + 1)
            config_sections[sec_name] = body
            continue

        if re.match(r'^env\s*=', s):
            out.append(convert_env(s))
            i += 1
            continue
        if re.match(r'^monitor\s*=', s):
            out.append(convert_monitor(s))
            i += 1
            continue
        if re.match(r'^exec-once\s*=', s):
            out.append(convert_exec_once(s))
            i += 1
            continue
        if re.match(r'^exec\s*=', s):
            out.append(convert_exec(s))
            i += 1
            continue
        if re.match(r'^source\s*=', s):
            out.append(convert_source(s))
            i += 1
            continue
        if re.match(r'^bind\w*\s*=', s):
            out.append(convert_bind(s))
            i += 1
            continue
        if re.match(r'^windowrulev?2?\s*=', s):
            out.append(convert_windowrule(s))
            i += 1
            continue

        kv = re.match(r'^([\w.]+)\s*=\s*(.+)$', s)
        if kv:
            v_raw, cmt = strip_inline_comment(kv.group(2))
            out.append(f'{lua_key(kv.group(1))} = {lua_value(v_raw.strip())}{cmt}')
            i += 1
            continue

        out.append(f'-- FIXME: {s}')
        i += 1

    if config_sections:
        out.append('')
        out.append('hl.config({')
        for sec_name, sec_lines in config_sections.items():
            out.append(f'    {sec_name} = {{')
            inner, _ = parse_block(sec_lines, 0, depth=2)
            out.extend(inner)
            out.append('    },')
        out.append('})')

    return '\n'.join(out) + '\n'

# ---------------------------------------------------------------------------
# Entry point
# ---------------------------------------------------------------------------

def main():
    args = sys.argv[1:]
    if not args:
        print('Usage: h2l <file.conf> [file2.conf ...] | <dir/>')
        print('       Writes <name>.lua next to each source file.')
        sys.exit(0)

    targets: list = []
    for arg in args:
        p = Path(arg)
        if p.is_dir():
            targets.extend(sorted(p.rglob('*.conf')))
        elif p.is_file():
            targets.append(p)
        else:
            print(f'WARNING: {arg} not found, skipping.')

    for src in targets:
        dst = src.with_suffix('.lua')
        dst.write_text(convert_file(src), encoding='utf-8')
        print(f'  {src}  ->  {dst}')


if __name__ == '__main__':
    main()
