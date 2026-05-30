#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/layouts/master.lua
-- Qompass AI Hyprland 0.55+ Layout Master Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
---@source https://wiki.hypr.land/Configuring/Master-Layout/
hl.config({
    master = {
        allow_small_split = false,
        always_keep_position = false,
        center_master_fallback = 'left',
        drop_at_cursor = true,
        mfact = 0.55,
        new_on_active = 'none',
        new_on_top = true,
        new_status = 'slave',
        orientation = 'left',
        slave_count_for_center_master = 0,
        smart_resizing = true,
        special_scale_factor = 0.5,
    },
})
