#!/usr/bin/env lua
-- util_bindings.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/hyprland/hypr/hypr.d/keybinds/util_bindings.conf
-- Qompass AI Utility Bindings Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
local mainMod = 'SUPER'
hl.bind('CTRL + ALT + Delete', 'exec', 'for ((i=0; i<$(hyprctl monitors -j | jq length); i++)); do agsv1 -t "session""$i"; done')
hl.bind('CTRL + ALT + Slash', 'exec', [[agsv1 run-js 'cycleMode();']])
hl.bind('CTRL + SUPER + G', 'exec', 'for ((i=0; i<$(hyprctl monitors -j | jq length); i++)); do agsv1 -t "crosshair""$i"; done')
hl.bind('CTRL + SUPER + Slash', 'exec', 'pkill anyrun || anyrun')
hl.bind('SUPER + A', 'exec', [[agsv1 -t 'sideleft']])
hl.bind('SUPER + ALT + Slash', 'exec', 'pkill fuzzel || fuzzel')
hl.bind('SUPER + B', 'exec', [[agsv1 -t 'sideleft']])
hl.bind('Super + Comma', 'exec', [[agsv1 run-js 'openColorScheme.value = true; Utils.timeout(2000, () => openColorScheme.value = false);']])
hl.bind('Super + K', 'exec', 'for ((i=0; i<$(hyprctl monitors -j | jq length); i++)); do agsv1 -t "osk""$i"; done')
hl.bind('Super + N', 'exec', [[agsv1 -t 'sideright']])
hl.bind('Super + O', 'exec', [[agsv1 -t 'sideleft']])
hl.bind('Super + Slash', 'exec', 'for ((i=0; i<$(hyprctl monitors -j | jq length); i++)); do agsv1 -t "cheatsheet""$i"; done')
hl.bind('Super + Tab', 'exec', [[agsv1 -t 'overview']])
hl.bind('Super + Super_L', 'exec', [[agsv1 -t 'overview']], { flags = 'ir' })
hl.bind('XF86MonBrightnessUp', 'exec', [[agsv1 run-js 'brightness.screen_value += 0.05; indicator.popup(1);']], { flags = 'le' })
hl.bind('XF86MonBrightnessDown', 'exec', [[agsv1 run-js 'brightness.screen_value -= 0.05; indicator.popup(1);']], { flags = 'le' })
hl.bind('Ctrl + Super + Alt + R', 'exec', 'hyprctl reload; killall agsv1 ydotool; agsv1 &', { flags = 'r' })
hl.bind('Ctrl + Super + R', 'exec', 'killall ags agsv1 ydotool; agsv1 &', { flags = 'r' })
