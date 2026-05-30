#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/core/version.lua
-- Qompass AI Hyprland 0.55+ Version Guard
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ---------------------------------------------------
local handle = io.popen('hyprctl version -j 2>/dev/null')
local raw = handle and handle:read('*a') or ''
if handle then
    handle:close()
end
local maj, min, pat = raw:match('"tag"%s*:%s*"v(%d+)%.(%d+)%.(%d+)"')
local M = {}
M.major = tonumber(maj) or 0
M.minor = tonumber(min) or 55
M.patch = tonumber(pat) or 0
M.string = M.major .. '.' .. M.minor .. '.' .. M.patch
if M.minor < 55 then
    hl.notification.create({
        text = 'Hyprland ' .. M.string .. ' detected — this config requires 0.55+',
        duration = 5000,
        icon = 3,
    })
end

return M
