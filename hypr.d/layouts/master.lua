#!/usr/bin/env lua
-- master.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/hyprland/hypr.d/layouts/master.conf
-- Qompass AI Layout Master Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
-- Reference: https://wiki.hypr.land/Configuring/Master-Layout/

hl.config({
    master = {
        allow_small_split = false,
        always_keep_position = false,
        center_master_fallback = 'left',
        drop_at_cursor = true,
        -- inherit_fullscreen                                    = true # not tracked by Hyprls
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
