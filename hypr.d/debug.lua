#!/usr/bin/env lua
-- debug.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/hyprland/hypr/hypr.d/debug.conf
-- Qompass AI Hyprland Debug Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
hl.env('AQ_TRACE', '1')
hl.env('HYPRLAND_NO_RT', '1')
hl.env('HYPRLAND_NO_SD_NOTIFY', '1')
hl.env('HYPRLAND_NO_SD_VARS', '1')
hl.env('HYPRLAND_TRACE', '1')
hl.env('WAYLAND_DEBUG', '1')
-- source = ~/.config/hypr/hypr.d/debug/gtk_debug.conf
-- source = ~/.config/hypr/hypr.d/debug/intel_debug.conf
-- source = ~/.config/hypr/hypr.d/debug/mesa_debug.conf
-- source = ~/.config/hypr/hypr.d/debug/nvidia_debug.conf
-- source = ~/.config/hypr/hypr.d/debug/opengl_debug.conf
-- source = ~/.config/hypr/hypr.d/debug/qt_debug.conf
-- source = ~/.config/hypr/hypr.d/debug/vulkan_debug.conf

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
