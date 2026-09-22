#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hyprland.lua
-- Qompass AI Hyprland 0.55+ Config
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ####################################################
local config_dir = os.getenv('XDG_CONFIG_HOME') or (os.getenv('HOME') .. '/.config')
package.path = config_dir .. '/hypr/?.lua;' .. config_dir .. '/hypr/?/init.lua;' .. package.path

require('hyprd.core')
--require('hypr.d.debug')
require('hyprd/decorations')
require('hyprd/exec')
require('hyprd/experimental')
--require('hyprd/graphics')
require('hyprd/input')
require('hyprd/lib')
require('hyprd/keybinds')
require('hyprd/layouts')
require('hyprd/media')
require('hyprd/rules')
--require('emoji')
