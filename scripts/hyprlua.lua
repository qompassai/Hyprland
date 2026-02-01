-- /qompassai/hyprland/scripts/hyprlua
-- Qompass AI Hyprland HyprLua
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ---------------------------------------------------
---@diagnostic enable: spell-check
---@version Lua5.1, JIT
---@class HyprRule
---@field type 'int'|'float'|'bool'|'enum'|'vec2'|'str'
---@field values? string[]
---@field min? number
---@field max? number
---@type table<string, table<string, HyprRule>>
---@alias ItemType 'flag'|'selector'|'variable'
---@alias RuleType 'windowrule'|'layerrule'
---@class Item
---@field key string
---@field value string
---@field type ItemType
---@field error boolean?
---@class Rule
---@field type RuleType
---@field items Item[]
----------------------------------------------------------

local NAMED_OUTPUT = false
---@type table<string,string|{[1]:string,[2]:string}>
local replacements_keys = {
    initialClass = 'initial_class',
    initialTitle = 'initial_title',
    floating = 'float',
    pinned = 'pin',
    fullscreenstate = {
        'fullscreen_state_internal',
        'fullscreen_state_client',
    },
    onworkspace = 'workspace',
    xdgTag = 'xdg_tag',
    noinitialfocus = 'no_initial_focus',
}
---@type table<string,string>
local replacements_values = {
    abovelock = 'above_lock',
    allowsinput = 'allows_input',
    blurpopups = 'blur_popups',
    bordercolor = 'border_color',
    bordersize = 'border_size',
    dimaround = 'dim_around',
    focusonactivate = 'focus_on_activate',
    forcergbx = 'force_rgbx',
    fullscreenstate = 'fullscreen_state',
    idleinhibit = 'idle_inhibit',
    ignorealpha = 'ignore_alpha',
    ignorezero = 'ignore_alpha',
    keepaspectratio = 'keep_aspect_ratio',
    maxsize = 'max_size',
    minsize = 'min_size',
    noanim = 'no_anim',
    noblur = 'no_blur',
    noborder = 'border_size',
    noclosefor = 'no_close_for',
    nodim = 'no_dim',
    nofocus = 'no_focus',
    nofollowmouse = 'no_follow_mouse',
    nomaxsize = 'no_max_size',
    norounding = 'no_rounding',
    noscreenshare = 'no_screen_share',
    noshadow = 'no_shadow',
    noshortcutsinhibit = 'no_shortcuts_inhibit',
    novrr = 'no_vrr',
    persistentsize = 'persistent_size',
    renderunfocused = 'render_unfocused',
    roundingpower = 'rounding_power',
    scrollmouse = 'scroll_mouse',
    scrolltouchpad = 'scroll_touchpad',
    stayfocused = 'stay_focused',
    suppressevent = 'suppress_event',
    syncfullscreen = 'sync_fullscreen',
}
---@type table<string,string>
local defaults = {
    border_size = '0',
    float = 'on',
    xwayland = '0',
    fullscreen = 'on',
    pin = 'on',
    focus = '0',
    group = '0',
    modal = '0',
    no_anim = 'on',
    ignore_alpha = '0',
    fullscreen_state_internal = '0',
    fullscreen_state_client = '0',
}

