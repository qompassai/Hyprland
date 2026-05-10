#!/usr/bin/env lua
-- monitors.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/hyprland/hypr.d/core/monitors.conf
-- Qompass AI Hyprland Monitors Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
-- Reference: https://wiki.hypr.land/Configuring/Monitors/
hl.monitor('DP-2', { resolution = 'preferred', position = '0x0', scale = 1.0, bitdepth = 10 })
-- monitor=DP-1,2560x1440@143.932999,0x0,1.0           # Leftmost
hl.monitor('DP-1', { resolution = 'preferred', position = '2592x0', scale = 1.0, bitdepth = 10 })
-- monitor=DP-5,3840x1080@59.995998,2560x0,1.0         # Second from left
hl.monitor('eDP-2', { resolution = 'preferred', position = '6464x0', scale = 1.0, bitdepth = 10 })
-- monitor = eDP-2,preferred,6400x0,1.0, bitdepth, 10, cm, hdr, sdrbrightness, 1.2, sdrsaturation, 0.98
-- monitor=eDP-2,1920x1200@144.001007,6400x0,1.0       # Third from left
-- monitor=HDMI-A-1,2560x1440@143.932999,8320x0,1.0    # Rightmost
hl.monitor('HDMI-A-1', { resolution = 'preferred', position = '8416x0', scale = 1.0, bitdepth = 10 })
