#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/rules/workspaces__rules.lua
-- Qompass AI Hyprland 0.55+ Workspace Lua Rules
-- Copyright (C) 2025 Qompass AI, All rights reserved
---------------------------------------------------------
---@source https://wiki.hypr.land/Configuring/Workspace-Rules/#rules | https://wiki.hypr.land/Configuring/Variables/#binds
hl.workspace_rule({
    workspace = 'w[tv1]s[false]',
    gaps_out = 0,
    gaps_in = 0,
})
hl.workspace_rule({
    workspace = 'f[1]s[false]',
    gaps_out = 0,
    gaps_in = 0,
})
hl.workspace_rule({
    workspace = 'special:special',
    gaps_out = 30,
})
