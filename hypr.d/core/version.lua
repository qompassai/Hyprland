#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/core/version.lua
-- Qompass AI Hyprland 0.55+ Core Version Lua Config
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ----------------------------------------
if hl.version('HYPRLAND_V_0_53') then
    someValue = 0.53
end
if not hl.version('HYPRLAND_V_0_53') then
    someValue = 0.52
end
