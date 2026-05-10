#!/usr/bin/env lua
-- sdl.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/dotfiles/.config/hypr/hypr.d/graphics/sdl.conf
-- Qompass AI Simple Direct Media Layer (SDL) Graphics Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###########################################################
-- References: https://wiki.hypr.land/Configuring/Environment-variables/#toolkit-backend-variables |
-- https://wiki.libsdl.org/SDL3/EnvironmentVariables | https://github.com/libsdl-org/SDL
hl.env('SDL_AUDIO_DRIVER', 'pipewire')
hl.env('SDL_AUDIO_FREQUENCY', '0')
hl.env('SDL_DYNAMIC_API_ALL', '1')
hl.env('SDL3_DYNAMIC_API', '/usr/lib/libSDL3.so.0')
hl.env('SDL_IM_MODULE', 'fcitx5')
hl.env('SDL_VIDEODRIVER', 'wayland,x11')
hl.env('SDL_VIDEO_YUV_HWACCEL', '1')
hl.env('SDL_VIDEO_X11_DGAMOUSE', '0')
hl.env('SDL_FRAMEBUFFER_ACCELERATION', '2')
hl.env('SDL_INVALID_PARAM_CHECKS', '1')
hl.env('SDL_KEYCODE_OPTIONS', 'scancode')
hl.env('SDL_KMSDRM_ATOMIC', '1')
hl.env('SDL_KMSDRM_DEVICE_INDEX', '0')
hl.env('SDL_KMSDRM_REQUIRE_DRM_MASTER', '0')
hl.env('SDL_LOGGING', 'error')
hl.env('SDL_NO_SIGNAL_HANDLERS', '0')
hl.env('SDL_OPENGL_ES_DRIVER', 'default')
hl.env('SDL_OPENGL_LIBRARY', 'libGL.so.1')
hl.env('SDL_QUIT_ON_LAST_WINDOW_CLOSE', '1')
hl.env('SDL_RENDER_DRIVER', 'opengl')
hl.env('SDL_RENDER_GPU_LOW_POWER', '0')
hl.env('SDL_RENDER_LINE_METHOD', '1')
hl.env('SDL_RENDER_VSYNC', '1')
hl.env('SDL_SCREENSAVER_INHIBIT_ACTIVITY_NAME', 'SDL')
hl.env('SDL_THREAD_FORCE_REALTIME_TIME_CRITICAL', '0')
hl.env('SDL_THREAD_PRIORITY_POLICY', 'normal')
hl.env('SDL_TIMER_RESOLUTION', '1')
hl.env('SDL_VIDEO_ALLOW_SCREENSAVER', '0')
hl.env('SDL_VIDEO_DISPLAY_PRIORITY', '""')
hl.env('SDL_VIDEO_DOUBLE_BUFFER', '1')
hl.env('SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS', '0')
hl.env('SDL_VIDEO_OFFSCREEN_SAVE_FRAMES', '0')
hl.env('SDL_VIDEO_SYNC_WINDOW_OPERATIONS', '0')
hl.env('SDL_VIDEO_WAYLAND_ALLOW_LIBDECOR', '0')
hl.env('SDL_VIDEO_WAYLAND_MODE_EMULATION', '0')
hl.env('SDL_VIDEO_WAYLAND_MODE_SCALING', 'stretch')
hl.env('SDL_VIDEO_WAYLAND_PREFER_LIBDECOR', '0')
hl.env('SDL_VIDEO_WAYLAND_SCALE_TO_DISPLAY', '0')
hl.env('SDL_WAVE_CHUNK_LIMIT', '0')
hl.env('SDL_WAVE_FACT_CHUNK', 'strict')
hl.env('SDL_WAVE_RIFF_CHUNK_SIZE', 'strict')
hl.env('SDL_WAVE_TRUNCATION', 'strict')
