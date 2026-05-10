#!/usr/bin/env lua5.4
---@version 5.4
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/hyprland/hypr/hypridle.lua
-- Qompass AI Hyprland HyprIdle Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
---@source https://wiki.hypr.land/Hypr-Ecosystem/hypridle/
local lock = 'pidof hyprlock || hyprlock'
local dispatch = 'hyprctl dispatch'
local suspend = 'systemctl suspend'
hl.config({
    general = {
        lock_cmd = '$lock',
        before_sleep_cmd = 'loginctl lock-session',
        after_sleep_cmd = '$dispatch dpms on',
    },
    listener = {
        timeout = 1800,
        --on-timeout        = $suspend
    },
})
