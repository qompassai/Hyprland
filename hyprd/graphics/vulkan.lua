#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr/hypr.d/graphics/vulkan.lua
-- Qompass AI Hyprland 0.55+ Vulkan Lua Config
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ###################################################
---@source https://wiki.archlinux.org/title/Hardware_video_acceleration#Configuring_Vulkan_Video
hl.env('DISABLE_LAYER_AMD_SWITCHABLE_GRAPHICS_1', '1')
--hl.env('GDK_VULKAN_DISABLE', dmabuf,incremental-present,sempahore-export,sempahore-import,swapchain-maintenance,ycbr) --GTK4
--hl.env('MESA_VK_WSI_DISPLAY', wayland)
hl.env('MESA_VK_WSI_LIST', 'wayland')
hl.env('QSG_RHI_BACKEND', 'vulkan')
hl.env('QT_VK_DISPLAY_INDEX', '0')
hl.env('QT_VK_MODE_INDEX', '1')
hl.env('QT_VK_PHYSICAL_DEVICE_INDEX', '0')
hl.env('SDL_VULKAN_DISPLAY', '1')
hl.env('SDL_VULKAN_LIBRARY', 'libvulkan.so.1')
hl.env('VK_ADD_LAYER_PATH', '/home/phaedrus/.config/vulkan/implicit_layer.d')
-- hl.env('VK_ICD_FILENAMES', '/home/pheadrus/.config/vulkan/icd.d/intel_icd.x86_64.jsonc:~/.config/vulkan/icd.d/nvidia_icd.jsonc')
hl.env('VK_KHR_PRESENT_WAIT_ENABLED', '1')
-- hl.env('__VK_LAYER_NV_optimus', 'NVIDIA_only')
-- hl.env('VK_LAYER_PATH', '/home/phaedrus/.config/vulkan/explicit_layer.d')
-- hl.env('VK_LOADER_DISABLE_LAYER_MESA', 1)
-- hl.env('VK_LOADER_LAYERS_DISABLE', 'VK_LAYER_MESA_overlay:VK_LAYER_MESA_device_select:VK_LAYER_LUNARG_api_dump:VK_LAYER_LUNARG_monitor')
hl.env('VK_PRESENT_MODE', 'mailbox')
hl.env('VK_WSI_MODE', 'wayland')
-- hl.env('MESA_VK_DEVICE_SELECT', 'pci:10de:2820')
-- hl.env('VK_INSTANCE_LAYERS', 'VK_LAYER_MESA_device_select')
-- hl.env('MANGOHUD', 1)
hl.env('ENABLE_LAYER_MESA_ANTI_LAG', 1)
-- hl.env('DXVK_NVAPI_VKREFLEX', 1)
-- hl.env('ENABLE_VKBASALT', 1)
hl.env('ENABLE_VK_LAYER_FLIMES', 1)
-- hl.env('ENABLE_GAMESCOPE_WSI', 1)
hl.env('ENABLE_PW_CAPTURE', 1)
-- hl.env('ENABLE_DEVICE_CHOOSER_LAYER', 1)
-- hl.env = ENABLE_PRIMUS_LAYER', 1
hl.env('OBS_VKCAPTURE', '1')
-- hl.env('ENABLE_VKPOST', 1)
-- hl.env('MESA_VK_IGNORE_CONFORMANCE_BIT',1)
-- hl.env('VK_EXT_ray_tracing_server', 1)
