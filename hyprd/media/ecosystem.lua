#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr/hypr.d/media/ecosystem.lua
-- Qompass AI Hyprland 0.55+ Media Ecosystem Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ####################################################
---@source https://wiki.hypr.land/Configuring/Permissions/#permissions
hl.config({
    ecosystem = {
        enforce_permissions = true,
        no_donation_nag = true,
        no_update_news = true,
    },
})
hl.permission({
    binary = '/usr/(bin|local/bin)/hyprpm',
    mode = 'allow',
    type = 'plugin',
})
hl.permission({
    binary = '/usr/bin/hyprshot',
    mode = 'allow',
    type = 'screencopy',
})
hl.permission({
    binary = '/usr/bin/slurp',
    type = 'screencopy',
    mode = 'allow',
})
hl.permission({
    binary = '/usr/bin/grim',
    type = 'screencopy',
    mode = 'allow',
})
hl.permission({
    binary = '/usr/bin/hyprlock',
    mode = 'allow',
    type = 'screencopy',
})
hl.permission({
    binary = '/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland',
    type = 'screencopy',
    mode = 'allow',
})
hl.permission({
    binary = '/usr/bin/wl-screenrec',
    type = 'screencopy',
    mode = 'allow',
})
hl.permission({
    binary = '/usr/bin/wf-recorder',
    mode = 'allow',
    type = 'screencopy',
})
hl.permission({
    binary = 'wtype',
    type = 'keyboard',
    mode = 'allow',
})
hl.permission({
    binary = 'ydotoold virtual device',
    type = 'keyboard',
    mode = 'allow',
})
hl.permission({
    binary = 'dotool',
    type = 'keyboard',
    mode = 'allow',
})
hl.permission({
    binary = '/nix/store/[a-z0-9]+-hyprlock-[0-9.]*/bin/hyprlock',
    type = 'screencopy',
    mode = 'allow',
})
hl.permission({
    binary = '/nix/store/[a-z0-9]+-grim-[0-9.]*/bin/grim',
    type = 'screencopy',
    mode = 'allow',
})
hl.permission({
    binary = '/nix/store/[a-z0-9]+-xdg-desktop-portal-hyprland-[0-9.]*/libexec/.xdg-desktop-portal-hyprland-wrapped',
    type = 'screencopy',
    mode = 'allow',
})
hl.permission({
    binary = '/nix/store/[a-z0-9]+-hyprpm-[0-9.]*/bin/hyprpm',
    type = 'plugin',
    mode = 'allow',
})
