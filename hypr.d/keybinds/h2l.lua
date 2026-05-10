#!/usr/bin/env lua
-- h2l.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- !/usr/bin/env python3
-- h2l.py
-- Qompass AI
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ----------------------------------------
-- FIXME: """
-- FIXME: h2l - Hyprland .conf to .lua converter
-- FIXME: Handles: env, monitor, exec-once, exec, bind/bindel/bindm/bindr,
-- FIXME: section blocks, nested blocks, col.* keys,
-- FIXME: hyprlang conditionals, source, comments,
-- FIXME: $variable substitution, Unicode/emoji in strings,
-- FIXME: shell subcommands with nested single quotes.
-- FIXME: """

-- FIXME: import re
-- FIXME: import sys
-- FIXME: from pathlib import Path

-- FIXME: VARS: dict = {}


-- FIXME: def resolve_vars(s: str) -> str:
-- FIXME: """Replace $VAR references with their registered values."""

-- FIXME: def replacer(m):
name = 'm.group(1)'
-- FIXME: return VARS.get(name, m.group(0))

-- FIXME: return re.sub(r'\$([A-Za-z_][A-Za-z0-9_]*)', replacer, s)


-- FIXME: def needs_long_string(s: str) -> bool:
-- FIXME: """Return True if the string contains characters that break single-quoted Lua strings."""
-- FIXME: return "'" in s or '\n' in s


-- FIXME: def lua_string(s: str) -> str:
-- FIXME: """Wrap s in the safest Lua string literal form."""
-- FIXME: if needs_long_string(s):
level = 0
-- FIXME: while (']' + '=' * level + ']') in s:
-- FIXME: level += 1
eq = [['=' * level]]
-- FIXME: return f'[{eq}[{s}]{eq}]'
-- FIXME: return f"'{s}'"


-- FIXME: def lua_value(raw: str) -> str:
v = 'raw.strip()'
-- FIXME: if v.lower() == 'true':
-- FIXME: return 'true'
-- FIXME: if v.lower() == 'false':
-- FIXME: return 'false'
-- FIXME: if re.fullmatch(r'-?\d+', v):
-- FIXME: return v
-- FIXME: if re.fullmatch(r'-?\d+\.\d+', v):
-- FIXME: return v
-- FIXME: return lua_string(v)


-- FIXME: def lua_key(k: str) -> str:
k = 'k.strip()'
-- FIXME: if '.' in k or not re.fullmatch(r'[A-Za-z_][A-Za-z0-9_]*', k):
-- FIXME: return f"['{k}']"
-- FIXME: return k


-- FIXME: def ind(n: int) -> str:
-- FIXME: return '    ' * n


-- FIXME: def strip_inline_comment(s: str) -> tuple:
-- FIXME: """Split a value string into (value, ' -- comment') at the first bare #."""
in_single = false
in_double = false
-- FIXME: for i, ch in enumerate(s):
-- FIXME: if ch == "'" and not in_double:
in_single = 'not in_single'
-- FIXME: elif ch == '"' and not in_single:
in_double = 'not in_double'
-- FIXME: elif ch == '#' and not in_single and not in_double:
-- FIXME: return s[:i].rstrip(), '  -- ' + s[i + 1 :].strip()
-- FIXME: return s, ''


-- FIXME: def convert_var_decl(s: str) -> str:
-- FIXME: """Convert `$name = value` to a Lua local and register it."""
m = [[re.match(r'^\$([A-Za-z_][A-Za-z0-9_]*)\s*=\s*(.+)$', s)]]
-- FIXME: if not m:
-- FIXME: return f'-- FIXME(var): {s}'
name = 'm.group(1)'
-- FIXME: val, _ = strip_inline_comment(m.group(2).strip())
val = 'val.strip()'
-- FIXME: VARS[name] = val
-- FIXME: return f'local {name} = {lua_string(val)}'


-- FIXME: def convert_env(s: str) -> str:
m = [[re.match(r'^env\s*=\s*([^,]+?)\s*,\s*(.+)$', s)]]
-- FIXME: if not m:
-- FIXME: return f'-- FIXME(env): {s}'
key = 'm.group(1).strip()'
-- FIXME: val, _ = strip_inline_comment(m.group(2))
-- FIXME: return f"hl.env('{key}', '{val.strip()}')"


-- FIXME: def convert_monitor(s: str) -> str:
-- FIXME: body, _ = strip_inline_comment(s[s.index('=') + 1 :])
parts = [[[p.strip() for p in body.split(',')]]]
name = [[parts[0] if parts else '']]
res_raw = [[parts[1] if len(parts) > 1 else 'preferred']]
pos = [[parts[2] if len(parts) > 2 else 'auto']]
scale = [[parts[3] if len(parts) > 3 else '1.0']]
extras = 'parts[4:] if len(parts) > 4 else []'

