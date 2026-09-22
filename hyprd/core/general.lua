#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hyprd/core/general.conf
-- Qompass AI Hyprland Core General Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
---@source https://wiki.hypr.land/configuring/core/config-options/#general
hl.config({
	general = {
		allow_tearing = true,
		border_size = 2,
		extend_border_grab_area = 15,
		float_gaps = -1,
		gaps_in = 5,
		gaps_out = 4,
		gaps_workspaces = 50,
		hover_icon_on_border = true,
		layout = 'dwindle',
		locale = 'en_US',
		modal_parent_blocking = true,
		no_focus_fallback = false,
		resize_corner = 0,
		resize_on_border = true,
		col = { ---@source https://wiki.hypr.land/configuring/core/config-options/#general-colors
			active_border = 'rgba(00a6d7ff)',
			inactive_border = 'rgba(001b87ff)',
			nogroup_border = '0xffffaaff',
			nogroup_border_active = '0xffff00ff',
		},
		snap = { ---@source https://wiki.hypr.land/configuring/core/config-options/#snap
			border_overlap = true,
			enabled = true,
			monitor_gap = 10,
			respect_gaps = true,
			window_gap = 10,
		},
	},
})
