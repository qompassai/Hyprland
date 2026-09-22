#!/usr/bin/env lua5.4
-- /qompassai/hyprland/hypr.d/layouts/groups.lua
-- Qompass AI Hyprland 0.55+ Layout Groups Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
hl.config({
	group = { ---@source https://wiki.hypr.land/configuring/core/config-options/#scrolling
		auto_group = true,
		drag_into_group = 1,
		focus_removed_window = true,
		group_on_movetoworkspace = false,
		insert_after_current = true,
		merge_floated_into_tiled_on_groupbar = false,
		merge_groups_on_drag = true,
		merge_groups_on_groupbar = true,
		col = {
			border_active = 0x66ffff00,
			border_inactive = 0x66777700,
			border_locked_active = 0x66ff5500,
			border_locked_inactive = 0x66775500,
		},
		groupbar = { ---@source https://wiki.hypr.land/configuring/core/config-options/#groupbar
			disable_when_only = true,
			col = { ---@source https://wiki.hypr.land/configuring/core/config-options/#groupbar-colors
				active = 0x66ffff00,
				inactive = 0x66777700,
				locked_active = 0x66ff5500,
				locked_inactive = 0x66775500,
			},
			enabled = true,
			font_family = 'DaddyTimeMono Nerd Font Mono',
			font_size = 8,
			font_weight_active = 'normal',
			font_weight_inactive = 'normal',
			gaps_out = 2,
			gradients = true,
			gradient_rounding = 2,
			gradient_round_only_edges = true,
			gradient_rounding_power = 2.0,
			height = 14,
			indicator_gap = 0,
			indicator_height = 3,
			keep_upper_gap = true,
			priority = 3,
			render_titles = true,
			rounding = 1,
			round_only_edges = true,
			rounding_power = 2.0,
			scrolling = true,
			stacked = true,
			text_color = '0xffffffff',
			text_color_inactive = '0xffffffff',
			text_color_locked_active = '0xffffffff',
			text_color_locked_inactive = '0xffffffff',
			text_offset = 0,
			text_padding = 0,
		},
	},
})
