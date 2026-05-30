#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/graphics/electron.lua
-- Qompass AI Hyprland 0.55+ Electron Graphics Config
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ###################################################
hl.env('ELECTRON_ENABLE_LOGGING', '1')
hl.env('ELECTRON_ENABLE_WAYLAND', '1')
hl.env('ELECTRON_FLAGS', '--enable-wayland-ime --wayland-text-input-version=3')
hl.env('ELECTRON_OZONE_PLATFORM', 'wayland')
hl.env('ELECTRON_ENABLE_FEATURES', 'UseOzonePlatform,WaylandWindowDecorations')
hl.env('ELECTRON_OZONE_PLATFORM_HINT', 'auto')
