#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr/hypr.d/rules/layer_rules.lua
-- Qompass AI Hyprland 0.55+ Layer Rules Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
---@source https://wiki.hypr.land/Configuring/Window-Rules/#layer-rules
local lib = require('hyprd/lib/init')
local lr = lib.lr
local lr_many = lib.lr_many
lr('.*', {
    xray = true,
})
lr_many({
    'anyrun',
    'gtk4-layer-shell',
    'hyprpicker',
    'noanim',
    'osk',
    'overview',
}, {
    no_anim = true,
})
lr_many({
    'app-launcher',
    'bar',
    'media',
    'osd',
    'progress',
    'quick-launcher',
    'right-panel',
    'settings',
    'user-panel',
}, {
    blur = true,
    ignore_alpha = 0.97,
})
lr_many({
    'bar[0-9]*',
    'barcorner.*',
    'cheatsheet[0-9]*',
    'dock[0-9]*',
    'osk[0-9]*',
    'overview[0-9]*',
    'sideleft[0-9]*',
    'sideright[0-9]*',
}, {
    blur = true,
    ignore_alpha = 0.6,
})
lr('gtk-layer-shell', {
    blur = true,
    ignore_alpha = 0,
})
lr('indicator.*', {
    blur = true,
    ignore_alpha = 0.6,
    no_anim = true,
})
lr('launcher', {
    blur = true,
    ignore_alpha = 0.5,
})
lr('logout_dialog', {
    blur = true,
})
lr('nwg-drawer', {
    blur = true,
})
lr('session[0-9]*', {
    blur = true,
})
lr('notifications', {
    blur = true,
    ignore_alpha = 0.7,
    animation = 'fade',
})
lr('wallpaper-switcher', {
    blur = true,
    ignore_alpha = 0.97,
    animation = 'fade',
})
lr('nwg-dock', {
    blur = true,
    animation = 'slide up',
})
lr('waybar', {
    blur = true,
    animation = 'slide top',
})
lr('hyprpaper', {
    animation = 'fade',
})
lr('selection', {
    animation = 'fade',
})
lr('user-panel:w', {
    animation = 'fade',
})
lr('sideleft.*', {
    animation = 'slide left',
})
lr('sideright.*', {
    animation = 'slide right',
})

lr('quickshell:.*', {
    blur = true,
    blur_popups = true,
    ignore_alpha = 0.79,
})
lr_many({
    'quickshell:actionCenter',
    'quickshell:lockWindowPusher',
    'quickshell:overview',
    'quickshell:polkit',
    'quickshell:regionSelector',
    'quickshell:screenshot',
    'quickshell:wNotificationCenter',
    'quickshell:wOnScreenDisplay',
    'quickshell:wStartMenu',
}, {
    no_anim = true,
})
lr('quickshell:overlay', {
    no_anim = true,
    ignore_alpha = 1,
})
lr('quickshell:session', {
    no_anim = true,
    ignore_alpha = 0,
})
lr('quickshell:wTaskView', {
    no_anim = true,
    ignore_alpha = 0,
})
lr('quickshell:bar', {
    animation = 'slide',
})
lr('quickshell:cheatsheet', {
    animation = 'slide bottom',
})
lr('quickshell:dock', {
    animation = 'slide bottom',
})
lr('quickshell:notificationPopup', {
    animation = 'fade',
})
lr('quickshell:osk', {
    animation = 'slide bottom',
    order = -1,
})
lr('quickshell:reloadPopup', {
    animation = 'slide',
})
lr('quickshell:screenCorners', {
    animation = 'popin 120%',
})
lr('quickshell:sidebarLeft', {
    animation = 'slide left',
})
lr('quickshell:sidebarRight', {
    animation = 'slide right',
})
lr('quickshell:verticalBar', {
    animation = 'slide',
})
lr('quickshell:wallpaperSelector', {
    animation = 'slide top',
})
lr('quickshell:popup', {
    xray = false,
    ignore_alpha = 1,
})
lr('quickshell:mediaControls', {
    ignore_alpha = 1,
})
