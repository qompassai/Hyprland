#!/usr/bin/env lua
-- /qompassai/hyprland/hypr/hypr.d/debug/gtk_debug.lua
-- Qompass AI Hypland 0.55+ Gnu Image Manipulation Program Toolkit (GTK) Debug Lua Config
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- #############################################################################
---@source: GTK4-  https://docs.gtk.org/gtk3/running.html | GTK3- https://docs.gtk.org/gtk4/running.html
hl.env('GTK_A11Y', 'accesskit,atspi,help,none,test')
hl.env('GDK_DEBUG', 'cursor,dnd,events,misc,nograbs,xinerama,xim')
hl.env('GDK_DEBUG', 'cursor,dnd,draw,events,misc,nogl,nograbs,pixmap,xinerama,xim')
hl.env(
    'GDK_DEBUG',
    'clipboard,color-mgmt,d3d12,dmabuf,dnd,events,eventloop,force-offload,frames,gl-debug,gl-prefer-gl,hdr,high-depth,input,linear,misc,no-portals,no-vsync,offload,opengl,portals,selection,session-mgmt,settings,vulkan'
)
hl.env('GSK_DEBUG', 'cache,cairo,fallback,full-redraw,geometry,occlusion,renderer,shaders,staging,verbose,vulkan')
hl.env(
    'GTK_DEBUG',
    'actions,baselines,builder,geometry,icontheme,interactive,keybindings,layout,misc,modules,no-css-cache,no-pixel-cache,pixel-cache,plugsocket,printing,resize,size-request,text,touchscreen,tree,updates'
)
hl.env(
    'GTK_DEBUG',
    'actions,accessibility,builder,builder-objects,builder-trace,constraints,css,geometry,icontheme,iconfallback,interactive,invert-text-dir,keybindings,layout,modules,no-css-cache,printing,size-request,snapshot,text,touch-ui,tree'
)
