#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/input/input.lua
-- Qompass AI Hyprland 0.55+ Input Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
hl.config({
    input = {
        accel_profile = 'adaptive',
        emulate_discrete_scroll = 1,
        float_switch_override_focus = 1,
        focus_on_close = 0,
        follow_mouse = 1,
        follow_mouse_threshold = 0.0,
        force_no_accel = false,
        left_handed = false,
        -- FIXME: kb_file =
        kb_layout = 'us',
        -- FIXME: kb_model =
        kb_options = 'compose:ralt',
        kb_rules = 'evdev',
        -- FIXME: kb_variant =
        mouse_refocus = true,
        natural_scroll = true,
        numlock_by_default = false,
        off_window_axis_events = 1,
        repeat_delay = 600,
        repeat_rate = 25,
        resolve_binds_by_sym = false,
        scroll_button = 0,
        scroll_button_lock = false,
        scroll_factor = 1.0,
        scroll_method = 'on_button_down',
        -- FIXME: scroll_points =
        sensitivity = 0.0,
        special_fallthrough = true,
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
            -- FIXME: tap-and-drag  = true
            tap_button_map = 'lrm',
            -- FIXME: tap-to-click = true
        },
        touchdevice = {
            enabled = true,
            -- FIXME: output =
            transform = -1,
        },
        tablet = {
            absolute_region_position = false,
            active_area_position = '0 0',
            active_area_size = '0 0',
            left_handed = false,
            -- FIXME: output =
            region_position = '0 0',
            region_size = '0 0',
            relative_input = false,
            transform = -1,
        },
        virtualkeyboard = {
            release_pressed_on_close = false,
            share_states = true,
        },
    },
})
