#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr/hypr.d/media/render.lua
-- Qompass AI Hyprland 0.55+ Media Render Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
hl.config({
	render = { ---@source https://wiki.hypr.land/configuring/core/config-options/#render
		--	async_commit = false,
		cm_auto_hdr = 1,
		cm_enabled = true,
		cm_sdr_eotf = 'gamma22',
		commit_timing_enabled = true,
		ctm_animation = 1,
		direct_scanout = 2,
		expand_undersized_textures = true,
		fp16_sdr_tf = 0,
		icc_vcgt_enabled = true,
		keep_unmodified_copy = 2,
		new_render_scheduling = true,
		non_shader_cm = 1,
		non_shader_cm_interop = 2,
		--	not_shown_fifo_lock = 0,
		send_content_type = true,
		use_fp16 = 2,
		use_shader_blur_blend = true,
		xp_mode = false,
	},
})
