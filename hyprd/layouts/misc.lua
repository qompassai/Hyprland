#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hyprd/layouts/misc.lua
-- Qompass AI Hyprland 0.55+ Layouts Miscellaneous Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
---@source https://wiki.hypr.land/configuring/core/config-options/#misc
hl.config({
	misc = {
		allow_session_lock_restore = true,
		always_follow_on_dnd = true,
		animate_manual_resizes = false,
		animate_mouse_windowdragging = false,
		anr_missed_pings = 5,
		background_color = 'rgba(1D1011FF)',
		bell_sound = {},
		close_special_on_empty = true,
		col = {
			splash = 0xffffffff,
		},
		disable_autoreload = false,
		disable_hyprland_guiutils_check = false,
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		disable_scale_notification = false,
		disable_watchdog_warning = true,
		disable_xdg_env_checks = false,
		enable_anr_dialog = true,
		enable_swallow = true,
		exit_window_retains_fullscreen = 0,
		-- float_force_onscreen = 0,
		focus_on_activate = false,
		font_family = 'DaddyTimeMono Nerd Font Mono',
		force_default_wallpaper = 0,
		initial_workspace_tracking = 1,
		key_press_enables_dpms = true,
		layers_hog_keyboard_focus = true,
		lockdead_screen_delay = 1000,
		middle_click_paste = true,
		mouse_move_enables_dpms = true,
		mouse_move_focuses_monitor = true,
		name_vk_after_proc = true,
		--new_float_force_onscreen = 2,
		on_focus_under_fullscreen = 2,
		render_unfocused_fps = 15,
		session_lock_xray = false,
		size_limits_tiled = false,
		splash_font_family = 'DaddyTimeMono Nerd Font Mono',
		swallow_regex = '(foot|Foot|kitty|Kitty|alacritty|Alacritty|ghostty)',
		vrr = 1,
	},
})
