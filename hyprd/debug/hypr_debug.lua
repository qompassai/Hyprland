#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/debug/hypr_debug.lua
-- Qompass AI Hyprland 0.55+ Hypr Debug Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
hl.env('AQ_TRACE', '1')
hl.env('HYPRLAND_NO_RT', '1')
hl.env('HYPRLAND_NO_SD_NOTIFY', '1')
hl.env('HYPRLAND_NO_SD_VARS', '1')
hl.env('HYPRLAND_TRACE', '1')
hl.env('WAYLAND_DEBUG', '1')
hl.config({
	debug = { ---@source https://wiki.hypr.land/configuring/core/config-options/#debug
		colored_stdout_logs = true,
		damage_blink = false,
		damage_tracking = 2,
		disable_logs = false,
		disable_scale_checks = false,
		disable_time = false,
		ds_handle_same_buffer = true,
		ds_handle_same_buffer_fifo = true,
		enable_stdout_logs = true,
		error_limit = 5,
		error_position = 0,
		fifo_pending_workaround = false,
		full_cm_proto = true,
		gl_debugging = true,
		invalidate_buffers = 0,
		log_damage = false,
		manual_crash = 0,
		overlay = false,
		pass = true,
		render_solitary_wo_damage = false,
		suppress_errors = false,
		vfr = true,
	},
})
