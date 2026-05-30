#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/Hyprland/hypr.d/lib/init.lua
-- Qompass AI Hyprland 0.55+ Lib Lua Config
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ----------------------------------------
local M = {}
M.HOME = os.getenv('HOME') ---@type string
M.workspaceGroupSize = M.workspaceGroupSize or 10 ---@type integer
---@param name string
---@return boolean
function M.is_file_exists(name)
    local f = io.open(name, 'r')
    if f then
        io.close(f)
        return true
    end
    return false
end
---@param path string
function M.create_if_not_exists(path) ---@return boolean
    if M.is_file_exists(path) then
        return false
    end
    local dir = path:match('(.+)/[^/]+$')
    if dir then
        os.execute('mkdir -p ' .. vim.fn.shellescape(dir))
    end
    local f = io.open(path, 'w')
    if f then
        f:write(
            '-- This file will not be overwritten across updates.\n'
                .. '-- The file name is for the sake of organization and does not matter.\n'
                .. '-- See the corresponding files in ~/.config/hypr/hypr.d for examples\n'
        )
        f:close()
    end
    return true
end

---@param i integer
---@return integer
function M.workspace_in_group(i)
    local curr = hl.get_active_workspace().id
    return math.floor((curr - 1) / M.workspaceGroupSize) * M.workspaceGroupSize + i
end

---@param ns string
---@param props table<string, any>
function M.lr(ns, props)
    local rule = { match = { namespace = ns } }
    for k, v in pairs(props) do
        rule[k] = v
    end
    hl.layer_rule(rule)
end

---@param namespaces string[]
---@param props table<string, any>
function M.lr_many(namespaces, props)
    for _, ns in ipairs(namespaces) do
        M.lr(ns, props)
    end
end

---@param name string
---@param props table<string, any>
function M.wr(name, props)
    local rule = { name = name }
    for k, v in pairs(props) do
        rule[k] = v
    end
    hl.window_rule(rule)
end

return M
