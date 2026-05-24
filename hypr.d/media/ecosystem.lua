#!/usr/bin/env lua
-- /qompassai/hyprland/hypr/hypr.d/media/ecosystem.lua
-- Qompass AI Hyprland 0.55+ Media Ecosystem Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ####################################################
-- https://wiki.hypr.land/Configuring/Permissions/#permissions
permission = '/usr/(bin|local/bin)/hyprpm, plugin, allow'
permission = '/usr/bin/hyprlock, screencopy, allow'
permission = '/usr/bin/hyprshot, screencopy, allow'
permission = '/usr/bin/wf-recorder, screencopy, allow'
permission = '/usr/bin/wl-screenrec, screencopy, allow'
permission = '/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland, screencopy, allow'
permission = 'ydotoold virtual device, keyboard, allow'
permission = 'wtype, keyboard, allow'
permission = 'dotool, keyboard, allow'
-- Nix
-- permission                                                 = ${lib.escapeRegex (lib.getExe config.programs.hyprlock.package)}, screencopy, allow
-- permission                                                 = ${lib.getExe pkgs.grim}, screencopy, allow
-- permission                                                 = /nix/store/[a-z0-9]{32}-grim-[0-9.]*/bin/grim, screencopy, allow
-- permission                                                 = /nix/store/[a-z0-9]{32}-xdg-desktop-portal-hyprland-[0-9.]*/libexec/.xdg-desktop-portal-hyprland-wrapped, screencopy, allow

hl.config({
    ecosystem = {
        enforce_permissions = true,
        no_donation_nag = true,
        no_update_news = true,
    },
})