local schema = {
    input = {
        accel_profile = {
            type = 'enum',
            values = {
                'adaptive',
                'flat',
                'custom',
                '',
            },
        },
        emulate_discrete_scroll = {
            type = 'int',
        },
        float_switch_override_focus = {
            type = 'int',
            min = 0,
            max = 2,
        },
        focus_on_close = {
            type = 'int',
            min = 0,
            max = 1,
        },
        follow_mouse = {
            type = 'int',
            min = 0,
            max = 3,
        },
        follow_mouse_threshold = {
            type = 'float',
        },
        force_no_accel = {
            type = 'bool',
        },
        left_handed = {
            type = 'bool',
        },
        kb_file = {
            type = 'str',
        },
        kb_layout = {
            type = 'str',
        },
        kb_model = {
            type = 'str',
        },
        kb_options = {
            type = 'str',
        },
        kb_rules = {
            type = 'str',
        },
        kb_variant = {
            type = 'str',
        },
        mouse_refocus = {
            type = 'bool',
        },
        natural_scroll = {
            type = 'bool',
        },
        numlock_by_default = {
            type = 'bool',
        },
        off_window_axis_events = {
            type = 'int',
            min = 0,
            max = 3,
        },
        repeat_delay = {
            type = 'int',
        },
        repeat_rate = {
            type = 'int',
        },
        resolve_binds_by_sym = {
            type = 'bool',
        },
        scroll_button = {
            type = 'int',
        },
        scroll_button_lock = {
            type = 'bool',
        },
        scroll_factor = {
            type = 'float',
        },
        scroll_method = {
            type = 'enum',
            values = {
                '2fg',
                'edge',
                'on_button_down',
                'no_scroll',
                '',
            },
        },
        scroll_points = {
            type = 'str',
        },
        sensitivity = {
            type = 'float',
            min = -1.0,
            max = 1.0,
        },
        special_fallthrough = {
            type = 'bool',
        },
    },
    ['input:touchpad'] = {
        clickfinger_behavior = {
            type = 'bool',
        },
        disable_while_typing = {
            type = 'bool',
        },
        drag_3fg = {
            type = 'int',
            min = 0,
            max = 2,
        },
        drag_lock = {
            type = 'int',
            min = 0,
            max = 2,
        },
        flip_x = {
            type = 'bool',
        },
        flip_y = {
            type = 'bool',
        },
        middle_button_emulation = {
            type = 'bool',
        },
        natural_scroll = {
            type = 'bool',
        },
        scroll_factor = {
            type = 'float',
        },
        ['tap-and-drag'] = {
            type = 'bool',
        },
        tap_button_map = {
            type = 'enum',
            values = {
                'lrm',
                'lmr',
                '',
            },
        },
        ['tap-to-click'] = {
            type = 'bool',
        },
    },
    ['input:touchdevice'] = {
        enabled = {
            type = 'bool',
        },
        output = {
            type = 'str',
        },
        transform = {
            type = 'int',
            min = -1,
            max = 7,
        },
    },
    ['input:tablet'] = {
        absolute_region_position = {
            type = 'bool',
        },
        active_area_position = {
            type = 'vec2',
        },
        active_area_size = {
            type = 'vec2',
        },
        left_handed = {
            type = 'bool',
        },
        output = {
            type = 'str',
        },
        region_position = {
            type = 'vec2',
        },
        region_size = {
            type = 'vec2',
        },
        relative_input = {
            type = 'bool',
        },
        transform = {
            type = 'int',
            min = -1,
            max = 7,
        },
    },

    ['input:virtualkeyboard'] = {
        release_pressed_on_close = {
            type = 'bool',
        },
        share_states = {
            type = 'int',
            min = 0,
            max = 2,
        },
    },
}
---@param tokens string[]
---@return string,string
local function parse_size(tokens)
    local mode = 'size'
    local values = {}

    for i, tok in ipairs(tokens) do
        if tok:sub(1, 1) == '>' then
            mode = 'min_size'
            tok = tok:sub(2)
        elseif tok:sub(1, 1) == '<' then
            mode = 'max_size'
            tok = tok:sub(2)
        end
        if tok:sub(-1) == '%' then
            local factor = tonumber(tok:sub(1, -2)) / 100
            if i == 1 then
                table.insert(values, string.format('(monitor_w*%g)', factor))
            else
                table.insert(values, string.format('(monitor_h*%g)', factor))
            end
        else
            table.insert(values, tok)
        end
    end
    return mode, table.concat(values, ' ')
end
---@param tokens string[]
---@return string
local function parse_move(tokens)
    local cursor = false
    local onscreen = false
    local args = {} ---@type string[]

    for _, t in ipairs(tokens) do
        if t == 'cursor' then
            cursor = true
        elseif t == 'onscreen' then
            onscreen = true
        else
            table.insert(args, t)
        end
    end

    local values = {} ---@type string[]

    for index, raw in ipairs(args) do
        local is_x = (index == 1)
        local monitor = is_x and 'monitor_w' or 'monitor_h'
        local client = is_x and 'client_w' or 'client_h'
        local cursor_base = is_x and 'cursor_x' or 'cursor_y'

        local parts = {}
        for part in raw:gmatch('[^%-]+') do
            part = part:match('^%s*(.-)%s*$')
            if part == 'w' then
                table.insert(parts, client)
            elseif part:sub(-1) == '%' then
                local factor = tonumber(part:sub(1, -2)) / 100
                table.insert(parts, string.format('%s*%g', monitor, factor))
            else
                table.insert(parts, part)
            end
        end

        local expr = table.concat(parts, '-')
        if onscreen then
            local sep = NAMED_OUTPUT and ',' or '\\,'
            expr = string.format('min(max(%s%s0)%s%s-%s)', expr, sep, sep, monitor, client)
        end
        if cursor then
            expr = string.format('%s+(%s)', cursor_base, expr)
        end
        table.insert(values, string.format('(%s)', expr))
    end
    return table.concat(values, ' ')
