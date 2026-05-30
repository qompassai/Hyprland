#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hyprd/core/monitors.lua
-- Qompass AI Hyprland 0.55+ Monitors Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
---@source https://wiki.hypr.land/Configuring/Monitors/

-- Leftmost: DP-2
hl.monitor({
    bitdepth = 10,
    -- color_profile = "srgb",
    -- disable = false,
    -- enable_vrr = false,
    -- mirror = "",
    -- name = "LG-ULTRAGEAR-left",
    mode = 'preferred',
    output = 'DP-2',
    position = '0x0',
    scale = 1.0,
    -- transform = 0,
})

-- Second: DP-1 (DQHD / ultrawide)
hl.monitor({
    bitdepth = 10,
    -- color_profile = "srgb",
    -- disable = false,
    -- enable_vrr = false,
    -- mirror = "",
    -- name = "LG-HDR-DQHD-center",
    mode = 'preferred',
    output = 'DP-1',
    position = '2560x0',
    scale = 1.0,
    -- transform = 0,
})

-- Third: laptop panel eDP-2
hl.monitor({
    bitdepth = 10,
    -- color_profile = "srgb",
    -- disable = false,
    -- enable_vrr = true,
    -- mirror = "",
    -- name = "laptop-panel",
    mode = 'preferred',
    output = 'eDP-2',
    position = '6400x0',
    scale = 1.5,
    -- transform = 0,
})

-- Rightmost: HDMI-A-1
hl.monitor({
    bitdepth = 10,
    -- color_profile = "srgb",
    -- disable = false,
    -- enable_vrr = false,
    -- mirror = "",
    -- name = "LG-ULTRAGEAR-right",
    mode = 'preferred',
    output = 'HDMI-A-1',
    position = '7680x0',
    scale = 1.0,
    -- transform = 0,
})

