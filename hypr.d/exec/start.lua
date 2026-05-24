#!/usr/bin/env lua5.4
-- /qompassai/hyprland/hypr.d/exec/start.lua
-- Qompass AI Hyprland 0.55+ Executable Start Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- -----------------------------------------------------
hl.on('hyprland.start', function()
    hl.exec_cmd('hyprctl setcursor Bibata-Modern-Classic 24')
    hl.exec_cmd('systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP')
    hl.exec_cmd('dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland')
    hl.exec_cmd('systemctl --user start xdg-desktop-portal-hyprland')
    hl.exec_cmd(
        'mkdir -p $HOME/.cache/{mesa_shader_cache_db,nvidia/{GLCache,ComputeCache/{TensorRT,engine_cache}},'
            .. 'vulkan/{pipeline_cache,shader_cache},opencl-cache,tensorrt/{engine_cache,timing_cache},'
            .. 'UnrealEngine/{ShaderCache,BinaryCache},hyprland/{logs,tmp},'
            .. 'xdg-desktop-portal-wlr,xdg-desktop-portal}'
    )
    hl.exec_cmd(
        'mkdir -p $HOME/.local/share/{vulkan/{implicit_layer.d,config.d,settings.d,icd.d,explicit_layer.d,registry},'
            .. 'UnrealEngine/Common/{DerivedDataCache,ShaderCache},pocl/cuda}'
    )
    hl.exec_cmd(
        'chmod 755 $HOME/.cache/{mesa_shader_cache_db,nvidia,vulkan,UnrealEngine,opencl-cache,tensorrt,hyprland}'
    )
    hl.exec_cmd(
        'chmod 755 $HOME/.local/share/{vulkan,UnrealEngine,UnrealEngine/Common,'
            .. 'UnrealEngine/Common/DerivedDataCache,UnrealEngine/Common/ShaderCache,pocl}'
    )
    hl.exec_cmd('systemctl --user start pipewire')
    hl.exec_cmd('systemctl --user start wireplumber')
    hl.exec_cmd('systemctl --user start pipewire-pulse')
    hl.exec_cmd('wl-paste -p --watch wl-copy')
    hl.exec_cmd('wl-paste --type text --watch cliphist store')
    hl.exec_cmd('wl-paste --type image --watch cliphist store')
    hl.exec_cmd('pkill waybar; waybar')
    hl.exec_cmd('systemctl --user start mako.service')
    hl.exec_cmd('nwg-dock-hyprland -i 32 -w 5 -mb 10 -ml 10 -mr 10 -x -c \'wofi --show drun\' -lp start')
    hl.exec_cmd('systemctl start bluetooth')
    hl.exec_cmd('bluetoothctl agent on')
    hl.exec_cmd('bluetoothctl default-agent')
    hl.exec_cmd('blueman-applet')
    hl.exec_cmd('hyprpaper --config $HOME/.config/hypr/hypr.d/wallpaper/hyprpaper.conf')
    hl.exec_cmd('tmux setenv -g HYPRLAND_INSTANCE_SIGNATURE "$HYPRLAND_INSTANCE_SIGNATURE"')
    hl.exec_cmd('systemctl --user start hyprpolkitagent')
end)
