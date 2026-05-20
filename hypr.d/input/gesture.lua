#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/input/gesture.lua
-- Qompass AI Hyprland 0.55+ Input Gesture Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
---@source:  https://wiki.hypr.land/Configuring/Gestures/
hl.config({
    gesture = {
        gesture = '3, down, close',
        gesture = '3, down, unset',
        gesture = '3, pinch, dispatcher, exec fuzzel',
        gesture = '3, up, fullscreen',
        gesture = '3, up, mod: ALT, scale: 1.2, fullscreen',
        gesture = '4, down, dispatcher, exec firefox',
        gesture = '4, left, special, mySpecialWorkspace',
        gesture = '4, right, mod: SUPER, scale: 2.0, float',
        gesture = '4, up, mod: SUPER, scale: 1.5, float',
    },
})
