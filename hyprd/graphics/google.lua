#!/usr/bin/env lua5.4
-- /qompassai/hyprland/hypr/hypr.d/graphics/google.lua
-- Qompass AI Hyprland 0.55+ Google Graphics Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
-- hl.env('ANGLE_PLATFORM', 'vulkan')
-- hl.env('ANGLE_PLATFORM_FEATURES','vulkan_synchronization2')
hl.env('ANGLE_CAPTURE_SERIALIZE_STATE', '1')
-- hl.env('ANGLE_DEFAULT_PLATFORM', 'vulkan')
-- hl.env('ANGLE_FEATURE_OVERRIDES_ENABLED', 'prefer_vulkan')
hl.env('TENSORFLOW_DELEGATE', 'none')
hl.env('TF_CPP_MIN_LOG_LEVEL', '2')
hl.env('TF_ENABLE_ONEDNN_OPTS', '0')
hl.env('TF_INTRA_OP_PARALLELISM_THREADS', '4')
hl.env('TF_INTER_OP_PARALLELISM_THREADS', '4')
