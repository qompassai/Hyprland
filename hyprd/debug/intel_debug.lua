#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/debug/intel_debug.lua
-- Qompass AI Hyprland 0.55+ Intel Debug Lua Config
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ###################################################
---@source: https://intel.github.io/llvm/EnvironmentVariables.html
hl.env('ANV_DEBUG', 'video-decode,video-encode')
--hl.env('SYCL_DEVICELIB_INHIBIT_NATIVE' ,)
hl.env('SYCL_DEVICELIB_NO_FALLBACK', '1')
hl.env('INTEL_ENABLE_OFFLOAD_ANNOTATIONS', '1')
hl.env('SYCL_CACHE_TRACE', '0x03')
hl.env('SYCL_JIT_COMPILER_DEBUG', 'sycl-spec-const-materializer')
hl.env('SYCL_PI_LEVEL_ZERO_COPY_BATCH_SIZE', '0')
hl.env('SYCL_PI_LEVEL_ZERO_DISABLE_USM_ALLOCATOR', '0')
hl.env('SYCL_PI_LEVEL_ZERO_FILTER_EVENT_WAIT_LIST', '0')
hl.env('SYCL_PI_LEVEL_ZERO_SINGLE_THREAD_MODE', '1')
hl.env('SYCL_PI_LEVEL_ZERO_USE_COMPUTE_ENGINE', '0')
hl.env('SYCL_PI_LEVEL_ZERO_USE_COPY_ENGINE', '1')
hl.env('SYCL_RT_WARNING_LEVEL', '2')
hl.env('SYCL_UR_TRACE', '-1')
hl.env('XPTI_TRACE_ENABLE', '1')
-- hl.env('XPTI_FRAMEWORK_DISPATCHER', '/opt/intel/oneapi/compiler/2025.0.1/lib/libxpti_framework.so')
-- hl.env('PTI_SUBSCRIBERS', ''/opt/intel/oneapi/compiler/2025.0.1/lib/libxpti_subscriber.so')
