#!/usr/bin/env lua
-- /qompassai/hyprland/hypr.d/core/env.lua
-- Qompass AI Hyprland 0.55+ Core Environment Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
local home_dir = os.getenv('HOME')
local xdg_data_dirs_old = os.getenv('XDG_DATA_DIRS') or ''
hl.env(
    'XDG_DATA_DIRS',
    home_dir
        .. '/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share:'
        .. xdg_data_dirs_old
)
hl.env('XDG_CACHE_HOME', '/home/phaedrus/.cache')
hl.env('XDG_CONFIG_HOME', '/home/phaedrus/.config')
hl.env('XDG_CURRENT_DESKTOP', 'Hyprland')
hl.env('XDG_DATA_HOME', '/home/phaedrus/.local/share')
hl.env(
    'XDG_DATA_DIRS',
    '/home/phaedrus/.local/share:/usr/local/share:/usr/share:/var/lib/flatpak/exports/share:/home/phaedrus/.local/share/flatpak/exports/share'
)
hl.env('XDG_DESKTOP_DIR', '/home/phaedrus/.Desktop')
-- env = XDG_DESKTOP_PORTAL_DIR,/usr/share/xdg-desktop-portal/portals
hl.env('XDG_DOCUMENTS_DIR', '/home/phaedrus/.Documents')
hl.env('XDG_DOWNLOAD_DIR', '/home/phaedrus/.Downloads')
-- env = XDG_MENU_PREFIX,arch-
hl.env('XMODIFIERS', '@im=fcitx')
hl.env('XDG_MUSIC_DIR', '/home/phaedrus/.Music')
hl.env('XDG_RUNTIME_DIR', '/run/user/1000')
hl.env('XDG_SEAT', 'seat0')
hl.env('XDG_SESSION_TYPE', 'wayland')
hl.env('XDG_SESSION_DESKTOP', 'Hyprland')
hl.env('XDG_STATE_HOME', '/home/phaedrus/.local/state')
hl.env('XDG_VTNR', '1')
hl.env('XDG_PICTURES_DIR', '/home/phaedrus/.Pictures')
hl.env('XDG_VIDEOS_DIR', '/home/phaedrus/.Videos')
hl.env('XDG_PUBLICSHARE_DIR', '/home/phaedrus/.Public')
hl.env('XDG_TEMPLATES_DIR', '/home/phaedrus/.Templates')
