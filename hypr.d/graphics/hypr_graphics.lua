#!/usr/bin/env lua
-- hypr_graphics.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/hyprland/hypr/hypr.d/graphics/hypr_graphics.conf
-- Qompass AI Hyprland Hypr Graphics Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ############################################################
hl.env('CLUTTER_BACKEND', 'wayland')
hl.env('DISCORD_ENABLE_WAYLAND', '1')
hl.env('EGL_PLATFORM', 'wayland')
-- env = __EGL_VENDOR_LIBRARY_FILENAMES             , ~/.config/glvnd/egl_vendor.d/50_mesa.jsonc:~/.config/glvnd/egl_vendor.d/10_nvidia.jsonc
-- env = EGL_PLATFORM_ANGLE_TYPE                    , 0x3450
hl.env('GST_PLUGIN_PATH', '/usr/lib/gstreamer-1.0')
hl.env('HYPRCURSOR_FORCE_SOFTWARE', '1')
hl.env('HYPRCURSOR_THEME', 'Bibata-Modern-Ice')
hl.env('HYPRCURSOR_SIZE', '24')
hl.env('MOZ_DBUS_REMOTE', '1')
hl.env('MOZ_ENABLE_WAYLAND', '1')
hl.env('MOZ_WEBRENDER', '1')
hl.env('NIXOS_OZONE_WL', '1')
hl.env('OZONE_PLATFORM', 'auto')
-- env = UE_WAYLAND_EGL_FORWARD                     , 1
hl.env('WEBKIT_FORCE_WAYLAND', '1')
hl.env('WEBVIEW_FORCE_WAYLAND', '1')
-- env = WLR_DRM_DEVICES                            , /dev/dri/card2:/dev/dri/card1
-- env = WLR_USE_LIBINPUT                           , 1
-- env = WLR_RENDERER                               , gles2
-- env = WLR_RENDERER_ALLOW_SOFTWARE                , 1
