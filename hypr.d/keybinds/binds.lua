#!/usr/bin/env lua
-- binds.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/hyprland/hypr.d/keybinds/binds.conf
-- Qompass AI Hyprland Binds Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
-- References: https://wiki.hypr.land/Configuring/Binds/ | https://wiki.hypr.land/Configuring/Variables/#binds
local mainMod = 'SUPER'
hl.bind('ALT + TAB', 'bringactivetotop')
hl.bind('ALT + TAB', 'cyclenext')
hl.bind('ALT + TAB', 'togglesplit')
hl.bind('CTRL + SUPER + Backslash', 'resizeactive', 'exact 640 480')
hl.bind('CTRL + SUPER + Left', 'workspace', 'r-1')
hl.bind('CTRL + SUPER + mouse_down', 'workspace', 'r-1')
hl.bind('CTRL + SUPER + mouse_up', 'workspace', 'r+1')
hl.bind('CTRL + SUPER + Page_Down', 'workspace', 'r+1')
hl.bind('CTRL + SUPER + Page_Up', 'workspace', 'r-1')
hl.bind('CTRL + SUPER + Right', 'workspace', 'r+1')
hl.bind('CTRL + SUPER + mouse_up', 'workspace', 'r+1')
hl.bind('CTRL + SUPER + mouse_down', 'workspace', 'r-1')
hl.bind('CTRL + SUPER + Right', 'workspace', 'r+1')
hl.bind('CTRL + SUPER + Left', 'workspace', 'r-1')
hl.bind('CTRL SUPER ALT + Left', 'workspace', 'm-1')
hl.bind('CTRL SUPER ALT + Right', 'workspace', 'm+1')
hl.bind('CTRL SUPER ALT + Right', 'workspace', 'm+1')
hl.bind('CTRL SUPER ALT + Left', 'workspace', 'm-1')
hl.bind('CTRL SUPER SHIFT + Up', 'movetoworkspacesilent', 'special')
hl.bind('CTRL SUPER SHIFT + Right', 'movetoworkspace', 'r+1')
hl.bind('CTRL SUPER SHIFT + Left', 'movetoworkspace', 'r-1')
hl.bind('CTRL SUPER + [', 'workspace', '-1')
hl.bind('CTRL SUPER + ]', 'workspace', '+1')
hl.bind('CTRL SUPER + Up', 'workspace', 'r-5')
hl.bind('CTRL SUPER + Down', 'workspace', 'r+5')
hl.bind('SUPER + a', 'exec', '$term $tele')
hl.bind('SUPER ALT + a', 'exec', '$tele2')
hl.bind('SUPER ALT + d', 'exec', '$dis2')
hl.bind('SUPER ALT + f', 'exec', '$files')
hl.bind('SUPER ALT + g', 'exec', '$term2')
hl.bind('SUPER ALT + r', 'exec', '$record2')
hl.bind('SUPER ALT + s', 'exec', '$vol_ctrl2')
hl.bind('SUPER ALT + t', 'exec', '$bt2')
hl.bind('SUPER ALT + v', 'exec', '$voice toggle')
hl.bind('SUPER ALT + w', 'exec', '$web2')
hl.bind('SUPER ALT + z', 'exec', '$citation')
hl.bind('SUPER + d', 'exec', '$dis')
hl.bind('SUPER + e', 'exec', '$emoji')
hl.bind('SUPER + f', 'togglefloating')
hl.bind('SUPER + F1', 'exec', [[wtype '🔥']])
hl.bind('SUPER + g', 'exec', '$term')
hl.bind('SUPER + h', 'exec', '$screenshot')
hl.bind('SUPER + l', 'exec', '$lock')
hl.bind('SUPER + m', 'exec', 'hyprmon --profile home')
hl.bind('SUPER + r', 'exec', '$record')
hl.bind('SUPER + s', 'exec', '$term $vol_ctrl')
hl.bind('SUPER SHIFT + c', 'exec', 'cliphist list | hyprlauncher | cliphist decode | wl-copy')
hl.bind('SUPER + SPACE', 'exec', '$launcher')
hl.bind('SUPER + t', 'exec', '$bt2')
hl.bind('SUPER + w', 'exec', '$web')
hl.bind('SUPER + x', 'killactive')
hl.bind('SUPER + z', 'exec', '$pdf')
-- bindel                                = , XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+
-- bindel                                = , XF86AudioLowerVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-
-- bindel                                = , XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
hl.bind('SUPER + mouse:272', 'movewindow', { flags = 'm' })
hl.bind('SUPER + mouse:273', 'resizewindow', { flags = 'm' })
hl.bind('SUPER ALT + mouse_down', 'exec', [[hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '.float * 1.1')]], { flags = 'p' })
hl.bind('SUPER ALT + mouse_up', 'exec', [[hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '(.float * 0.9) | if . < 1 then 1 else . end')]], { flags = 'p' })
-- FIXME: binds:scroll_event_delay = 10

hl.config({
    binds = {
        allow_pin_fullscreen = true,
        allow_workspace_cycles = true,
        disable_keybind_grabbing = false,
        drag_threshold = 0,
        focus_preferred_method = 1,
        hide_special_on_workspace_change = false,
        ignore_group_lock = false,
        movefocus_cycles_fullscreen = true,
        movefocus_cycles_groupfirst = false,
        pass_mouse_when_bound = true,
        scroll_event_delay = 300,
        window_direction_monitor_fallback = true,
        workspace_back_and_forth = true,
        workspace_center_on = 0,
    },
})