res_part = 'res_raw'
hz_part = 'None'
-- FIXME: if '@' in res_raw:
-- FIXME: res_part, hz_part = res_raw.split('@', 1)

fields = [[[f"resolution = '{res_part.strip()}'"]]]
-- FIXME: if hz_part:
-- FIXME: fields.append(f'refresh = {hz_part.strip()}')
-- FIXME: fields += [f"position = '{pos.strip()}'", f'scale = {scale.strip()}']

i = 0
-- FIXME: while i < len(extras):
tok = 'extras[i].strip().lower()'
-- FIXME: if tok == 'bitdepth' and i + 1 < len(extras):
-- FIXME: fields.append(f'bitdepth = {extras[i + 1].strip()}')
-- FIXME: i += 2
-- FIXME: elif tok in ('cm', 'hdr'):
-- FIXME: fields.append(f'{tok} = true')
-- FIXME: i += 1
-- FIXME: elif tok == 'sdrbrightness' and i + 1 < len(extras):
-- FIXME: fields.append(f'sdrbrightness = {extras[i + 1].strip()}')
-- FIXME: i += 2
-- FIXME: elif tok == 'sdrsaturation' and i + 1 < len(extras):
-- FIXME: fields.append(f'sdrsaturation = {extras[i + 1].strip()}')
-- FIXME: i += 2
-- FIXME: elif tok:
-- FIXME: fields.append(f'-- extra: {extras[i]}')
-- FIXME: i += 1
-- FIXME: else:
-- FIXME: i += 1

-- FIXME: return f"hl.monitor('{name}', {{ {', '.join(fields)} }})"


-- FIXME: def convert_exec_once(s: str) -> str:
m = [[re.match(r'^exec-once\s*=\s*(.+)$', s)]]
-- FIXME: if not m:
-- FIXME: return f'-- FIXME(exec-once): {s}'
cmd = 'resolve_vars(m.group(1).strip())'
-- FIXME: return f'hl.exec_once({lua_string(cmd)})'


-- FIXME: def convert_exec(s: str) -> str:
m = [[re.match(r'^exec\s*=\s*(.+)$', s)]]
-- FIXME: if not m:
-- FIXME: return f'-- FIXME(exec): {s}'
cmd = 'resolve_vars(m.group(1).strip())'
-- FIXME: return f'hl.exec({lua_string(cmd)})'


-- FIXME: def convert_source(s: str) -> str:
m = [[re.match(r'^source\s*=\s*(.+)$', s)]]
-- FIXME: if not m:
-- FIXME: return f'-- FIXME(source): {s}'
path = 'm.group(1).strip()'
rel = [[re.sub(r'^.*hypr[/\\]?', '', path)]]
rel = [[re.sub(r'\.conf$', '', rel).replace('/', '.').replace('\\', '.')]]
-- FIXME: return f'require("{rel}")  -- was: source = {path}'


-- FIXME: def convert_bind(s: str) -> str:
-- FIXME: """
-- FIXME: Converts bind/bindel/bindm/bindr/bindp lines.
-- FIXME: Handles:
-- FIXME: - $variable substitution in all fields
-- FIXME: - mouse: button syntax
-- FIXME: - exec args containing emoji, shell subcommands, nested quotes
-- FIXME: - flag encoding (e=repeat, l=locked, m=mouse, p=passthrough, etc.)
-- FIXME: """
m = [[re.match(r'^(bind\w*)\s*=\s*(.+)$', s)]]
-- FIXME: if not m:
-- FIXME: return f'-- FIXME(bind): {s}'

hl.bind('m.group(1)', '', { flags = '_word' })
flags = [[re.sub(r'^bind', '', bind_word)]]
rest = 'm.group(2)'

parts = [[rest.split(',', 3)]]
mods = [[resolve_vars(parts[0].strip()) if len(parts) > 0 else '']]
key = [[resolve_vars(parts[1].strip()) if len(parts) > 1 else '']]
dispatcher = [[parts[2].strip() if len(parts) > 2 else '']]
arg = [[resolve_vars(parts[3].strip()) if len(parts) > 3 else '']]

-- Build combo string
combo = [[f'{mods} + {key}'.strip()]]
combo = [[re.sub(r'\s*\+\s*', ' + ', combo).strip(' +')]]

out = [[f'hl.bind({lua_string(combo)}, {lua_string(dispatcher)}']]

-- FIXME: if arg:
-- FIXME: out += f', {lua_string(arg)}'

-- FIXME: if flags:
-- FIXME: out += f", {{ flags = '{flags}' }}"

-- FIXME: return out + ')'