end
---@param part string
---@return Item[]
local function parse_part(part)
    part = part:match('^%s*(.-)%s*$')
    if part == '' then
        return {}
    end

    if part:sub(1, 1) == '$' then
        return {
            { key = part, value = '', type = 'variable', error = false },
        }
    end

    local colon = part:find(':')
    if colon then
        local k = part:sub(1, colon - 1):match('^%s*(.-)%s*$')
        local v = part:sub(colon + 1):match('^%s*(.-)%s*$')
        local mapping = replacements_keys[k] or k
        if type(mapping) == 'table' then
            local vals = {}
            for w in v:gmatch('%S+') do
                table.insert(vals, w)
            end
            return {
                {
                    key = mapping[1],
                    value = vals[1] or '0',
                    type = 'selector',
                    error = false,
                },
                {
                    key = mapping[2],
                    value = vals[2] or '0',
                    type = 'selector',
                    error = false,
                },
            }
        else
            return {
                {
                    key = mapping,
                    value = v,
                    type = 'selector',
                    error = false,
                },
            }
        end
    end
    local tokens = {}
    for w in part:gmatch('%S+') do
        table.insert(tokens, w)
    end
    local raw_key = tokens[1]:lower()
    local key = replacements_values[raw_key] or raw_key
    if key == 'size' then
        local mode, val = parse_size({
            table.unpack(tokens, 2),
        })
        return {
            { key = mode, value = val, type = 'flag', error = false },
        }
    end

    if key == 'move' then
        return {
            {
                key = key,
                value = parse_move({
                    table.unpack(tokens, 2),
                }),
                type = 'flag',
                error = false,
            },
        }
    end
    local value = table.concat(tokens, ' ', 2) ~= '' and table.concat(tokens, ' ', 2) or defaults[key] or 'on'

    return { { key = key, value = value, type = 'flag', error = false } }
