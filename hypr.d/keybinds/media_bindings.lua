#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr/hypr.d/keybinds/media_bindings.lua
-- Qompass AI Hyprland 0.55+ Media Keybindings Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
local apps = require('hypr.d.exec.apps')
hl.bind('XF86AudioRaiseVolume', hl.dsp.exec_cmd(apps.volume_up), {
    locked = true,
    repeating = true,
})
hl.bind('XF86AudioLowerVolume', hl.dsp.exec_cmd(apps.vol_down), {
    locked = true,
    repeating = true,
})
hl.bind('XF86AudioMute', hl.dsp.exec_cmd(apps.vol_mute), {
    locked = true,
    repeating = true,
})
hl.bind('XF86AudioMicMute', hl.dsp.exec_cmd('wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle'), {
    locked = true,
})
hl.bind('XF86AudioPlay', hl.dsp.exec_cmd('playerctl play-pause'), {
    locked = true,
})
hl.bind('XF86AudioPause', hl.dsp.exec_cmd('playerctl play-pause'), {
    locked = true,
})
hl.bind('XF86AudioNext', hl.dsp.exec_cmd('playerctl next'), {
    locked = true,
})
hl.bind('XF86AudioPrev', hl.dsp.exec_cmd('playerctl previous'), {
    locked = true,
})
hl.bind('XF86AudioStop', hl.dsp.exec_cmd('playerctl stop'), {
    locked = true,
})