-- FIXME: def parse_block(lines: list, start: int, depth: int) -> tuple:
out = '[]'
i = 'start'
-- FIXME: while i < len(lines):
raw = 'lines[i]'
s = 'raw.strip()'

-- FIXME: if s == '}':
-- FIXME: return out, i + 1

-- FIXME: if not s:
-- FIXME: out.append('')
-- FIXME: i += 1
-- FIXME: continue

-- FIXME: if s.startswith('#'):
-- FIXME: out.append(ind(depth) + '-- ' + s[1:].strip())
-- FIXME: i += 1
-- FIXME: continue

nb = [[re.match(r'^(\w[\w.]*)\s*\{', s)]]
-- FIXME: if nb:
bname = 'nb.group(1)'
-- FIXME: inner, i = parse_block(lines, i + 1, depth + 1)
-- FIXME: out.append(ind(depth) + f'{lua_key(bname)} = {{')
-- FIXME: out.extend(inner)
-- FIXME: out.append(ind(depth) + '},')
-- FIXME: continue

kv = [[re.match(r'^([\w.]+)\s*=\s*(.+)$', s)]]
-- FIXME: if kv:
k = 'kv.group(1).strip()'
-- FIXME: v_raw, cmt = strip_inline_comment(kv.group(2))
-- FIXME: out.append(ind(depth) + f'{lua_key(k)} = {lua_value(v_raw.strip())},{cmt}')
-- FIXME: i += 1
-- FIXME: continue

-- FIXME: out.append(ind(depth) + f'-- FIXME: {s}')
-- FIXME: i += 1

-- FIXME: return out, i


-- FIXME: def convert_conditional(lines: list, start: int) -> tuple:
out = '[]'
cond_m = [[re.match(r'^#\s*hyprlang if\s+(.+)$', lines[start].strip())]]
-- FIXME: if not cond_m:
-- FIXME: return [f'-- {lines[start].rstrip()}'], start + 1

cond = 'cond_m.group(1).strip()'
-- FIXME: if cond.startswith('!'):
lua_cond = [[f"not hl.version('{cond[1:]}')"]]
-- FIXME: else:
lua_cond = [[f"hl.version('{cond}')"]]

-- FIXME: out.append(f'if {lua_cond} then')
i = 'start + 1'
-- FIXME: while i < len(lines):
s = 'lines[i].strip()'
-- FIXME: if re.match(r'^#\s*hyprlang endif', s):
-- FIXME: i += 1
-- FIXME: break
-- FIXME: if re.match(r'^#\s*hyprlang else', s):
-- FIXME: out.append('else')
-- FIXME: i += 1
-- FIXME: continue
-- FIXME: if s.startswith('#'):
-- FIXME: out.append(f'  -- {s[1:].strip()}')
-- FIXME: i += 1
-- FIXME: continue
-- FIXME: if not s:
-- FIXME: out.append('')
-- FIXME: i += 1
-- FIXME: continue
kv = [[re.match(r'^([\w.]+)\s*=\s*(.+)$', s)]]
-- FIXME: if kv:
-- FIXME: out.append(f'  {lua_key(kv.group(1))} = {lua_value(kv.group(2))}')
-- FIXME: else:
-- FIXME: out.append(f'  -- FIXME: {s}')
-- FIXME: i += 1

-- FIXME: out.append('end')
-- FIXME: return out, i


-- FIXME: def collect_section(lines: list, start: int) -> tuple:
-- FIXME: """Collect body of a brace-delimited block, depth-aware."""
depth = 1
body = '[]'
i = 'start'
-- FIXME: while i < len(lines):
s = 'lines[i].strip()'
-- FIXME: depth += s.count('{') - s.count('}')
-- FIXME: if depth <= 0:
-- FIXME: return body, i + 1
-- FIXME: body.append(lines[i])
-- FIXME: i += 1
-- FIXME: return body, i


-- FIXME: def convert_file(src: Path) -> str:
-- FIXME: global VARS
VARS = '{}'  -- reset per file

lines = [[src.read_text(encoding='utf-8').splitlines()]]
out = '['
-- FIXME: '#!/usr/bin/env lua',
-- FIXME: f'-- {src.stem}.lua',
-- FIXME: '-- Qompass AI Hyprland Config (auto-converted by h2l)',
-- FIXME: '-- Copyright (C) 2026 Qompass AI, All rights reserved',
-- FIXME: '-- NOTE: Review FIXME comments before use',
-- FIXME: '',
-- FIXME: ]

-- First pass: register all $VAR declarations for forward resolution
-- FIXME: for line in lines:
s = 'line.strip()'
-- FIXME: if re.match(r'^\$[A-Za-z_][A-Za-z0-9_]*\s*=', s):
vm = [[re.match(r'^\$([A-Za-z_][A-Za-z0-9_]*)\s*=\s*(.+)$', s)]]
-- FIXME: if vm:
-- FIXME: val, _ = strip_inline_comment(vm.group(2).strip())
-- FIXME: VARS[vm.group(1)] = val.strip()

