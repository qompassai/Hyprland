#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/graphics/aq.lua
-- Qompass AI Hyprland 0.55+ Aquamarine Graphics Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
---@source https://wiki.hypr.land/Hypr-Ecosystem/aquamarine/
-- lspci | grep -i -E 'vga|3d|2d'
-- ls -l /dev/dri/by-path/
-- lspci -v -s 00:02.0
-- lspci -v -s 01:00.0
hl.env('AQ_DRM_DEVICES', '/dev/dri/card2:/dev/dri/card1')
-- hl.env('AQ_DRM_DEVICES', '/dev/dri/by-path/pci-0000:00:02.0-card:/dev/dri/by-path/pci-0000:01:00.0-card')
hl.env('AQ_MGPU_NO_EXPLICIT', '1')
-- hl.env('AQ_NO_MODIFIERS', '1')
hl.env('AQ_RENDER_BACKEND', 'gl')
