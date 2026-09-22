#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/keybinds/binds.lua
-- Qompass AI Hyprland 0.55+ Binds Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################

local apps = require('hyprd.exec.apps')
local mainMod = 'SUPER'

-- Applications: Super + Alt ---------------------------------------------------

hl.bind(mainMod .. ' + ALT + A', hl.dsp.exec_cmd(apps.tele2))
hl.bind(mainMod .. ' + ALT + D', hl.dsp.exec_cmd(apps.dis2))
hl.bind(mainMod .. ' + ALT + F', hl.dsp.exec_cmd(apps.files))
hl.bind(mainMod .. ' + ALT + G', hl.dsp.exec_cmd(apps.term2))
hl.bind(mainMod .. ' + ALT + R', hl.dsp.exec_cmd(apps.record2))
hl.bind(mainMod .. ' + ALT + S', hl.dsp.exec_cmd(apps.vol_ctrl2))
hl.bind(mainMod .. ' + ALT + T', hl.dsp.exec_cmd(apps.bt2))
hl.bind(mainMod .. ' + ALT + V', hl.dsp.exec_cmd(apps.voice .. ' toggle'))
hl.bind(mainMod .. ' + ALT + W', hl.dsp.exec_cmd(apps.web2))
hl.bind(mainMod .. ' + ALT + Z', hl.dsp.exec_cmd(apps.cite))

hl.bind(mainMod .. ' + A', hl.dsp.exec_cmd(apps.term .. ' ' .. apps.tele))
hl.bind(mainMod .. ' + D', hl.dsp.exec_cmd(apps.dis))
hl.bind(mainMod .. ' + E', hl.dsp.exec_cmd(apps.emoji))
hl.bind(mainMod .. ' + G', hl.dsp.exec_cmd(apps.term))
hl.bind(mainMod .. ' + H', hl.dsp.exec_cmd(apps.screenshot))
hl.bind(mainMod .. ' + L', hl.dsp.exec_cmd(apps.lock))
hl.bind(mainMod .. ' + M', hl.dsp.exec_cmd('hyprmon --profile home'))
hl.bind(mainMod .. ' + R', hl.dsp.exec_cmd(apps.record))
hl.bind(mainMod .. ' + S', hl.dsp.exec_cmd(apps.term .. ' ' .. apps.vol_ctrl))
hl.bind(mainMod .. ' + SPACE', hl.dsp.exec_cmd(apps.launcher))
hl.bind(mainMod .. ' + T', hl.dsp.exec_cmd(apps.bt2))
hl.bind(mainMod .. ' + W', hl.dsp.exec_cmd(apps.web))
hl.bind(mainMod .. ' + Z', hl.dsp.exec_cmd(apps.pdf))

-- Clipboard and notifications -------------------------------------------------

hl.bind(
	mainMod .. ' + SHIFT + C',
	hl.dsp.exec_cmd('cliphist list | ' .. apps.launcher .. ' | cliphist decode | wl-copy')
)

hl.bind(mainMod .. ' + N', hl.dsp.exec_cmd(apps.notify_default))
hl.bind(mainMod .. ' + SHIFT + N', hl.dsp.exec_cmd(apps.notify_action_menu))

-- Window actions --------------------------------------------------------------

hl.bind(
	mainMod .. ' + F',
	hl.dsp.window.fullscreen({
		action = 'toggle',
		mode = 'fullscreen',
	})
)

hl.bind(
	mainMod .. ' + SHIFT + F',
	hl.dsp.window.float({
		action = 'toggle',
	})
)

hl.bind(mainMod .. ' + X', hl.dsp.window.close())

-- Layout ----------------------------------------------------------------------

hl.bind(mainMod .. ' + J', hl.dsp.layout('togglesplit'))

-- Workspace focus -------------------------------------------------------------

hl.bind(
	'CTRL + ' .. mainMod .. ' + ALT + Left',
	hl.dsp.focus({
		workspace = 'm-1',
	})
)

hl.bind(
	'CTRL + ' .. mainMod .. ' + ALT + Right',
	hl.dsp.focus({
		workspace = 'm+1',
	})
)

hl.bind(
	mainMod .. ' + CTRL + bracketleft',
	hl.dsp.focus({
		workspace = 'e-1',
	})
)

hl.bind(
	'CTRL + ' .. mainMod .. ' + Down',
	hl.dsp.focus({
		workspace = 'r+5',
	})
)

hl.bind(
	'CTRL + ' .. mainMod .. ' + Left',
	hl.dsp.focus({
		workspace = 'r-1',
	})
)

hl.bind(
	'CTRL + ' .. mainMod .. ' + Page_Down',
	hl.dsp.focus({
		workspace = 'r+1',
	})
)

