#!/usr/bin/env lua5.4
-- /qompassai/hyprland/hypr.d/exec/start.lua
-- Qompass AI Hyprland 0.55+ Executable Start Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- -----------------------------------------------------
hl.exec_once('systemctl --user start hyprpolkitagent &')
-- exec-once = /usr/lib/hyprpolkitagent/hyprpolkitagent
hl.exec_once('systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP')
-- exec-once = dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
hl.exec_once('dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland')
-- exec-once = dbus-update-activation-environment --systemd --all
hl.exec_once('/usr/lib/xdg-desktop-portal')
hl.exec_once('xdg-desktop-portal-hyprland')
hl.exec_once(
    'mkdir -p ~/.cache/{mesa_shader_cache_db,nvidia/{GLCache,ComputeCache/{TensorRT,engine_cache}},vulkan/{pipeline_cache,shader_cache},opencl-cache,tensorrt/{engine_cache,timing_cache},UnrealEngine/{ShaderCache,BinaryCache},hyprland/{logs,tmp},xdg-desktop-portal-wlr,xdg-desktop-portal}'
)
hl.exec_once(
    'mkdir -p ~/.local/share/{vulkan/{implicit_layer.d,config.d,settings.d,icd.d,explicit_layer.d,registry},UnrealEngine/Common/{DerivedDataCache,ShaderCache},pocl/cuda}'
)
hl.exec_once(
    'chmod 755 ~/.cache/{mesa_shader_cache_db,nvidia,vulkan,UnrealEngine,mesa_shader_cache/{ShaderCache,BinaryCache},opencl-cache,tensorrt,hyprland}'
)
hl.exec_once(
    'chmod 755 ~/.local/share/{vulkan,UnrealEngine,UnrealEngine/Common,UnrealEngine/Common/{DerivedDataCache,ShaderCache},pocl}'
)
hl.exec_once('systemctl --user start pipewire &')
hl.exec_once('systemctl --user start wireplumber &')
hl.exec_once('systemctl --user start pipewire-pulse &')
hl.exec_once('wl-paste -p --watch wl-copy')
hl.exec_once('wl-paste --type text --watch cliphist store')
hl.exec_once('wl-paste --type image --watch cliphist store')
hl.exec_once('hyprctl setcursor Bibata-Modern-Ice 24 &')
-- exec-once = pkill waybar; waybar
hl.exec_once('waybar &')
-- exec-once = makoctl &
hl.exec_once('systemctl --user start mako.service')
hl.exec_once('sleep 5 && $dock')
hl.exec_once('nwg-dock-hyprland -i 32 -w 5 -mb 10 -ml 10 -mr 10 -x -c "wofi --show drun" -lp start &')
hl.exec_once('bluetoothctl agent on &')
hl.exec_once('bluetoothctl default-agent &')
hl.exec_once('hyprpaper --config ~/.config/hypr/hypr.d/wallpaper/hyprpaper.conf')
hl.exec_once('/usr/lib/bluetooth/bluetoothd &')
hl.exec_once('blueman-applet &')
-- exec-once = export SWAYSOCK=$HYPRLAND_INSTANCE_SIGNATURE
hl.exec_once('tmux setenv -g HYPRLAND_INSTANCE_SIGNATURE "$HYPRLAND_INSTANCE_SIGNATURE" &')
-- exec-once = hyprpm reload -n
