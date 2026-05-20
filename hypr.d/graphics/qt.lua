#!/usr/bin/env lua5.4
---@version 5.4
-- /qompassai/dotfiles/.config/hypr/hypr.d/graphics/qt.lua
-- Qompass AI Hyprland 0.55+ QT Graphics Lua Config
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ###########################################################
-- References: https://wiki.hypr.land/Configuring/Environment-variables/ | QT- https://doc.qt.io/qt-6/highdpi.html#environment-variable-reference
hl.env('QML_IMPORT_PATH', '/usr/lib/qt6/qml:~/.local/share/qml:~/.config/qml')
hl.env('QML2_IMPORT_PATH', '/usr/lib/qt6/qml:~/.local/share/qml:~/.config/qml')
hl.env('QT_AUTO_SCREEN_SCALE_FACTOR', '1')
hl.env('QT_ENABLE_HIGHDPI_SCALING', '1')
hl.env('QT_FONT_DPI', '144')
hl.env('QT_IM_MODULE', 'fcitx5')
hl.env('QT_QPA_PLATFORM', 'wayland;xcb')
hl.env('QT_QPA_PLATFORMTHEME', 'hyprqt6engine')
hl.env('QT_QUICK_CONTROLS_CONF', '~/.config/qt/qtquickcontrols2.conf')
hl.env('QT_QUICK_CONTROLS_FALLBACK_STYLE', 'Material')
hl.env('QT_QUICK_CONTROLS_HOVER_ENABLED', '1')
hl.env('QT_QUICK_CONTROLS_IMAGINE_PATH', 'imagine-assets')
hl.env('QT_QUICK_CONTROLS_IMAGINE_SMOOTH', '1')
hl.env('QT_QUICK_CONTROLS_MATERIAL_ACCENT', 'Cyan')
hl.env('QT_QUICK_CONTROLS_MATERIAL_BACKGROUND', 'Grey')
hl.env('QT_QUICK_CONTROLS_MATERIAL_FOREGROUND', 'Brown')
hl.env('QT_QUICK_CONTROLS_MATERIAL_PRIMARY', 'Teal')
hl.env('QT_QUICK_CONTROLS_MATERIAL_THEME', 'Dark')
hl.env('QT_QUICK_CONTROLS_MATERIAL_VARIANT', 'Dense')
hl.env('QT_QUICK_CONTROLS_STYLE', 'org.hyprland.style')
hl.env('QT_QUICK_CONTROLS_UNIVERSAL_ACCENT', 'Violet')
hl.env('QT_QUICK_CONTROLS_UNIVERSAL_BACKGROUND', '')
hl.env('QT_QUICK_CONTROLS_UNIVERSAL_FOREGROUND', '')
hl.env('QT_QUICK_CONTROLS_UNIVERSAL_THEME', 'Dark')
hl.env('QT_SCALE_FACTOR', '1')
hl.env('QT_SCALE_FACTOR_ROUNDING_POLICY', 'PassThrough')
-- hl.env(QT_SCREEN_SCALE_FACTORS, "DP-2=1;DP-1=1;eDP-2=1.5;HDMI-A-1=1")
-- hl.env(QT_USE_PHYSICAL_DPI, 1)
hl.env('QT_WAYLAND_DISABLE_WINDOWDECORATION', '1')
hl.env('QT_XCB_GL_INTEGRATION', 'xcb_egl')
