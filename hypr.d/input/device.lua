#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/input/device.lua
-- Qompass AI Hyprland Input Device Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
---@source: https://wiki.hypr.land/Configuring/Variables/ Input Section

hl.config({
    input = {
        accel_profile = 'adaptive',
        force_no_accel = false,
        kb_layout = 'us',
        -- FIXME: kb_model =
        -- FIXME: kb_variant =
        kb_options = 'compose:ralt',
        kb_rules = 'evdev',
        numlock_by_default = false,
        resolve_binds_by_sym = false,
        repeat_rate = 25,
        repeat_delay = 600,
        sensitivity = 0.0,
        left_handed = false,
        scroll_method = 'on_button_down',
        scroll_button = 0,
        scroll_button_lock = false,
        scroll_factor = 1.0,
        natural_scroll = true,
        emulate_discrete_scroll = 1,
        mouse_refocus = true,
        follow_mouse = 1,
        follow_mouse_threshold = 0.0,
        focus_on_close = 0,
        float_switch_override_focus = 1,
        special_fallthrough = false,
        off_window_axis_events = 1,
        touchpad = {
            clickfinger_behavior = false,
            disable_while_typing = true,
            drag_3fg = 1,
            drag_lock = 0,
            flip_x = false,
            flip_y = false,
            middle_button_emulation = false,
            natural_scroll = false,
            scroll_factor = 1.0,
            -- FIXME: tap-and-drag = true
            tap_button_map = 'lrm',
            -- FIXME: tap-to-click = true
        },
        touchdevice = {
            enabled = true,
            -- FIXME: output =
            transform = -1,
        },
        tablet = {
            active_area_position = '0 0',
            active_area_size = '0 0',
            absolute_region_position = false,
            left_handed = false,
            -- FIXME: output =
            region_position = '0 0',
            region_size = '0 0',
            relative_input = false,
            transform = -1,
        },
        virtualkeyboard = {
            release_pressed_on_close = false,
            share_states = false,
        },
    },
})