-- FIXME: config_sections: dict = {}
i = 0
-- FIXME: while i < len(lines):
raw = 'lines[i]'
s = 'raw.strip()'

-- FIXME: if not s:
-- FIXME: out.append('')
-- FIXME: i += 1
-- FIXME: continue

-- $VAR declarations -> Lua locals
-- FIXME: if re.match(r'^\$[A-Za-z_][A-Za-z0-9_]*\s*=', s):
-- FIXME: out.append(convert_var_decl(s))
-- FIXME: i += 1
-- FIXME: continue

-- Plain comments
-- FIXME: if s.startswith('#') and not re.match(r'^#\s*hyprlang', s):
-- FIXME: out.append('-- ' + s[1:].strip())
-- FIXME: i += 1
-- FIXME: continue

-- FIXME: # hyprlang conditionals
-- FIXME: if re.match(r'^#\s*hyprlang if', s):
-- FIXME: clines, i = convert_conditional(lines, i)
-- FIXME: out.extend(clines)
-- FIXME: continue

-- Section blocks: general { ... }
sec_m = [[re.match(r'^(\w[\w.]*)\s*\{', s)]]
-- FIXME: if sec_m:
sec_name = 'sec_m.group(1)'
-- FIXME: body, i = collect_section(lines, i + 1)
-- FIXME: config_sections[sec_name] = body
-- FIXME: continue

-- FIXME: if re.match(r'^env\s*=', s):
-- FIXME: out.append(convert_env(s))
-- FIXME: i += 1
-- FIXME: continue
-- FIXME: if re.match(r'^monitor\s*=', s):
-- FIXME: out.append(convert_monitor(s))
-- FIXME: i += 1
-- FIXME: continue
-- FIXME: if re.match(r'^exec-once\s*=', s):
-- FIXME: out.append(convert_exec_once(s))
-- FIXME: i += 1
-- FIXME: continue
-- FIXME: if re.match(r'^exec\s*=', s):
-- FIXME: out.append(convert_exec(s))
-- FIXME: i += 1
-- FIXME: continue
-- FIXME: if re.match(r'^source\s*=', s):
-- FIXME: out.append(convert_source(s))
-- FIXME: i += 1
-- FIXME: continue
-- FIXME: if re.match(r'^bind\w*\s*=', s):
-- FIXME: out.append(convert_bind(s))
-- FIXME: i += 1
-- FIXME: continue

-- Bare key = value
kv = [[re.match(r'^([\w.]+)\s*=\s*(.+)$', s)]]
-- FIXME: if kv:
-- FIXME: v_raw, cmt = strip_inline_comment(kv.group(2))
-- FIXME: out.append(f'{lua_key(kv.group(1))} = {lua_value(v_raw.strip())}{cmt}')
-- FIXME: i += 1
-- FIXME: continue

-- FIXME: out.append(f'-- FIXME: {s}')
-- FIXME: i += 1

-- FIXME: if config_sections:
-- FIXME: out.append('')
-- FIXME: out.append('hl.config({')
-- FIXME: for sec_name, sec_lines in config_sections.items():
-- FIXME: out.append(f'    {sec_name} = {{')
-- FIXME: inner, _ = parse_block(sec_lines, 0, depth=2)
-- FIXME: out.extend(inner)
-- FIXME: out.append('    },')
-- FIXME: out.append('})')

-- FIXME: return '\n'.join(out) + '\n'


-- ---------------------------------------------------------------------------
-- Entry point
-- ---------------------------------------------------------------------------


-- FIXME: def main():
args = 'sys.argv[1:]'
-- FIXME: if not args:
-- FIXME: print('Usage: h2l <file.conf> [file2.conf ...] | <dir/>')
-- FIXME: print('       Writes <name>.lua next to each source file.')
-- FIXME: sys.exit(0)

-- FIXME: targets: list = []
-- FIXME: for arg in args:
p = 'Path(arg)'
-- FIXME: if p.is_dir():
-- FIXME: targets.extend(sorted(p.rglob('*.conf')))
-- FIXME: elif p.is_file():
-- FIXME: targets.append(p)
-- FIXME: else:
-- FIXME: print(f'WARNING: {arg} not found, skipping.')

-- FIXME: for src in targets:
dst = [[src.with_suffix('.lua')]]
-- FIXME: dst.write_text(convert_file(src), encoding='utf-8')
-- FIXME: print(f'  {src}  ->  {dst}')


-- FIXME: if __name__ == '__main__':
-- FIXME: main()
