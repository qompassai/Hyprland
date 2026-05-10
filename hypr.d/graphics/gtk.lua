#!/usr/bin/env lua
-- gtk.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- /qompassai/hyprland/hypr/hypr.d/graphics/gtk.conf
-- Qompass AI Hyprland GNU Image Manipulation Program Toolkit (GTK) Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
-- References: GTK4- https://docs.gtk.org/gtk4/running.html#environment-variables | GTK3- https://docs.gtk.org/gtk3/running.html#environment-variables | Hyprland: https://wiki.hypr.land/Configuring/Environment-variables/#aquamarine-environment-variables
hl.env('GDK_BACKEND', 'wayland,x11,*')
-- env = GDK_DISABLE                                              , dmabuf,egl,gl,gl-api,gles-api,glx,icon-nodes,vulkan,offload,threads,wgl #GTK4
-- env = GDK_GL_DISABLE                                           , base-instance,buffer-storage,debug,external-objects,external-objects-win32  #GTK3/4
hl.env('GDK_PIXBUF_MODULE_FILE', '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache')
hl.env('GDK_RENDERING', 'similar')
hl.env('GDK_SCALE', '1')
hl.env('GLFW_IM_MODULE', 'fcitx5')
-- env = GDK_WAYLAND_DISABLE                                      , primary-selection,xdg-output  #GTK3/4
hl.env('GSK_CACHE_TIMEOUT', '15')
-- env = GSK_GPU_DISABLE                                          , blit,clear,merge,gradients,mipmap,to-image,occlusion,repeat | all  #GTK4
hl.env('GSK_RENDERER', 'vulkan')
-- env = GTK3_MODULES                                             , #GTK3
hl.env('GTK_APPLICATION_PREFERS_NON_DEFAULT_THEME', '0')
hl.env('GTK_CSD', '1')
-- env = GTK_DATA_PREFIX                                          , unset #GTK2/3/4
-- env = GTK_EXE_PREFIX                                           , unset #GTK2/3/4
hl.env('GTK_IM_MODULE', 'fcitx5')
-- env = GTK_INSPECTOR_DISPLAY                                   , :0 #GTK4
-- env = GTK_INSPECTOR_RENDERER                                   , gl #GTK4
hl.env('GTK_MEDIA', 'gstreamer')
-- env = GTK_MODULES                                              , colorreload #GTK2/3~4
-- env = GTK_OVERLAY_SCROLLING                                    , 1  #GTK3
-- env = GTK_OVERRIDE_RESTORE_REASON                              , launch,pristine,recover,restore #GTK3/4
-- env = GTK_PATH                                                 , unset #GTK2/3/4
hl.env('GTK_THEME', 'Adwaita:dark')
hl.env('GTK_USE_PORTAL', '1')
hl.env('GTK_VIDEOSINK', 'waylandsink')
-- env = SYSPROF_TRACE_FD                                        , unset  #GTK4
hl.env('XDG_DATA_DIRS', '~/.local/share:/nix/var/nix/profiles/default/share:/usr/local/share:/usr/share')
-- ##

