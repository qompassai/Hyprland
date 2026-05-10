#!/usr/bin/env lua
-- mesa_debug.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/hyprland/hypr.d/debug/mea_debug.conf
-- Qompass AI Hyprland Mesa Debug Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
-- Debug reference | https://docs.mesa3d.org/envvars.html, https://docs.mesa3d.org/shading.html#envvars

hl.env('LIBGL_NO_DRAWARRAYS', 'true')
hl.env('LIBGL_DEBUG', 'verbose')
hl.env('INTEL_DEBUG', 'ann,bat,blit,blorp,buf,bt,capture-all,color,cs,do32,draw_bkp,fall,fs,gs,heaps,hex,l3,mesh,no16,no32,no8,no-oaconfig,nocompact,nodualobj,nofc,noccs,optimizer,pc, perf,perf-symbol-names,perfmon,reemit,rt,rt_notrace,sf,shader-print,soft64,sparse,spill_fs,spill_vec4,stall,submit,sync,swsb-stall,task,tcs,tcs8,tes,tex,urb,vs,wm')
hl.env('INTEL_EXTENDED_METRICS', '1')
hl.env('MESA_DEBUG', 'silent,flush,incomplete_tex,incomplete_fba,context')
hl.env('MESA_GLSL', 'dump,source,log,cache_info,cache_fb,uniform,nopvert,nopfrag,useprog,errors')
hl.env('MESA_EGL_NO_DRI2', '1')
-- mkdir -p .cache/mesa-shader-capture | mkdir -p .cache/mesa-shader-capture | mkdir -p .cache/mesa-shader-replace
hl.env('MESA_SHADER_CACHE_SHOW_STATS', 'true')
hl.env('MESA_SHADER_CAPTURE_PATH', '/home/phaedrus/.cache/mesa-shader-capture')
hl.env('MESA_SHADER_DUMP_PATH', '/home/phaedrus/.cache/mesa-shader-dump')
hl.env('MESA_SHADER_READ_PATH', '/home/phaedrus/.cache/mesa-shader-replace')
hl.env('MESA_VERBOSE', '1')
-- FIXME(env): env = MESA_VK_DEVICE_SELECT_DEBUG
hl.env('MESA_VK_TRACE', 'rmv,rgp,rra,ctxroll')
hl.env('RUSTICL_DEBUG', 'allow_invalid_spirv,clc,nir,no_reuse_context,no_variants,perf,perfspam,program,sync,validate')
hl.env('ZINK_DEBUG', 'none')
hl.env('ZINK_DESCRIPTORS', 'lazy')
hl.env('ZINK_NO_CACHE', '0')
