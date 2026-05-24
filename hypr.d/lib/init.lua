#!/usr/bin/env lua5.4
---@version 5.4
-- init.lua
-- Qompass AI Hyprland 0.55+ Lib Lua Config
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ----------------------------------------
HOME = os.getenv('HOME') ---@type string
workspaceGroupSize = workspaceGroupSize or 10 ---@type integer
---@param name string
function is_file_exists(name) ---@return boolean
        local f = io.open(name, 'r')
        if f ~= nil then
                io.close(f)
                return true
        else
                return false
        end
end

---@param path string
function create_if_not_exists(path) ---@return boolean
        if not is_file_exists(path) then
                os.execute('mkdir -p "$(dirname "' .. path .. '")"')
                os.execute(
                        'echo \'-- This file will not be overwritten across updates.\n-- The file name is for the sake of organization and does not matter\n-- See the corresponding files in ~/.config/hypr/hypr.d for examples\' > "'
                        .. path
                        .. '"'
                )
                return true
        end
        return false
end

---@param i integer
---@return integer
function workspace_in_group(i)
        local curr = hl.get_active_workspace().id
        local newVal = math.floor((curr - 1) / workspaceGroupSize) * workspaceGroupSize + i
        return newVal
end
