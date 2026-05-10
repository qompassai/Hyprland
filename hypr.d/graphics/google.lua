#!/usr/bin/env lua
-- google.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/hyprland/hypr/hypr.d/graphics/google.conf
-- Qompass AI Hyprland Google Graphics Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
-- env = ANGLE_PLATFORM                              , vulkan
-- env = ANGLE_PLATFORM_FEATURES                     , vulkan_synchronization2
hl.env('ANGLE_CAPTURE_SERIALIZE_STATE', '1')
-- env = ANGLE_DEFAULT_PLATFORM                      , vulkan
-- env = ANGLE_FEATURE_OVERRIDES_ENABLED             , prefer_vulkan
hl.env('TENSORFLOW_DELEGATE', 'none')
hl.env('TF_CPP_MIN_LOG_LEVEL', '2')
hl.env('TF_ENABLE_ONEDNN_OPTS', '0')
hl.env('TF_INTRA_OP_PARALLELISM_THREADS', '4')
hl.env('TF_INTER_OP_PARALLELISM_THREADS', '4')

