#!/usr/bin/env lua

-- test.lua
-- Qompass AI - [ ]
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ----------------------------------------
local M = {}

---@param ns string
---@param props table<string, boolean|string|number>
local function lr(ns, props)
    ---@type table<string, any>
    local rule = { match = { namespace = ns } }
    for k, v in pairs(props) do
        rule[k] = v
    end
    hl.layer_rule(rule)
end

---@param namespaces string[]
---@param props table<string, boolean|string|number>
local function lr_many(namespaces, props)
    for _, ns in ipairs(namespaces) do
        lr(ns, props)
    end
end
-- -- Common namespace lists ----------------------------------------------------
local no_anim_ns = {
    "anyrun", "hyprpicker", "indicator.*", "noanim", "osk",
    "overview", "selection", "walker", "gtk4-layer-shell",
}
local blur_ns = {
    "app-launcher", "bar", "bar[0-9]*", "barcorner.*", "cheatsheet[0-9]*",
    "dock[0-9]*", "gtk-layer-shell", "indicator.*", "launcher", "logout_dialog",
    "media", "notifications", "nwg-dock", "nwg-drawer", "osd", "osk[0-9]*",
    "overview[0-9]*", "progress", "right-panel", "quick-launcher",
    "session[0-9]*", "settings", "sideright[0-9]*", "sideleft[0-9]*",
    "user-panel", "wallpaper-switcher", "waybar",
}
local ignore_alpha_map = {
    ["app-launcher"]       = 0.97,
    ["bar"]                = 0.97,
    ["bar[0-9]*"]          = 0.6,
    ["barcorner.*"]        = 0.6,
    ["cheatsheet[0-9]*"]   = 0.6,
    ["dock[0-9]*"]         = 0.6,
    ["indicator.*"]        = 0.6,
    ["launcher"]           = 0.5,
    ["media"]              = 0.97,
    ["notifications"]      = 0.69,
    ["osd"]                = 0.97,
    ["osk[0-9]*"]          = 0.6,
    ["overview[0-9]*"]     = 0.6,
    ["right-panel"]        = 0.97,
    ["sideright[0-9]*"]    = 0.6,
    ["sideleft[0-9]*"]     = 0.6,
    ["progress"]           = 0.97,
    ["quick-launcher"]     = 0.97,
    ["settings"]           = 0.97,
    ["user-panel"]         = 0.97,
    ["wallpaper-switcher"] = 0.97,
    ["gtk-layer-shell"]    = 0,
}

-- -- xray ------------------------------------------------─�
lr(".*", { xray = true })

-- -- no_anim ------------------------------------------------------------------
lr_many(no_anim_ns, { no_anim = true })

-- -- animations --------------------------------------------------------------─
local anim_map = {
    ["hyprpaper"]          = "fade",
    ["notifications"]      = "fade",
    ["selection"]          = "fade",
    ["user-panel:w"]       = "fade",
    ["wallpaper-switcher"] = "fade",
    ["sideleft.*"]         = "slide left",
    ["sideright.*"]        = "slide right",
    ["waybar"]             = "slide top",
    ["nwg-dock"]           = "slide up",
}
for ns, anim in pairs(anim_map) do
    lr(ns, { animation = anim })
end

-- -- blur --------------------------------------------------------------------─
lr_many(blur_ns, { blur = true })

-- -- ignore_alpha ------------------------------------------------------------─
for ns, alpha in pairs(ignore_alpha_map) do
    lr(ns, { ignore_alpha = alpha })
end

-- -- quickshell --------------------------------------------------------------─
-- Base rules for all quickshell layers
lr("quickshell:.*", { blur_popups = true, blur = true, ignore_alpha = 0.79 })

-- quickshell animation map
local qs_anim = {
    ["quickshell:bar"]               = "slide",
    ["quickshell:cheatsheet"]        = "slide bottom",
    ["quickshell:dock"]              = "slide bottom",
    ["quickshell:screenCorners"]     = "popin 120%",
    ["quickshell:notificationPopup"] = "fade",
    ["quickshell:osk"]               = "slide bottom",
    ["quickshell:reloadPopup"]       = "slide",
    ["quickshell:sidebarRight"]      = "slide right",
    ["quickshell:sidebarLeft"]       = "slide left",
    ["quickshell:verticalBar"]       = "slide",
    ["quickshell:wallpaperSelector"] = "slide top",
}
for ns, anim in pairs(qs_anim) do
    lr(ns, { animation = anim })
end

-- quickshell no_anim list
lr_many({
    "quickshell:actionCenter", "quickshell:lockWindowPusher",
    "quickshell:overlay", "quickshell:overview",
    "quickshell:polkit", "quickshell:regionSelector",
    "quickshell:screenshot", "quickshell:session",
    "quickshell:wNotificationCenter", "quickshell:wOnScreenDisplay",
    "quickshell:wStartMenu", "quickshell:wTaskView",
}, { no_anim = true })

-- quickshell ignore_alpha overrides
local qs_alpha = {
    ["quickshell:overlay"]       = 1,
    ["quickshell:popup"]         = 1,
    ["quickshell:mediaControls"] = 1,
    ["quickshell:session"]       = 0,
    ["quickshell:wTaskView"]     = 0,
}
for ns, alpha in pairs(qs_alpha) do
    lr(ns, { ignore_alpha = alpha })
end

-- quickshell misc
lr("quickshell:popup", { xray = false })
lr("quickshell:session", { blur = true })
lr("quickshell:osk", { order = -1 })

return M
