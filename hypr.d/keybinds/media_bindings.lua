#!/usr/bin/env lua
-- media_bindings.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/hyprland/hypr/hypr.d/keybinds/media_bindings.conf
-- Qompass AI Media Keybindings Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
hl.bind('XF86AudioRaiseVolume', 'exec', 'wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+', { flags = 'el' })
hl.bind('XF86AudioLowerVolume', 'exec', 'wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-', { flags = 'el' })
hl.bind('XF86AudioMute', 'exec', 'wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle', { flags = 'el' })
