#!/usr/bin/env lua5.4
-- /qompassai/hyprland/hypr/hypr.d/graphics/mesa.lua
-- Qompass AI Hyprland Mesa Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
-- References: https://docs.mesa3d.org/envvars.html | https://docs.mesa3d.org/egl.html
-- hl.env(EGL_DRIVER, iris)
hl.env('EGL_PLATFORM', 'wayland')
hl.env('GST_VAAPI_ALL_DRIVERS', '1')
hl.env('LIBGL_ALWAYS_SOFTWARE', '0')
-- hl.env(LIBVA_DRIVER_NAME, nvidia) --leave unset to allow best guess
hl.env('LIBVA_DRIVERS_PATH', '/usr/lib/dri')
hl.env('LP_NUM_THREADS', '8')
hl.env('MESA_DISK_CACHE_DATABASE', '1')
hl.env('MESA_DISK_CACHE_SINGLE_FILE', '0')
hl.env('MESA_GLSL_CACHE_ENABLE', 'true')
hl.env('MESA_GLSL_CACHE_DIR', '/home/phaedrus/.cache/mesa_shader_cache')
hl.env('MESA_GLSL_CACHE_MAX_SIZE', '32G')
hl.env('MESA_SHADER_CACHE_MAX_SIZE', '32G')
-- hl.env(MESA_LOADER_DRIVER_OVERRIDE, iris)
hl.env('MESA_DISK_CACHE_MULTI_FILE', '1')
hl.env('MESA_NO_ERROR', '1')
hl.env('MESA_SHADER_CACHE_DIR', '/home/phaedrus/.cache/mesa_shader_cache_db')
hl.env('OCL_ICD_VENDORS', '/home/phaedrus/.config/opencl/vendors/rusticl.icd')
hl.env('OPENCV_OPENCL_DEVICE', 'NVIDIA CUDA:GPU:0')
hl.env('RUSTICL_DEVICE_TYPE', 'gpu')
hl.env('RUSTICL_ENABLE', 'iris,llvmpipe')
hl.env('RUSTICL_FEATURES', 'fp16,fp64,intel')
hl.env('RUSTICL_MAX_WORK_GROUPS', '128')
hl.env('VAAPI_COMPAT', '1')
hl.env('VAAPI_MPEG4_ENABLED', '1')
hl.env('VDPAU_DRIVER', 'va_gl')
hl.env('ZINK_BATCH_COUNT', '8')
hl.env('ZINK_SHADER_CACHE_DIR', '/home/phaedrus/.cache/zink_shader_cache_db')
