#!/usr/bin/env lua
-- moz.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/hyprland/hypr/hypr.d/graphics/moz.conf
-- Qompass AI Hyprland Mozilla Graphics Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ############################################################
-- References: https://wiki.archlinux.org/title/Firefox#Wayland | https://github.com/openjdk/jdk/blob/master/src/java.desktop/unix/classes/sun/awt/X11/XWM.java
local bin = '~/.local/bin'
hl.env('_JAVA_AWT_WM_NONREPARENTING', '1')
hl.env('MOZ_DBUS_REMOTE', '1')
hl.env('MOZ_ENABLE_WAYLAND', '1')
hl.env('MOZ_WEBRENDER', '1')
hl.env('NO_AT_BRIDGE', '1')
hl.env('SWWW_TRANSITION', 'grow')
hl.env('SWWW_TRANSITION_FPS', '60')
hl.env('SWWW_TRANSITION_DURATION', '1')
hl.env('SWWW_UPDATE_HOOK', '$bin/on-swww-update')
