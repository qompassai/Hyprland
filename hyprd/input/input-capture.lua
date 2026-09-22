#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hyprd/input/input-capture.lua
-- Qompass AI Hyprland 0.55+ Input-Capture Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
hl.config({ ---@source https://wiki.hypr.land/configuring/core/config-options/#input-capture
	['input-capture'] = {
		capture_modifiers = false,
		enforce_barriers = true,
	},
})
