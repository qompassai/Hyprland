#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr/hypr.d/decorations/decoration.lua
-- Qompass AI Hyprland 0.55+ Decoration Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
hl.config({ ---@source https://wiki.hypr.land/configuring/core/config-options/#decoration
	decoration = {
		active_opacity = 1.0,
		border_part_of_window = true,
		dim_around = 0.4,
		dim_inactive = true,
		dim_modal = true,
		dim_special = 0.2,
		dim_strength = 0.1,
		fullscreen_opacity = 0.5,
		inactive_opacity = 0.15,
		rounding = 20,
		rounding_power = 2.0,
		-- screen_shader =
		blur = { ---@source https://wiki.hypr.land/configuring/core/config-options/#blur
			brightness = 1.0,
			contrast = 1.0,
			enabled = false,
			ignore_opacity = true,
			input_methods = true,
			input_methods_ignorealpha = 0.2,
			new_optimizations = true,
			noise = 0.01,
			passes = 4,
			popups = true,
			popups_ignorealpha = 0.6,
			size = 14,
			special = true,
			variant = {},
			vibrancy = 1.5,
			vibrancy_darkness = 1.0,
			xray = true,
		},
		--[[
		acrylic = {
			 aberration = 0.025,
		   bulb
			 clarity
		},
		--]]
		--[[
		aurora = {
color1 = 0x29F0A0FF,
color2 = 0x7A4DFFFF,
intensity = 0.35,
speed = 1.0,
		},
						--]]
		glow = {
			color = '0xee33ccff',
			color_inactive = '0xee33ccff',
			enabled = false,
			range = 10,
			render_power = 3,
		},
		motion_blur = {
			enabled = false,
			samples = 7,
		},
		shadow = {
			color = '0xee1a1a1a',
			color_inactive = '0xee1a1a1a',
			enabled = true,
			offset = '0 2',
			range = 20,
			render_power = 4,
			scale = 1.0,
			sharp = false,
		},
	},
})