hl.bind(
	'CTRL + ' .. mainMod .. ' + Page_Up',
	hl.dsp.focus({
		workspace = 'r-1',
	})
)

hl.bind(
	'CTRL + ' .. mainMod .. ' + Right',
	hl.dsp.focus({
		workspace = 'r+1',
	})
)

hl.bind(
	'CTRL + ' .. mainMod .. ' + Up',
	hl.dsp.focus({
		workspace = 'r-5',
	})
)

hl.bind(
	'CTRL + ' .. mainMod .. ' + mouse_down',
	hl.dsp.focus({
		workspace = 'r-1',
	}),
	{
		mouse = true,
	}
)

hl.bind(
	'CTRL + ' .. mainMod .. ' + mouse_up',
	hl.dsp.focus({
		workspace = 'r+1',
	}),
	{
		mouse = true,
	}
)

-- Move windows between workspaces ---------------------------------------------

hl.bind(
	'CTRL + ' .. mainMod .. ' + SHIFT + Left',
	hl.dsp.window.move({
		workspace = 'r-1',
	})
)

hl.bind(
	'CTRL + ' .. mainMod .. ' + SHIFT + Right',
	hl.dsp.window.move({
		workspace = 'r+1',
	})
)

hl.bind(
	'CTRL + ' .. mainMod .. ' + SHIFT + Up',
	hl.dsp.window.move({
		silent = true,
		workspace = 'special',
	})
)

-- Super + left mouse button: move a floating window.
hl.bind(mainMod .. ' + mouse:272', hl.dsp.window.drag(), {
	mouse = true,
})

-- Super + right mouse button: resize a floating window.
hl.bind(mainMod .. ' + mouse:273', hl.dsp.window.resize(), {
	mouse = true,
})

-- Super + Alt + scroll: adjust cursor zoom.
hl.bind(
	mainMod .. ' + ALT + mouse_down',
	hl.dsp.exec_cmd(
		[[hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '.float * 1.1')]]
	),
	{
		mouse = true,
	}
)

hl.bind(
	mainMod .. ' + ALT + mouse_up',
	hl.dsp.exec_cmd(
		[[hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '.float / 1.1')]]
	),
	{
		mouse = true,
	}
)

-- Keyboard resize mode --------------------------------------------------------

-- Super + Shift + R enters a temporary resize submap.
-- Use arrow keys to resize; Escape or Return exits the submap.
hl.bind(mainMod .. ' + SHIFT + R', hl.dsp.submap('resize'))

hl.define_submap('resize', function()
	hl.bind(
		'down',
		hl.dsp.window.resize({
			relative = true,
			x = 0,
			y = -30,
		}),
		{
			repeating = true,
		}
	)

	hl.bind('escape', hl.dsp.submap('reset'))

	hl.bind(
		'left',
		hl.dsp.window.resize({
			relative = true,
			x = -30,
			y = 0,
		}),
		{
			repeating = true,
		}
	)

	hl.bind('return', hl.dsp.submap('reset'))

	hl.bind(
		'right',
		hl.dsp.window.resize({
			relative = true,
			x = 30,
			y = 0,
		}),
		{
			repeating = true,
		}
	)

	hl.bind(
		'up',
		hl.dsp.window.resize({
			relative = true,
			x = 0,
			y = 30,
		}),
		{
			repeating = true,
		}
	)
end)

hl.bind('XF86AudioLowerVolume', hl.dsp.exec_cmd(apps.vol_down), {
	locked = true,
	repeating = true,
})

hl.bind('XF86AudioMute', hl.dsp.exec_cmd(apps.vol_mute), {
	locked = true,
	repeating = true,
})

hl.bind('XF86AudioRaiseVolume', hl.dsp.exec_cmd(apps.volume_up), {
	locked = true,
	repeating = true,
})

hl.bind('PRINT', hl.dsp.exec_cmd('hyprshot -m output'))
hl.bind(mainMod .. ' + PRINT', hl.dsp.exec_cmd('hyprshot -m window'))
hl.bind(mainMod .. ' + SHIFT + PRINT', hl.dsp.exec_cmd(apps.screenshot))

hl.config({
	binds = {
		allow_pin_fullscreen = true,
		allow_workspace_cycles = true,
		disable_keybind_grabbing = false,
		drag_threshold = 0,
		focus_preferred_method = 1,
		hide_special_on_workspace_change = false,
		ignore_group_lock = false,
		movefocus_cycles_fullscreen = true,
		movefocus_cycles_groupfirst = false,
		pass_mouse_when_bound = false,
		scroll_event_delay = 300,
		window_direction_monitor_fallback = true,
		workspace_back_and_forth = true,
		workspace_center_on = 0,
	},
})
