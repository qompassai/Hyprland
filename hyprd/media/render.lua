#!/usr/bin/env lua5.4
-----@version 5.4
-- /qompassai/hyprland/hypr/hypr.d/media/render.lua
-- Qompass AI Hyprland 0.55+ Media Render Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
---@source https://wiki.hypr.land/Configuring/Variables/#render
hl.config({
    render = {
        cm_auto_hdr = 1,
        cm_enabled = true,
        --      cm_fs_passthrough = 1,
        cm_sdr_eotf = 0,
        ctm_animation = 1,
        direct_scanout = 2,
        expand_undersized_textures = true,
        new_render_scheduling = true,
        non_shader_cm = 1,
        send_content_type = true,
        xp_mode = false,
    },
})
