#!/usr/bin/env lua
-- animations-fast.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use
-- /qompassai/hyprland/hypr.d/media/animations-fast.conf
-- Qompass AI Hyprland Media Fast-Animations Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
hl.config({
    animations = {
        enabled = true,
    },
})
hl.curve('linear', { type = 'bezier', points = { { 0.0, 0.0 }, { 1.0, 1.0 } } })
hl.curve('liner', { type = 'bezier', points = { { 1.0, 1.0 }, { 1.0, 1.0 } } })
hl.curve('md3_standard', { type = 'bezier', points = { { 0.2, 0.0 }, { 0.0, 1.0 } } })
hl.curve('md3_decel', { type = 'bezier', points = { { 0.05, 0.7 }, { 0.1, 1.0 } } })
hl.curve('md3_accel', { type = 'bezier', points = { { 0.3, 0.0 }, { 0.8, 0.15 } } })
hl.curve('overshot', { type = 'bezier', points = { { 0.05, 0.9 }, { 0.1, 1.1 } } })
hl.curve('crazyshot', { type = 'bezier', points = { { 0.1, 1.5 }, { 0.76, 0.92 } } })
hl.curve('hyprnostretch', { type = 'bezier', points = { { 0.05, 0.9 }, { 0.1, 1.0 } } })
hl.curve('fluent_decel', { type = 'bezier', points = { { 0.1, 1.0 }, { 0.0, 1.0 } } })
hl.curve('easeInOutCirc', { type = 'bezier', points = { { 0.85, 0.0 }, { 0.15, 1.0 } } })
hl.curve('easeOutCirc', { type = 'bezier', points = { { 0.0, 0.55 }, { 0.45, 1.0 } } })
hl.curve('easeOutExpo', { type = 'bezier', points = { { 0.16, 1.0 }, { 0.3, 1.0 } } })
hl.curve('hexCorner1', { type = 'bezier', points = { { 0.0, 0.6 }, { 0.4, 1.0 } } })
hl.curve('hexCorner2', { type = 'bezier', points = { { 0.6, 0.0 }, { 1.0, 0.4 } } })
-- Material You / expressive curves
hl.curve('expressiveFastSpatial', { type = 'bezier', points = { { 0.42, 1.67 }, { 0.21, 0.90 } } })
hl.curve('expressiveSlowSpatial', { type = 'bezier', points = { { 0.39, 1.29 }, { 0.35, 0.98 } } })
hl.curve('expressiveDefaultSpatial', { type = 'bezier', points = { { 0.38, 1.21 }, { 0.22, 1.00 } } })
hl.curve('emphasizedDecel', { type = 'bezier', points = { { 0.05, 0.7 }, { 0.1, 1.0 } } })
hl.curve('emphasizedAccel', { type = 'bezier', points = { { 0.3, 0.0 }, { 0.8, 0.15 } } })
hl.curve('standardDecel', { type = 'bezier', points = { { 0.0, 0.0 }, { 0.0, 1.0 } } })
hl.curve('menu_decel', { type = 'bezier', points = { { 0.1, 1.0 }, { 0.0, 1.0 } } })
hl.curve('menu_accel', { type = 'bezier', points = { { 0.52, 0.03 }, { 0.72, 0.08 } } })
hl.curve('stall', { type = 'bezier', points = { { 1.0, -0.1 }, { 0.7, 0.85 } } })

-- ── Animations (replaces `animation =` inside animations {}) ─────────────────
-- windows
hl.animation({ leaf = 'windowsIn', enabled = true, speed = 3, curve = 'emphasizedDecel', style = 'popin 80%' })
hl.animation({ leaf = 'windowsOut', enabled = true, speed = 2, curve = 'emphasizedDecel', style = 'popin 90%' })
hl.animation({ leaf = 'windowsMove', enabled = true, speed = 3, curve = 'emphasizedDecel', style = 'slide' })
-- fade
hl.animation({ leaf = 'fadeIn', enabled = true, speed = 3, curve = 'emphasizedDecel' })
hl.animation({ leaf = 'fadeOut', enabled = true, speed = 2, curve = 'emphasizedDecel' })
-- border
hl.animation({ leaf = 'border', enabled = true, speed = 10, curve = 'emphasizedDecel' })
hl.animation({ leaf = 'borderAngle', enabled = true, speed = 15, curve = 'liner', style = 'loop' })
-- layers
hl.animation({ leaf = 'layersIn', enabled = true, speed = 2.7, curve = 'emphasizedDecel', style = 'popin 93%' })
hl.animation({ leaf = 'layersOut', enabled = true, speed = 2.4, curve = 'menu_accel', style = 'popin 94%' })
hl.animation({ leaf = 'fadeLayersIn', enabled = true, speed = 0.5, curve = 'menu_decel' })
hl.animation({ leaf = 'fadeLayersOut', enabled = true, speed = 2.7, curve = 'stall' })
hl.animation({ leaf = 'workspaces', enabled = true, speed = 7, curve = 'menu_decel', style = 'slide' })
hl.animation({
    leaf = 'specialWorkspaceIn',
    enabled = true,
    speed = 2.8,
    curve = 'emphasizedDecel',
    style = 'slidevert',
})
hl.animation({
    leaf = 'specialWorkspaceOut',
    enabled = true,
    speed = 1.2,
    curve = 'emphasizedAccel',
    style = 'slidevert',
})
-- zoom
hl.animation({ leaf = 'zoomFactor', enabled = true, speed = 3, curve = 'standardDecel' })
