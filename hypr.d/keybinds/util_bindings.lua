#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr/hypr.d/keybinds/util_bindings.lua
-- Qompass AI Hyprland 0.55+ Utility Bindings Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
local apps = require('hypr.d.exec.apps')
local mainMod = 'SUPER'
hl.bind(
    'CTRL + ALT + Delete',
    hl.dsp.exec_cmd([[for ((i=0; i<$(hyprctl monitors -j | jq length); i++)); do agsv1 -t "session""$i"; done]])
)
hl.bind('CTRL + ALT + Slash', hl.dsp.exec_cmd([[agsv1 run-js 'cycleMode();']]))
hl.bind('CTRL + ' .. mainMod .. ' + Slash', hl.dsp.exec_cmd('pkill anyrun || anyrun'))
hl.bind('CTRL + ' .. mainMod .. ' + R', hl.dsp.exec_cmd('killall ags agsv1 ydotool; agsv1 &'), {
    release = true,
})
hl.bind('CTRL + ' .. mainMod .. ' + ALT + R', hl.dsp.exec_cmd('hyprctl reload; killall agsv1 ydotool; agsv1 &'), {
    release = true,
})
hl.bind(mainMod .. ' + ALT + Slash', hl.dsp.exec_cmd('pkill fuzzel || fuzzel'))
hl.bind(mainMod .. ' + A', hl.dsp.exec_cmd([[agsv1 -t 'sideleft']]))
hl.bind(mainMod .. ' + B', hl.dsp.exec_cmd([[agsv1 -t 'sideleft']]))
hl.bind(mainMod .. ' + N', hl.dsp.exec_cmd([[agsv1 -t 'sideright']]))
hl.bind(mainMod .. ' + O', hl.dsp.exec_cmd([[agsv1 -t 'sideleft']]))
hl.bind(mainMod .. ' + Tab', hl.dsp.exec_cmd([[agsv1 -t 'overview']]))
hl.bind(mainMod .. ' + Super_L', hl.dsp.exec_cmd([[agsv1 -t 'overview']]), {
    ignore_mods = true,
    release = true,
})
hl.bind(
    mainMod .. ' + Comma',
    hl.dsp.exec_cmd(
        [[agsv1 run-js 'openColorScheme.value = true; Utils.timeout(2000, () => openColorScheme.value = false);']]
    )
)
hl.bind(
    mainMod .. ' + K',
    hl.dsp.exec_cmd([[for ((i=0; i<$(hyprctl monitors -j | jq length); i++)); do agsv1 -t "osk""$i"; done]])
)

hl.bind(
    mainMod .. ' + Slash',
    hl.dsp.exec_cmd([[for ((i=0; i<$(hyprctl monitors -j | jq length); i++)); do agsv1 -t "cheatsheet""$i"; done]])
)
hl.bind(
    'XF86MonBrightnessUp',
    hl.dsp.exec_cmd([[agsv1 run-js 'brightness.screen_value += 0.05; indicator.popup(1);']]),
    {
        locked = true,
        repeating = true,
    }
)
hl.bind(
    'XF86MonBrightnessDown',
    hl.dsp.exec_cmd([[agsv1 run-js 'brightness.screen_value -= 0.05; indicator.popup(1);']]),
    {
        locked = true,
        repeating = true,
    }
)
