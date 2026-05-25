#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/rules/window_rules.lua
-- Qompass AI Hyprland 0.55+ Window Rules Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
---@source  https://wiki.hypr.land/Configuring/Window-Rules/
local lib = require('hypr.d/lib/init')
local wr = lib.wr
wr('suppress-maximize', {
    match = {
        class = '.*',
    },
    suppress_event = 'maximize',
})
wr('idle-inhibit-fullscreen', {
    match = { class = '.*' },
    idle_inhibit = 'fullscreen',
})
wr('no-shadow-tiled', {
    match = { float = false },
    no_shadow = true,
})
wr('xwayland-no-blur', {
    match = {
        xwayland = true,
    },
    no_blur = true,
})
wr('pin-border', {
    match = {
        pin = true,
    },
    border_color = 'rgba(FFB2BCAA) rgba(FFB2BC77)',
})

wr('fix-xwayland-drag', {
    match = {
        class = '^$',
        title = '^$',
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})
wr('smart-border-tv', {
    match = {
        workspace = 'w[tv1]s[false]',
        float = false,
    },
    border_size = 0,
    rounding = 0,
})
wr('smart-border-f1', {
    match = {
        workspace = 'f[1]s[false]',
        float = false,
    },
    border_size = 0,
    rounding = 0,
})
wr('steam-float', {
    match = {
        class = '^(steam)$',
    },
    allows_input = true,
    float = true,
    no_dim = true,
    focus_on_activate = true,
    opacity = '1.0 override 0.6 override 1.0 override',
})
wr('steam-empty-title', {
    match = {
        class = '^(steam)$',
        title = '^()$',
    },
    min_size = '1 1',
    stay_focused = true,
})
wr('steam-app-immediate', {
    match = {
        class = '^(steam_app_.*)$',
    },
    immediate = true,
})
wr('cs2-no-anim', {
    match = { class = '^(cs2)$' },
    no_anim = true,
})
wr('exe-immediate', {
    match = {
        title = [[\.exe$]],
    },
    immediate = true,
})

wr('unreal-rules', {
    match = {
        class = '^(UnrealEditor)$',
    },
    focus_on_activate = true,
    immediate = true,
    no_blur = true,
    no_dim = true,
    no_shadow = true,
    opacity = '1.0 override 1.0 override 1.0 override',
})
wr('unreal-suppress', {
    match = {
        class = '^UnrealEditor$',
        title = [[^\w*$]],
    },
    suppress_event = 'activate',
    no_initial_focus = true,
    group = 'unset',
})
wr('jetbrains-no-focus', {
    match = {
        class = '^jetbrains-.*$',
        float = true,
        title = [[^($|\s|win\d+)$]],
    },
    no_initial_focus = true,
})

wr('vesktop-opacity', {
    match = {
        class = '^(Vesktop)$',
    },
    opacity = '0.0 override 0.0 override',
})
wr('inkscape-opacity', {
    match = {
        class = '^(org.inkscape.Inkscape)$',
    },
    opacity = '1.0 1.0',
})
wr('foot-opacity', {
    match = {
        class = '^(foot)$',
    },
    opacity = '0.85',
})
wr('nm-rules', {
    match = {
        class = '^(nm-connection-editor)$',
    },
    float = true,
    center = true,
    size = '45% 45%',
})
wr('pavucontrol-rules', {
    match = {
        class = '^(org.pulseaudio.pavucontrol|pavucontrol)$',
    },
    float = true,
    center = true,
    size = '45% 45%',
})
wr('nwg-drawer-rules', {
    match = {
        class = '^(nwg-drawer)$',
    },
    float = true,
    center = true,
})
wr('blueberry-float', {
    match = { class = [[^(blueberry\.py)$]] },
    float = true,
})
wr('guifetch-float', {
    match = { class = '^(guifetch)$' },
    float = true,
})
wr('warp-tile', {
    match = {
        class = [[^dev\.warp\.Warp$]],
    },
    tile = true,
})
wr('audacity-opaque', {
    match = {
        class = '^(.*audacity.*)$',
    },
    opaque = true,
})
wr('zotero-rules', {
    match = {
        class = '^(Zotero)$',
    },
    float = true,
    size = '(monitor_w*0.45) (monitor_h*0.45)',
})

wr('pic_in_pic-rules', {
    match = {
        title = [[^([Pp]icture[-\s]?[Ii]n[-\s]?[Pp]icture)(.*)$]],
    },
    float = true,
    pin = true,
    keep_aspect_ratio = true,
    size = '25% 25%',
    move = '73% 72%',
})
wr('hypremoji-rules', {
    match = {
        title = '^(HyprEmoji)$',
    },
    float = true,
    move = '(cursor_x-(window_w*0.5)) (cursor_y-(window_h*0.05))',
})
wr('dialog-float-center', {
    match = {
        title = '^(Open File|Select a File|Choose wallpaper|Open Folder|Save As|Library|File Upload)(.*)$',
    },
    float = true,
    center = true,
})

wr('popup-opaque', {
    match = {
        content = 'popup',
    },
    opaque = true,
})
wr('dropdown-opaque', {
    match = {
        content = 'dropdown_menu',
    },
    opaque = true,
})
wr('vroid-studio-rules', {
    match = {
        title = '^(VRoid Studio)(.*)$',
    },
    float = true,
    size = '1280 800',
})

wr('wine-explorer-rules', {
    match = {
        class = '^(explorer.exe)$',
    },
    float = true,
})
