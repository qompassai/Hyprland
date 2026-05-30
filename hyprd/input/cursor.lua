#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/input/cursor.lua
-- Qompass AI Hyprland 0.55+ Input Cursor Config
-- Copyright (C) 2026 Qompass AI, All rights reserved
-------------------------------------------------------
---@source: https://wiki.hypr.land/Configuring/Variables/#cursor
hl.config({
    cursor = {
        --  default_monitor =
        enable_hyprcursor = true,
        hide_on_key_press = false,
        hide_on_touch = true,
        hotspot_padding = 1,
        inactive_timeout = 3,
        invisible = false,
        min_refresh_rate = 60,
        no_break_fs_vrr = 2,
        no_hardware_cursors = 2,
        no_warps = false,
        persistent_warps = false,
        sync_gsettings_theme = true,
        use_cpu_buffer = 2,
        warp_back_after_non_mouse_input = true,
        warp_on_change_workspace = 1,
        warp_on_toggle_special = 1,
        zoom_detached_camera = true,
        zoom_disable_aa = false,
        zoom_factor = 1.0,
        zoom_rigid = true,
    },
})
