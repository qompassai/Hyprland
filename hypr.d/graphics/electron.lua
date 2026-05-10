#!/usr/bin/env lua
-- electron.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/hyprland/hypr.d/graphics/electron.conf
-- Qompass AI Hyprland Electron Graphics Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
hl.env('ELECTRON_ENABLE_LOGGING', '1')
hl.env('ELECTRON_ENABLE_WAYLAND', '1')
hl.env('ELECTRON_FLAGS', '--enable-wayland-ime --wayland-text-input-version=3')
hl.env('ELECTRON_OZONE_PLATFORM', 'wayland')
hl.env('ELECTRON_ENABLE_FEATURES', 'UseOzonePlatform,WaylandWindowDecorations')
hl.env('ELECTRON_OZONE_PLATFORM_HINT', 'auto')
