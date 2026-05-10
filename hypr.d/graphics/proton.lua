#!/usr/bin/env lua
-- proton.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/hyprland/hypr/hypr.d/graphics/proton.conf
-- Qompass AI Proton Graphics Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
-- References: https://github.com/jp7677/dxvk-nvapi/wiki
hl.env('DXVK_ENABLE_NVAPI', '1')
-- env = DXVK_HDR ,                                                                          1
hl.env('DXVK_NVAPI_ALLOW_OTHER_DRIVERS', '1')
-- FIXME(env): env = DXVK_NVAPI_DISABLE_ENTRYPOINTS,
-- env = DXVK_NVAPI_DRIVER_VERSION ,                                                         58010
-- FIXME(env): env = DXVK_NVAPI_DRS_SETTINGS ,
hl.env('DXVK_NVAPI_DRS_NGX_DLSS_FG_OVERRIDE', 'on')
hl.env('DXVK_NVAPI_DRS_NGX_DLSS_RR_OVERRIDE_RENDER_PRESET_SELECTION', 'render_preset_latest')
hl.env('DXVK_NVAPI_DRS_NGX_DLSS_SR_OVERRIDE_RENDER_PRESET_SELECTION', 'render_preset_latest')
hl.env('DXVK_NVAPI_DRS_NGX_DLSS_SR_OVERRIDE', 'on')
hl.env('DXVK_NVAPI_DRS_NGX_DLSS_SR_MODE', 'quality')
hl.env('DXVK_NVAPI_DRS_NGX_DLSS_RR_OVERRIDE', 'on')
hl.env('DXVK_NVAPI_DRS_NGX_DLSS_RR_MODE', 'quality')
hl.env('DXVK_NVAPI_GPU_ARCH', 'AD100')
hl.env('DXVK_NVAPI_LOG_PATH', '/home/phaedrus/.local/share/dxvk-nvapi')
hl.env('DXVK_NVAPI_VKREFLEX', '1')
hl.env('DXVK_NVAPI_VKREFLEX_ALLOW_FALLBACK_TO_OOB_FRAME_ID', '1')
hl.env('DXVK_NVAPI_VKREFLEX_ALLOW_FALLBACK_TO_PRESENT_FRAME_ID', '1')
hl.env('DXVK_NVAPI_VKREFLEX_ALLOW_FALLBACK_TO_SIMULATION_FRAME_ID', '1')
hl.env('DXVK_NVAPI_VKREFLEX_INJECT_PRESENT_FRAME_IDS', '0')
hl.env('DXVK_NVAPI_VKREFLEX_INJECT_SUBMIT_FRAME_IDS', '0')
hl.env('DXVK_NVAPI_VKREFLEX_LAYER_LOG_LEVEL', 'trace')
-- env = ENABLE_HDR_WSI ,                                                                    1
-- env = ENABLE_VKBASALT ,                                                                   1
-- env = PROTON_ENABLE_HDR ,                                                                 1
hl.env('PROTON_ENABLE_NGX_UPDATER', '1')
hl.env('PROTON_ENABLE_NVAPI', '1')
hl.env('PROTON_ENABLE_WAYLAND', '1')
hl.env('PROTON_FORCE_LARGE_ADDRESS_AWARE', '1')
hl.env('PROTON_NO_ESYNC', '1')
hl.env('PROTON_USE_NTDLL_HAVE_THREAD', '1')
hl.env('PROTON_USE_WAYLAND', '1')
hl.env('DXVK_NVAPI_DRS_NGX_DLSS_OVERRIDE_OPTIMAL_SETTINGS', 'perf_to_9x')
hl.env('DXVK_NVAPI_ENABLE', '0')
hl.env('DXVK_NVAPI_VKREFLEX', '0')
