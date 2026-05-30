#!/usr/bin/env lua5.4
-- /qompassai/hyprland/hypr/hypr.d/debug/opengl_debug.lua
-- Qompass AI Hypland 0.55+ OpenGL Debug Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
---@source | https://chromium.googlesource.com/angle/angle/+/6430e5e0035bf43695662784b9a2aec726f25cd7/doc/CaptureAndReplay.md
hl.env('ANGLE_BACKEND_INFO', '1')
hl.env('ANGLE_GL_VENDOR', 'Intel')
hl.env('ANGLE_GL_VERSION', '4.6 (Vulkan 1.4.321.1)')
hl.env('ANGLE_GL_RENDERER', '"Mesa Intel(R) Xe Graphics"')
hl.env('ANGLE_CAPTURE_ENABLED', '1')
hl.env('ANGLE_CAPTURE_OUT_DIR', '/home/phaedrus/.cache/angle-capture')
hl.env('ANGLE_CAPTURE_FRAME_START', '0')
hl.env('ANGLE_CAPTURE_COMPRESSION', '1')
hl.env('ANGLE_CAPTURE_FRAME_END', '4')
hl.env('ANGLE_ENABLE_DEBUG_MARKERS', '1')
hl.env('OCL_ICD_ENABLE_TRACE', '1')
