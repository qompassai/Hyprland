#!/usr/bin/env lua5.4
-- /qompassai/hyprland/hypr/hypr.d/graphics/x11.lua
-- Qompass AI Hyprland 0.55+ X11 Compatibility Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
-- Reference:  https://wiki.hypr.land/Configuring/Variables/#xwayland
-- hl.env(__GLX_ALWAYS_INDIRECT, 0) --testing
hl.env('WLR_EGL_NO_X11', '1')
hl.env('WLR_X11_NO_ATOMS', '1')
hl.env('XCURSOR_SIZE', '32')
hl.env('XWAYLAND_NO_GLAMOR', '1')
hl.config({
    xwayland = {
        create_abstract_socket = false,
        enabled = true,
        force_zero_scaling = true,
        use_nearest_neighbor = true,
    },
})
