#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/core/monitors.lua
-- Qompass AI Hyprland 0.55+ Monitors Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
---@source https://wiki.hypr.land/Configuring/Monitors/
hl.monitor({
    bitdepth = 10,
    --cm = 'hdr',
    output = 'DP-2',
    mode = 'preferred',
    position = '0x0',
    scale = 1.0,
})
hl.monitor({
    bitdepth = 10,
    --cm = 'hdr',
    mode = 'preferred',
    output = 'DP-1',
    position = '2592x0',
    scale = 1.0,
})
hl.monitor({
    bitdepth = 10,
    --cm = 'hdr',
    output = 'eDP-2',
    mode = 'preferred',
    position = '6464x0',
    scale = 1.0,
})
hl.monitor({
    bitdepth = 10,
    --cm = 'hdr',
    output = 'HDMI-A-1',
    mode = 'preferred',
    position = '8416x0',
    scale = 1.0,
})
