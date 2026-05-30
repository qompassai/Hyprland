#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/layouts/plugins.lua
-- Qompass AI Hyprland 0.55+ Layout Plugins Lua Config
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ###################################################
local plugins = {
    '/usr/lib/libhyprbars.so',
    '/usr/lib/libhyprbordersplusplus.so',
    '/usr/lib/libhyprcsgo.so',
    '/usr/lib/hypreasymotion.so',
    '/usr/lib/libhyprexpo.so',
    '/usr/lib/libhyprscrolling.so',
    -- "/usr/lib/libhyprtrails.so", -- optional
    '/usr/lib/libhyprwinwrap.so',
    '/usr/lib/libxtradispatchers.so',
}
hl.on('hyprland.start', function()
    for _, path in ipairs(plugins) do
        hl.exec_cmd('hyprctl plugin load ' .. path)
    end
end)
