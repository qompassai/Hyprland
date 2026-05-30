#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/experimental/test.lua
-- Qompass AI Hyprland 0.55+ Experimental Test Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
--hl.env('AQ_DRM_DEVICES','/dev/dri/card2:/dev/dri/card3:/dev/dri/card4:/dev/dri/card5:/dev/dri/card1:/dev/dri/card0')
-- hl.env('DXVK_FILTER_DEVICE_NAME','Intel(R) Graphics')
-- hl.env('DXVK_FILTER_DEVICE_NAME', 'RTX 4070;)
-- hl.env('VK_DEVICE_FILTER', 'intel')
hl.env('mesa_glthread', 'false')
hl.env('vblank_mode', '0')
hl.env('__GL_YIELD', 'NOTHING')
--hl.env('__GL_THREADED_OPTIMIZATIONS', 1) #1=+|0=-
hl.env('MESA_SHADER_CACHE_DISABLE', 'false')
hl.env('INTEL_COMPUTE_CLASS', '1')
hl.env('INTEL_PRECISE_TRIG', '0')
hl.env('INTEL_SHADER_ASM_READ_PATH', '/tmp/shaders')
