#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr/hypr.d/debug.lua
-- Qompass AI Hyprland 0.55+ Debug Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
hl.env('AQ_TRACE', '1')
hl.env('HYPRLAND_NO_RT', '1')
hl.env('HYPRLAND_NO_SD_NOTIFY', '1')
hl.env('HYPRLAND_NO_SD_VARS', '1')
hl.env('HYPRLAND_TRACE', '1')
hl.env('WAYLAND_DEBUG', '1')
hl.config({
    debug = {
        colored_stdout_logs = true,
        damage_blink = false,
        damage_tracking = 2,
        disable_logs = false,
        disable_scale_checks = false,
        disable_time = false,
        enable_stdout_logs = true,
        error_limit = 5,
        overlay = false,
        pass = false,
        suppress_errors = false,
    },
})
