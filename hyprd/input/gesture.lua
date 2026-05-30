#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/input/gesture.lua
-- Qompass AI Hyprland 0.55+ Input Gesture Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
---@source:  https://wiki.hypr.land/Configuring/Gestures/
hl.config({
    gestures = {
        workspace_swipe_distance = 700,
        workspace_swipe_cancel_ratio = 0.2,
        workspace_swipe_min_speed_to_force = 5,
        workspace_swipe_direction_lock = true,
        workspace_swipe_direction_lock_threshold = 10,
        workspace_swipe_create_new = true,
    },
})

hl.gesture({
    action = 'workspace',
    direction = 'horizontal',
    fingers = 3,
})
hl.gesture({
    action = 'close',
    fingers = 3,
    direction = 'down',
})
hl.gesture({
    action = 'close',
    fingers = 3,
    direction = 'down',
    mod = 'ALT',
})
hl.gesture({
    action = 'fullscreen',
    fingers = 3,
    direction = 'up',
})
hl.gesture({
    action = 'fullscreen',
    fingers = 3,
    direction = 'up',
    mod = 'ALT',
    scale = 1.2,
})
hl.gesture({
    fingers = 3,
    direction = 'pinch',
    action = 'dispatcher',
    params = 'exec fuzzel',
})
hl.gesture({
    fingers = 4,
    direction = 'down',
    action = 'dispatcher',
    params = 'exec firefox',
})
hl.gesture({
    fingers = 4,
    direction = 'left',
    action = 'special',
    params = 'mySpecialWorkspace',
})
hl.gesture({
    fingers = 4,
    direction = 'right',
    mod = 'SUPER',
    scale = 2.0,
    action = 'float',
})
hl.gesture({
    fingers = 4,
    direction = 'up',
    mod = 'SUPER',
    scale = 1.5,
    action = 'float',
})
hl.gesture({
    fingers = 3,
    direction = 'down',
    action = 'unset',
})
