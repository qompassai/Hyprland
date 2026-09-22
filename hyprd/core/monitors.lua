#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hyprd/core/monitors.lua
-- Qompass AI Hyprland 0.56+ monitor layout
-- Copyright (C) 2025 Qompass AI, All rights reserved
--
-- Physical left-to-right layout:
--   DP-2 (2560x1440) -> DP-1 (3840x1080) -> eDP-2 (1920x1200 @ 1.5) -> HDMI-A-1 (2560x1440)
--
-- Logical horizontal positions:
--   DP-2:      0
--   DP-1:      2560
--   eDP-2:     6400
--   HDMI-A-1:  7680
--
-- eDP-2 uses 1920 / 1.5 = 1280 logical pixels, so it occupies [6400, 7680).
-- luacheck: globals hl

-- Leftmost external LG UltraGear.
hl.monitor({
	bitdepth = 10,
	cm = 'srgb',
	mode = '2560x1440@143.93',
	output = 'DP-2',
	position = '0x0',
	scale = 1,
	vrr = 0,
})

-- Center LG HDR DQHD ultrawide.
hl.monitor({
	bitdepth = 10,
	cm = 'srgb',
	mode = '3840x1080@60',
	output = 'DP-1',
	position = '2560x0',
	scale = 1,
	vrr = 0,
})

-- Laptop panel. Its 1.5 scale produces a 1280x800 logical desktop region.
hl.monitor({
	bitdepth = 10,
	cm = 'srgb',
	mode = '1920x1200@144',
	output = 'eDP-2',
	position = '6400x0',
	scale = 1.5,
	vrr = 1,
})

-- Rightmost external LG UltraGear.
hl.monitor({
	bitdepth = 10,
	cm = 'srgb',
	mode = '2560x1440@143.93',
	output = 'HDMI-A-1',
	position = '7680x0',
	scale = 1,
	vrr = 0,
})
