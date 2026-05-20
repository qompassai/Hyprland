#!/usr/bin/env lua
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
-- ipc = off
-- splash = false
-- preload = /home/phaedrus/.config/hypr/hypr.d/wallpaper/wp/wall0.png
ipc = 'off'
splash = false
preload = '/home/phaedrus/.config/hypr/hypr.d/wallpaper/wp/wall0.png'

hl.config({
    wallpaper = {
        -- FIXME: monitor =
        path = '/home/phaedrus/.config/hypr/hypr.d/wallpaper/wp/wall0.png',
        fit_mode = 'cover',
    },
})
