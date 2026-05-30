#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr/hypr.d/graphics/moz.lua
-- Qompass AI Hyprland 0.55+ Mozilla Graphics Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
--------------------------------------------------------
---@source https://wiki.archlinux.org/title/Firefox#Wayland | https://github.com/openjdk/jdk/blob/master/src/java.desktop/unix/classes/sun/awt/X11/XWM.java
--local bin = '~/.local/bin'
hl.env('_JAVA_AWT_WM_NONREPARENTING', '1')
hl.env('MOZ_DBUS_REMOTE', '1')
hl.env('MOZ_ENABLE_WAYLAND', '1')
hl.env('MOZ_WEBRENDER', '1')
hl.env('NO_AT_BRIDGE', '1')
hl.env('SWWW_TRANSITION', 'grow')
hl.env('SWWW_TRANSITION_FPS', '60')
hl.env('SWWW_TRANSITION_DURATION', '1')
hl.env('SWWW_UPDATE_HOOK', '$bin/on-swww-update')