end
---@param line string
---@return Rule|nil
local function parse_line(line)
    if not line:find('=') then
        return nil
    end
    local lhs, rhs = line:match('^(.-)=(.-)$')
    if not lhs then
        return nil
    end
    lhs = lhs:match('^%s*(.-)%s*$')
    rhs = rhs:match('^%s*(.-)%s*$')
    local rtype ---@type RuleType|nil
    if lhs:find('windowrule', 1, true) == 1 then
        rtype = 'windowrule'
    elseif lhs:find('layerrule', 1, true) == 1 then
        rtype = 'layerrule'
    else
        return nil
    end
    local parts = {}
    for p in rhs:gmatch('[^,]+') do
        p = p:match('^%s*(.-)%s*$')
        if p ~= '' then
            table.insert(parts, p)
        end
    end
    local items = {} ---@type Item[]

    if rtype == 'layerrule' then
        local first = {}
        for w in parts[1]:gmatch('%S+') do
            table.insert(first, w)
        end
        local key = replacements_values[first[1]:lower()] or first[1]:lower()
        local val = (#first > 1) and table.concat(first, ' ', 2) or defaults[key] or 'on'
        table.insert(items, {
            key = key,
            value = val,
            type = 'flag',
            error = false,
        })
        for i = 2, #parts do
            table.insert(items, {
                key = parts[i],
                value = 'on',
                type = 'selector',
                error = false,
            })
        end
    else
        for _, p in ipairs(parts) do
            local pitems = parse_part(p)
            for _, it in ipairs(pitems) do
                table.insert(items, it)
            end
        end
    end
    return { type = rtype, items = items }
end

---@param rule Rule
---@return string
local function rule_signature(rule)
    local sel = {}
    for _, i in ipairs(rule.items) do
        if i.type ~= 'flag' then
            table.insert(sel, i.key .. ':' .. i.value)
        end
    end
    table.sort(sel)
    return table.concat(sel, '|')
end

---@param rules Rule[]
---@return Rule[]
local function merge_rules(rules)
    local merged = {} ---@type table<string, Rule>
    for _, r in ipairs(rules) do
        local sig = rule_signature(r)
        if not merged[sig] then
            merged[sig] = {
                type = r.type,
                items = {},
            }
        end
        local target = merged[sig]
        for _, item in ipairs(r.items) do
            if item.type ~= 'flag' then
                local exists = false
                for _, i in ipairs(target.items) do
                    if i.type ~= 'flag' and i.key == item.key and i.value == item.value then
                        exists = true
                        break
                    end
                end
                if not exists then
                    table.insert(target.items, item)
                end
            else
                local updated = false
                for _, i in ipairs(target.items) do
                    if i.type == 'flag' and i.key == item.key then
                        i.value = item.value
                        updated = true
                        break
                    end
                end
                if not updated then
                    table.insert(target.items, item)
                end
            end
        end
    end
    local out = {}
    for _, r in pairs(merged) do
        table.insert(out, r)
    end
    return out
end
---@param text string
---@return string
local function generate_rules(text)
    local lines = {}
    for line in text:gmatch('([^\n]*)\n?') do
        if line == '' and #lines > 0 and lines[#lines] == '' then
        else
            table.insert(lines, line)
        end
    end
    local parsed = {} ---@type { idx:integer, rule:Rule }[]
    for i, line in ipairs(lines) do
        local rule = parse_line(line)
        if rule then
            table.insert(parsed, {
                idx = i,
                rule = rule,
            })
        end
    end

    local rules_only = {}
    for _, pr in ipairs(parsed) do
        table.insert(rules_only, pr.rule)
    end
    local merged = merge_rules(rules_only)
    local used = {} ---@type table<string,boolean>
    local out = { table.unpack(lines) }
    local wc, lc = 1, 1
    local order = { flag = 0, selector = 1, variable = 2 }
    for _, pr in ipairs(parsed) do
        local rule = pr.rule
        local idx = pr.idx
        local sig = rule_signature(rule)
        if used[sig] then
            out[idx] = ''
        else
            used[sig] = true
            local r
            for _, m in ipairs(merged) do
                if rule_signature(m) == sig then
                    r = m
                    break
                end
            end
            if not r then
                goto continue
            end
            table.sort(r.items, function(a, b)
                return order[a.type] < order[b.type]
            end)
            if NAMED_OUTPUT then
                local name
                if r.type == 'windowrule' then
                    name = string.format('windowrule-%d', wc)
                    wc = wc + 1
                else
                    name = string.format('layerrule-%d', lc)
                    lc = lc + 1
                end
                local block = {}
                table.insert(block, r.type .. ' {')
                table.insert(block, '  name = ' .. name)
                for _, i in ipairs(r.items) do
                    if i.type == 'variable' then
                        table.insert(block, '  match:' .. i.key)
                    elseif i.type == 'selector' then
                        if r.type == 'layerrule' then
                            table.insert(block, '  match:namespace = ' .. i.key)
                        else
                            table.insert(block, '  match:' .. i.key .. ' = ' .. i.value)
                        end
                    else
                        table.insert(block, '  ' .. i.key .. ' = ' .. i.value)
                    end
                end
                table.insert(block, '}')
                out[idx] = table.concat(block, '\n')
            else
                local parts = {}
                for _, i in ipairs(r.items) do
                    if i.type == 'variable' then
                        table.insert(parts, i.key)
                    elseif i.type == 'selector' then
                        if r.type == 'layerrule' then
                            table.insert(parts, 'match:namespace ' .. i.key)
                        else
                            table.insert(parts, 'match:' .. i.key .. ' ' .. i.value)
                        end
                    else
                        table.insert(parts, i.key .. ' ' .. i.value)
                    end
                end
                out[idx] = string.format('%s = %s', r.type, table.concat(parts, ', '))
            end
        end
        ::continue::
    end

    local final = {}
    for _, line in ipairs(out) do
        if line:match('%S') then
            table.insert(final, line)
        end
    end
    return table.concat(final, '\n')
end
---@param s string
---@return string
local function trim(s)
    return (s:gsub('^%s+', ''):gsub('%s+$', ''))
end
---@param s string
---@return string
local function unquote(s)
    if (#s >= 2) and ((s:sub(1, 1) == '\'' and s:sub(-1) == '\'') or (s:sub(1, 1) == '"' and s:sub(-1) == '"')) then
        return s:sub(2, -2)
    end
    return s
end
---@param v string
---@return boolean
local function is_int(v)
    return v:match('^%-?%d+$') ~= nil
end

---@param v string
---@return boolean
local function is_float(v)
    return v:match('^%-?%d+%.?%d*$') ~= nil
end

---@param v string
---@return boolean
local function is_bool(v)
    v = v:lower()
    return v == 'true' or v == 'false' or v == 'yes' or v == 'no' or v == 'on' or v == 'off' or v == '0' or v == '1'
end

---@param v string
---@return boolean
local function is_vec2(v)
    local a, b = v:match('^%s*([%-0-9%.]+)%s+([%-0-9%.]+)%s*$')
    if not a or not b then
        return false
    end
    return is_float(a) and is_float(b)
end

---@param rule HyprRule
---@param raw string
---@return boolean, string?
local function check_value(rule, raw)
    local v = trim(unquote(raw))
    if rule.type == 'int' then
        if not is_int(v) then
            return false, 'expected int, got \'' .. raw .. '\''
        end
        local n = tonumber(v) ---@type number?
        if rule.min and n < rule.min then
            return false, 'int below min ' .. rule.min
        end
        if rule.max and n > rule.max then
            return false, 'int above max ' .. rule.max
        end
        return true
    elseif rule.type == 'float' then
        if not is_float(v) then
            return false, 'expected float, got \'' .. raw .. '\''
        end
        local n = tonumber(v) ---@type number?
        if rule.min and n < rule.min then
            return false, 'float below min ' .. rule.min
        end
        if rule.max and n > rule.max then
            return false, 'float above max ' .. rule.max
        end
        return true
    elseif rule.type == 'bool' then
        if not is_bool(v) then
            return false, 'expected bool, got \'' .. raw .. '\''
        end
        return true
    elseif rule.type == 'enum' then
        if rule.values then
            for _, val in ipairs(rule.values) do
                if v == val then
                    return true
                end
            end
            return false, 'expected one of {' .. table.concat(rule.values, ', ') .. '}, got \'' .. v .. '\''
        end
        return true
    elseif rule.type == 'vec2' then
        if not is_vec2(v) then
            return false, 'expected vec2 \'x y\', got \'' .. raw .. '\''
        end
        return true
    elseif rule.type == 'str' then
        return true
    end

    return true
end
---@param path string
---@return boolean
local function lint_file(path)
    local current_section ---@type string|nil
    local errors = {} ---@type { line: integer, msg: string }[]
    local f, err = io.open(path, 'r')
    if not f then
        io.stderr:write('Failed to open ', path, ': ', err, '\n')
        os.exit(1)
    end
    local lineno = 0
    for line in f:lines() do
        lineno = lineno + 1
        local stripped = trim(line)
        if stripped == '' or stripped:sub(1, 1) == '#' then
            goto continue
        end
        local sec = stripped:match('^(%w+)%s*{')
        if sec then
            if sec == 'input' then
                current_section = 'input'
            elseif sec == 'touchpad' then
                current_section = 'input:touchpad'
            elseif sec == 'touchdevice' then
                current_section = 'input:touchdevice'
            elseif sec == 'tablet' then
                current_section = 'input:tablet'
            elseif sec == 'virtualkeyboard' then
                current_section = 'input:virtualkeyboard'
            else
                current_section = nil
            end
            goto continue
        end
        if stripped == '}' then
            current_section = nil
            goto continue
        end
        if current_section then
            local key, val = stripped:match('^([%w%-%._]+)%s*=%s*(.-)%s*$')
            if key and val ~= nil then
                local section_schema = schema[current_section]
                if section_schema then
                    local rule = section_schema[key]
                    if not rule then
                        table.insert(errors, {
                            line = lineno,
                            msg = ('unknown key \'%s\' in section %s'):format(key, current_section),
                        })
                    else
                        local ok, msg = check_value(rule, val)
                        if not ok then
                            table.insert(errors, {
                                line = lineno,
                                msg = ('invalid value for %s.%s: %s'):format(current_section, key, msg or ''),
                            })
                        end
                    end
                end
            end
        end
        ::continue::
    end
    f:close()
    if #errors == 0 then
        print(path .. ': OK')
        return true
    else
        print(path .. ': found ' .. #errors .. ' issue(s)')
        for _, e in ipairs(errors) do
            print(string.format('  line %d: %s', e.line, e.msg))
        end
        return false
    end
end
local path = arg[1]
if not path then
    io.stderr:write('Usage: hyprlint.lua <file> [--rules] [--named]\n')
    os.exit(1)
end
local do_rules = false
for i = 2, #arg do
    if arg[i] == '--rules' then
        do_rules = true
    elseif arg[i] == '--named' then
        NAMED_OUTPUT = true
    end
end
if do_rules then
    local f = assert(io.open(path, 'r'))
    local content = f:read('*a')
    f:close()
    local new_content = generate_rules(content)
    local backup = path .. '.bak'
    assert(os.execute(string.format('cp -nvr %q %q', path, backup)))
    f = assert(io.open(path, 'w'))
    f:write(new_content)
    f:close()
    print('Rewritten ' .. path .. ', backup at ' .. backup)
else
    local ok = lint_file(path)
    os.exit(ok and 0 or 1)
end
local ok = lint_file(path)
os.exit(ok and 0 or 1)
