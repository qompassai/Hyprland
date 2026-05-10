#!/usr/bin/env lua
-- nvidia.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/hyprland/hypr/hypr.d/graphics/nvidia.conf
-- Qompass AI Hyprland NVIDIA Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
-- References: https://download.nvidia.com/XFree86/Linux-x86_64/570.133.07/README/openglenvvariables.html
hl.env('CUDA_VISIBLE_DEVICES', '0,1,2,3,4')
-- env = DRI_PRIME                                 , 1 # individual offload
-- env = DRI_PRIME_RENDER_OFFLOAD                  , 1
hl.env('GBM_BACKEND', 'nvidia-drm')
hl.env('__GL_ALLOW_FLIPPING', '1')
hl.env('__GL_ALLOW_UNOFFICIAL_PROTOCOL', '1')
-- env = __GL_CACHE_MAX_SIZE,#Not setting lets it be unlimited
hl.env('__GL_GSYNC_ALLOWED', '1')
hl.env('__GL_MAX_FRAME_AGE', '3')
hl.env('__GL_MaxFramesAllowed', '1')
hl.env('__GL_SHADER_DISK_CACHE_PATH', '/home/phaedrus/.cache/nvidia/GLCache')
hl.env('__GL_SHADER_DISK_CACHE', '1')
hl.env('__GL_SHADER_DISK_CACHE_SKIP_CLEANUP', '1')
hl.env('__GL_SYNC_TO_VBLANK', '1')
-- env = __GL_THREADED_OPTIMIZATIONS              , 1 ###black screen crashout
hl.env('__GL_VRR_ALLOWED', '1')
hl.env('__GLX_VENDOR_LIBRARY_NAME', 'nvidia')
-- env = __NV_PRIME_RENDER_OFFLOAD_PROVIDER       , NVIDIA-G0 # browser crash
hl.env('NVD_BACKEND', 'direct')
hl.env('VK_LAYER_NV_optimus', '1')
hl.env('__GL_ALLOW_FXAA_USAGE', '1')
hl.env('__GL_FSAA_MODE', '5')
hl.env('__GL_LOG_MAX_ANISO', '4')
hl.env('__GL_ConformantBlitFramebufferScissor', '1')
hl.env('__GL_SHARPEN_ENABLE', '1')
hl.env('__GL_SHARPEN_VALUE', '50')
hl.env('__GL_SHARPEN_IGNORE_FILM_GRAIN', '17')
hl.env('__GL_YIELD', 'USLEEP')
hl.env('__GL_SORT_FBCONFIGS', '1')
hl.env('__GL_IGNORE_GLSL_EXT_REQS', '1')
hl.env('__GL_WRITE_TEXT_SECTION', '1')
hl.env('__GL_HEAP_ALLOC_LIMIT', '"20 MB"')
hl.env('__GL_SORT_FBCONFIGS', '1')
-- # env = __GL_SELINUX_BOOLEANS                  , allow_execmem=0,deny_execmem=1
hl.env('XLIB_SKIP_ARGB_VISUALS', '1')
-- env = __NV_GL_RAYTRACING_EXT,1
-- env = __GL_SHADER_CACHE_VERSION,12
-- env = NVIDIA_DEBUG,0x7f
-- env = __GL_DEBUG_QUIET,1

hl.config({
    opengl = {
        nvidia_anti_flicker = true,
    },
})
