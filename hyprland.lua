#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hyprland.lua
-- Qompass AI Hyprland 0.55+ Config
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ####################################################
package.path = '/usr/share/lua/'
    .. _VERSION:sub(5)
    .. '/?.lua;'
    .. '/usr/share/lua/'
    .. _VERSION:sub(5)
    .. '/?/init.lua;'
    .. package.path
local config_dir = os.getenv('XDG_CONFIG_HOME') or (os.getenv('HOME') .. '/.config')
package.path = config_dir .. '/hypr/?.lua;' .. config_dir .. '/hypr/?/init.lua;' .. package.path
require('hypr.d/core')
--require('hypr.d.debug')
require('hypr.d/decorations')
require('hypr.d/exec')
require('hypr.d/experimental')
require('hypr.d/graphics')
require('hypr.d/input')
require('hypr.d/lib')
require('hypr.d/keybinds')
require('hypr.d/layouts')
require('hypr.d/media')
require('hypr.d/rules')
require('emoji')
