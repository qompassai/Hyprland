#!/usr/bin/env lua
-- hyprlock.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/hyprland/hypr/hyprlock.conf
-- Qompass AI Hyprlock Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ####################################################
-- Reference: https://wiki.hypr.land/Hypr-Ecosystem/hyprlock/
local entry_background_color = 'rgba(41000311)'
local entry_border_color = 'rgba(896E6C55)'
local entry_color = 'rgba(FFDAD6FF)'
local font_family = 'DaddyTimeMono Nerd Font Mono'
local font_family_clock = 'DaddyTimeMono Nerd Font Mono'
local font_material_symbols = 'DaddyTimeMono Nerd Font Mono'
local text_color = 'rgba(FFDAD6FF)'
-- FIXME: input-field {
-- FIXME: bothlock_color                  =
-- FIXME: capslock_color                  =
check_color = 'rgba(204, 136, 34, 1.0)'
dots_center = true
dots_rounding = -1
dots_size = 0.25
dots_spacing = 0.3
-- FIXME: dots_text_format                =
fade_on_empty = true
fail_text = '<i>$FAIL <b>($ATTEMPTS)</b></i>'
fail_color = 'rgba(204, 34, 34, 1.0)'
font_color = '$entry_color'
halign = 'center'
hide_input_base_color = 'rgba(153, 170, 187)'
inner_color = '$entry_background_color'
invert_numlock = false
hl.monitor('', { resolution = 'preferred', position = 'auto', scale = 1.0 })
-- FIXME: numlock_color                   =
outer_color = '$entry_border_color'
outline_thickness = 4
placeholder_text = '<i>Input Password...</i>'
position = '0 0'
rounding = -1
size = 250
swap_font_color = false
valign = 'center'
zindex = 0
-- FIXME: }

hl.config({
    animations = {
        animation = 'fade, 1, 1.8, linear',
        bezier = 'linear, 1, 1, 0, 0',
        enabled = true,
    },
    auth = {
        -- FIXME: fingerprint:enabled             = true
        -- FIXME: fingerprint:ready_message       = (Scan fingerprint to unlock)
        -- FIXME: fingerprint:present_message     = Scanning fingerprint
        -- FIXME: pam:enabled                     = true
        -- FIXME: pam:module                      = hyprlock
    },
    background = {
        blur_size = 15,
        blur_passes = 4,
        color = 'rgba(17, 17, 17, 1.0)',
        contrast = 0.8916,
        crossfade_time = -1.0,
        -- FIXME: monitor                         =
        noise = 0.0117,
        path = '{{ SWWW_WALL }}',
        path = 'screenshot',
        -- FIXME: reload_cmd                      =
        reload_time = -1,
        vibrancy = 0.1696,
        vibrancy_darkness = 0.05,
        zindex = -1,
    },
    general = {
        fail_timeout = 2000,
        fractional_scaling = 2,
        hide_cursor = false,
        ignore_empty_input = false,
        immediate_render = false,
        screencopy_mode = 0,
        text_trim = true,
    },
    image = {
        border_color = 'rgba(221, 221, 221, 1.0)',
        border_size = 0,
        halign = 'center',
        -- FIXME: monitor                         =
        -- FIXME: path                            =
        position = '0 0',
        -- FIXME: reload_cmd                      =
        reload_time = -1,
        rounding = -1,
        rotate = 0,
        size = 150,
        valign = 'center',
        zindex = 0,
    },
    label = {
        color = '$text_color',
        font_size = 14,
        font_family = '$font_family',
        halign = 'left',
        -- FIXME: monitor                         =
        position = '30 -30',
        text = 'cmd[update:5000] ${XDG_CONFIG_HOME:-$HOME/.config}/hypr/hyprlock/status.sh',
        valign = 'top',
    },
    shape = {
        border_color = 'rgba(0, 207, 230, 1.0)',
        border_size = 0,
        color = 'rgba(17, 17, 17, 1.0)',
        halign = 'center',
        -- FIXME: monitor                         =
        position = '0 0',
        rounding = -1,
        size = '100 100',
        xray = false,
    },
})
