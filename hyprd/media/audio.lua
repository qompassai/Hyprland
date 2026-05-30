#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr/hypr.d/media/audio.lua
-- Qompass AI Hyprland 0.55+ Media Audio Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-----------------------------------------------------
hl.env('PIPEWIRE_ALLOWED_RATES', '44100,48000,88200,96000,176400,192000')
hl.env('PIPEWIRE_CLOCK_QUANTUM', '32')
hl.env('PIPEWIRE_CLOCK_RATE', '48000')
hl.env('PIPEWIRE_CPU_LOAD', '0.4')
hl.env('PIPEWIRE_DEBUG', '0')
hl.env('PIPEWIRE_LATENCY', '32/48000')
hl.env('PIPEWIRE_LINK_MAX', '16384')
hl.env('PIPEWIRE_RUNTIME_DIR', '/run/user/1000')
hl.env('PIPEWIRE_MAX_BUFFER', '4096')
hl.env('PIPEWIRE_MAX_QUANTUM', '256')
hl.env('PIPEWIRE_MIN_BUFFER', '32')
hl.env('PIPEWIRE_MIN_QUANTUM', '32')
hl.env('PIPEWIRE_PAGE_SIZE', '4096')
hl.env('PIPEWIRE_PROCESS_RT', '1')
hl.env('PIPEWIRE_QUALITY', '4')
hl.env('PIPEWIRE_QUANTUM', '32')
hl.env('PIPEWIRE_QUANTUM_LIMIT', '1024')
hl.env('PIPEWIRE_QUANTUM_LIMIT_MAX', '8192')
hl.env('PIPEWIRE_QUANTUM_WAIT', '0')
hl.env('PIPEWIRE_RESAMPLE_QUALITY', '10')
hl.env('PIPEWIRE_RT_PRIO', '88')
hl.env('PIPEWIRE_STREAM_PROPS', 'audio.format, F32LE')
hl.env('PULSE_LATENCY_MSEC', '2')
hl.env('SDL_AUDIODRIVER', 'pulse')
hl.env('SDL_AUDIO_FREQUENCY', '0')
