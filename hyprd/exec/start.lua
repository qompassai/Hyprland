#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/hyprland/hypr.d/exec/start.lua
-- Qompass AI Hyprland 0.55+ Executable Start Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- -----------------------------------------------------
local home = os.getenv('HOME')
local function sh(cmd)
    os.execute('bash -c ' .. string.format('%q', cmd))
end
local function scu(action, svc)
    hl.exec_cmd('systemctl --user ' .. action .. ' ' .. svc)
end
hl.on('hyprland.start', function()
    hl.exec_cmd('hyprctl setcursor Bibata-Modern-Classic 24')
    scu('import-environment', 'WAYLAND_DISPLAY XDG_CURRENT_DESKTOP')
    hl.exec_cmd('dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland')
    scu('start', 'xdg-desktop-portal-hyprland')
    sh(
        'mkdir -p $HOME/.cache/{mesa_shader_cache_db,nvidia/{GLCache,ComputeCache/{TensorRT,engine_cache}},vulkan/{pipeline_cache,shader_cache},opencl-cache,tensorrt/{engine_cache,timing_cache},UnrealEngine/{ShaderCache,BinaryCache},hyprland/{logs,tmp},xdg-desktop-portal-wlr,xdg-desktop-portal}'
    )
    sh(
        'mkdir -p $HOME/.local/share/{vulkan/{implicit_layer.d,config.d,settings.d,icd.d,explicit_layer.d,registry},UnrealEngine/Common/{DerivedDataCache,ShaderCache},pocl/cuda}'
    )
    sh('chmod 755 $HOME/.cache/{mesa_shader_cache_db,nvidia,vulkan,UnrealEngine,opencl-cache,tensorrt,hyprland}')
    sh(
        'chmod 755 $HOME/.local/share/{vulkan,UnrealEngine,UnrealEngine/Common,UnrealEngine/Common/DerivedDataCache,UnrealEngine/Common/ShaderCache,pocl}'
    )
    scu('start', 'pipewire')
    scu('start', 'wireplumber')
    scu('start', 'pipewire-pulse')
    hl.exec_cmd('wl-paste -p --watch wl-copy')
    hl.exec_cmd('wl-paste --type text --watch cliphist store')
    hl.exec_cmd('wl-paste --type image --watch cliphist store')
    sh('pkill waybar; waybar &')
    scu('start', 'mako.service')
    hl.exec_cmd('nwg-dock-hyprland -i 32 -w 5 -mb 10 -ml 10 -mr 10 -x -c "wofi --show drun" -lp start')
    hl.exec_cmd('systemctl start bluetooth')
    hl.exec_cmd('bluetoothctl agent on')
    hl.exec_cmd('bluetoothctl default-agent')
    hl.exec_cmd('blueman-applet')
    hl.exec_cmd('hyprpaper --config ' .. home .. '/.config/hypr/hyprd/wallpaper/hyprpaper.conf')
    sh('tmux setenv -g HYPRLAND_INSTANCE_SIGNATURE "$HYPRLAND_INSTANCE_SIGNATURE"')
    scu('start', 'hyprpolkitagent')
end)
