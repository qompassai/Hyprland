#!/usr/bin/env lua5.4
-- /qompassai/hyprland/hypr/hypr.d/media/animations.lua
-- Qompass AI Hyprland 0.55 Media Animations Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
---@source https://www.cssportal.com/css-cubic-bezier-generator/ | https://easings.net/
hl.config({
    animations = {
        enabled = true,
    },
    general = {
        workspace_wraparound = true,
    },
})
hl.curve('crazyshot', {
    type = 'bezier',
    points = {
        {
            0.1,
            1.5,
        },
        {
            0.76,
            0.92,
        },
    },
})
hl.curve('easeInOutCirc', {
    type = 'bezier',
    points = { {
        0.85,
        0.0,
    }, {
        0.15,
        1.0,
    } },
})
hl.curve('easeOutCirc', {
    type = 'bezier',
    points = {
        {
            0.0,
            0.55,
        },
        {
            0.45,
            1.0,
        },
    },
})
hl.curve('easeOutExpo', {
    type = 'bezier',
    points = {
        {
            0.16,
            1.0,
        },
        {
            0.3,
            1.0,
        },
    },
})
hl.curve('linear', {
    type = 'bezier',
    points = {
        {
            0.0,
            0.0,
        },
        {
            1.0,
            1.0,
        },
    },
})
hl.curve('md2', {
    type = 'bezier',
    points = {
        {
            0.4,
            0.0,
        },
        {
            0.2,
            1.0,
        },
    },
})
hl.curve('md3_accel', {
    type = 'bezier',
    points = {
        {
            0.3,
            0.0,
        },
        {
            0.8,
            0.15,
        },
    },
})
hl.curve('md3_decel', {
    type = 'bezier',
    points = {
        {
            0.05,
            0.7,
        },
        {
            0.1,
            1.0,
        },
    },
})
hl.curve('md3_standard', {
    type = 'bezier',
    points = {
        {
            0.2,
            0.0,
        },
        {
            0.0,
            1.0,
        },
    },
})
hl.curve('myBezier', {
    type = 'bezier',
    points = {
        {
            0.05,
            0.9,
        },
        {
            0.1,
            1.05,
        },
    },
})
hl.curve('overshot', {
    type = 'bezier',
    points = {
        {
            0.05,
            0.9,
        },
        {
            0.1,
            1.1,
        },
    },
})
hl.curve('softAcDecel', {
    type = 'bezier',
    points = {
        {
            0.26,
            0.26,
        },
        {
            0.15,
            1.0,
        },
    },
})
hl.curve('menu_decel', {
    type = 'bezier',
    points = {
        {
            0.1,
            1.0,
        },
        {
            0.0,
            1.0,
        },
    },
})
hl.curve('menu_accel', {
    type = 'bezier',
    points = {
        {
            0.52,
            0.03,
        },
        {
            0.72,
            0.08,
        },
    },
})
hl.animation({
    leaf = 'border',
    enabled = true,
    speed = 10,
    bezier = 'default',
})
hl.animation({
    leaf = 'borderAngle',
    enabled = true,
    speed = 8,
    bezier = 'default',
})
hl.animation({
    leaf = 'windows',
    enabled = true,
    speed = 7,
    bezier = 'myBezier',
})
hl.animation({
    leaf = 'windowsOut',
    enabled = true,
    speed = 7,
    bezier = 'default',
    style = 'popin 80%',
})
hl.animation({
    leaf = 'fade',
    enabled = true,
    speed = 7,
    bezier = 'default',
})
hl.animation({
    leaf = 'layersIn',
    enabled = true,
    speed = 3,
    bezier = 'menu_decel',
    style = 'slide',
})
hl.animation({
    leaf = 'layersOut',
    enabled = true,
    speed = 1.6,
    bezier = 'menu_accel',
})
hl.animation({
    leaf = 'fadeLayersIn',
    enabled = true,
    speed = 2,
    bezier = 'menu_decel',
})
hl.animation({
    leaf = 'fadeLayersOut',
    enabled = true,
    speed = 0.5,
    bezier = 'menu_accel',
})
hl.animation({
    leaf = 'workspaces',
    enabled = true,
    speed = 7,
    bezier = 'menu_decel',
    style = 'slide',
})
--[[
hl.config({
    animations = {
        animation = 'border, 1, 10, default',
        animation = 'borderangle, 1, 8, default',
        animation = 'fade, 1, 7, default',
        animation = 'fadeLayersIn, 1, 2, menu_decel',
        animation = 'fadeLayersOut, 1, 0.5, menu_accel',
        animation = 'layersIn, 1, 3, menu_decel, slide',
        animation = 'layersOut, 1, 1.6, menu_accel',
        animation = 'windows, 1, 7, myBezier',
        animation = 'windowsOut, 1, 7, default, popin 80%',
        animation = 'workspaces, 1, 6, default',
        animation = 'workspaces, 1, 7, menu_decel, slide',
        bezier = 'crazyshot, 0.1, 1.5, 0.76, 0.92',  -- https://www.cssportal.com/css-cubic-bezier-generator/
        bezier = 'easeInOutCirc, 0.85, 0, 0.15, 1',  -- https://easings.net/
        bezier = 'easeOutCirc, 0, 0.55, 0.45, 1',
        bezier = 'easeOutExpo, 0.16, 1, 0.3, 1',
        bezier = 'linear, 0, 0, 1, 1',
        bezier = 'md2, 0.4, 0, 0.2, 1',
        bezier = 'md3_accel, 0.3, 0, 0.8, 0.15',
        bezier = 'md3_decel, 0.05, 0.7, 0.1, 1',
        bezier = 'md3_standard, 0.2, 0, 0, 1',
        bezier = 'myBezier, 0.05, 0.9, 0.1, 1.05',
        bezier = 'overshot, 0.05, 0.9, 0.1, 1.1',
        bezier = 'softAcDecel, 0.26, 0.26, 0.15, 1',
        enabled = true,
        workspace_wraparound = true,
    },
})
--]]
