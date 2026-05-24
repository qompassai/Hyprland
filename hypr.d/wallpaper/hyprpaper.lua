#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr/hypr.d/wallpaper/hyprpaper.lua
-- Qompass AI Hyprland 0.55+ HyprPaper Lua Config
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ###################################################
-- preload = /home/phaedrus/.config/hypr/hypr.d/wallpaper/wp/wall0.png
-- wallpaper = /home/phaedrus/.config/hypr/hypr.d/wallpaper/wp/wall0.png
-- wallpaper = DP-1,/home/phaedrus/.config/hypr/hypr.d/wallpaper/wp/wall0.png
-- wallpaper = DP-2,/home/phaedrus/.config/hypr/hypr.d/wallpaper/wp/wall0.png
-- wallpaper = eDP-2,/home/phaedrus/.config/hypr/hypr.d/wallpaper/wp/wall0.png
-- wallpaper = HDMI-A-1,/home/phaedrus/.config/hypr/hypr.d/wallpaper/wp/wall0.png
local wp = os.getenv('HOME') .. '/.config/hypr/hypr.d/wallpaper/wp/wall0.png'
hl.keyword('preload', wp)
hl.keyword('splash', 'false')
hl.keyword('ipc', 'off')
local monitors = { 'eDP-2', 'DP-1', 'DP-2', 'HDMI-A-1' }
for _, mon in ipairs(monitors) do
    hl.config({
        wallpaper = {
            monitor = mon,
            path = wp,
            fit_mode = 'cover',
        },
    })
end
