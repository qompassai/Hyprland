#!/usr/bin/env lua
-- /qompassai/hyprland/hypr.d/rules/window_rules.conf
-- Qompass AI Hyprland Window Rules
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
-- References: https://wiki.hypr.land/Configuring/Window-Rules/
hl.windowrule('max_size 16384 16384')
hl.windowrule('min_size 1 1')
hl.windowrule('float on')
hl.windowrule('fullscreen 0')
hl.windowrule('tile on')
hl.windowrule('float off')
hl.windowrule('opacity 0.7 0.7')
hl.windowrule('allows_input on, match:class ^(steam)$')
hl.windowrule('focus_on_activate on, match:class ^(steam)$')
hl.windowrule('focus_on_activate on, match:class ^(UnrealEditor)$')
hl.windowrule('border_color rgba(FFB2BCAA) rgba(FFB2BC77),      match:pin 1')
hl.windowrule(
    'border_size 0,                                   match:workspace w[tv1]s[false],             match:float 0'
)
hl.windowrule(
    'border_size 0,                                   match:workspace f[1]s[false],               match:float 0'
)
hl.windowrule(
    'rounding 0,                                      match:workspace w[tv1]s[false],             match:float 0'
)
hl.windowrule(
    'rounding 0,                                      match:workspace f[1]s[false],               match:float 0'
)
hl.windowrule('center on,                                       match:class ^(nm-connection-editor)$')
hl.windowrule('center on,                                       match:class ^(nwg-drawer)$')
hl.windowrule('center on,                                       match:class ^(pavucontrol)$')
hl.windowrule('center on,                                       match:class ^(org.pulseaudio.pavucontrol)$')
hl.windowrule('center on,                                       match:title ^(Open File)(.*)$')
hl.windowrule('center on,                                       match:title ^(Select a File)(.*)$')
hl.windowrule('center on,                                       match:title ^(Choose wallpaper)(.*)$')
hl.windowrule('center on,                                       match:title ^(Open Folder)(.*)$')
hl.windowrule('center on,                                       match:title ^(Save As)(.*)$')
hl.windowrule('center on,                                       match:title ^(Library)(.*)$')
hl.windowrule('center on,                                       match:title ^(File Upload)(.*)$')
hl.windowrule([[float on,                                        match:class ^(blueberry\.py)$]])
hl.windowrule('float on,                                        match:class ^(steam)$')
hl.windowrule('float on,                                        match:class ^(guifetch)$')
hl.windowrule(
    'float on,                                        match:class ^(kitty)$,            match:title ^(kitty)$'
)
hl.windowrule('float on,                                        match:class ^(nm-connection-editor)$')
hl.windowrule('float on,                                        match:class ^(nwg-drawer)$')
hl.windowrule('float on,                                        match:class ^(org.pulseaudio.pavucontrol)$')
hl.windowrule('float on,                                        match:class ^(pavucontrol)$')
hl.windowrule('float on,                                        match:title ^(Choose wallpaper)(.*)$')
hl.windowrule('float on,                                        match:title ^(File Upload)(.*)$')
hl.windowrule('float on,                                        match:title ^(HyprEmoji)$')
hl.windowrule('float on,                    match:title                       ^(Open File)(.*)$')
hl.windowrule('float on,                    match:title                       ^(Select a File)(.*)$')
hl.windowrule('float on,                    match:title                       ^(Open Folder)(.*)$')
hl.windowrule('float on,                    match:title                       ^(Save As)(.*)$')
hl.windowrule('float on,                    match:title                       ^(Library)(.*)$')
hl.windowrule(
    [[float on,                    match:title                       ^([Pp]icture[-\s]?[Ii]n[-\s]?[Pp]icture)(.*)$]]
)
hl.windowrule('idle_inhibit fullscreen,     match:class *')
hl.windowrule('immediate on,                match:class                       ^(steam_app)$')
hl.windowrule('immediate on,                match:class                       ^(steam_app_.*)$')
hl.windowrule('immediate on,                match:class                       ^(UnrealEditor)$')
hl.windowrule([[immediate on,                match:title                       .*\.exe]])
hl.windowrule(
    [[keep_aspect_ratio on,        match:title                       ^([Pp]icture[-\s]?[Ii]n[-\s]?[Pp]icture)(.*)$]]
)
hl.windowrule('match:class ^()$,            match:title ^()$,                 no_blur on')
hl.windowrule('match:class .*,              no_blur on')
hl.windowrule(
    [[match:class                  ^jetbrains-.*$,                   match:float 1,                                        match:title ^$|^\s$|^win\d+$,     no_initial_focus on]]
)
hl.windowrule('match:class                  ^(Zotero)$,                       float on')
hl.windowrule('match:class                  ^(Zotero)$,                       size (monitor_w*.45) (monitor_h*.45)')
hl.windowrule('min_size 1 1,                match:class ^(steam)$,            match:title ^()$')
hl.windowrule([[move 73% 72%,                match:title ^([Pp]icture[-\s]?[Ii]n[-\s]?[Pp]icture)(.*)$]])
hl.windowrule(
    'move                         (cursor_x-(window_w*0.5)) (cursor_y-(window_h*0.05)),         match:title ^(HyprEmoji)$'
)
hl.windowrule([[pin on,                      match:title ^([Pp]icture[-\s]?[Ii]n[-\s]?[Pp]icture)(.*)$]])
hl.windowrule('no_anim on,                  match:class ^(cs2)$')
hl.windowrule('no_blur on,                  match:xwayland 1')
hl.windowrule('no_blur on,                  match:class ^(UnrealEditor)$')
hl.windowrule('no_dim on,                   match:class ^(steam)$')
hl.windowrule('no_dim on,                   match:class ^(UnrealEditor)$')
hl.windowrule([[no_initial_focus on,         match:class ^UnrealEditor$,       match:title ^\w*$]])
hl.windowrule('no_shadow on,                match:float 0')
hl.windowrule('no_shadow on,                match:class ^(UnrealEditor)$')
hl.windowrule('opacity 1.0 1.0,             match:class ^(org.inkscape.Inkscape)$')
hl.windowrule('opacity 0.85,                match:class ^(foot)$')
hl.windowrule('opacity 1.0,                 match:class ^(steam(|_app_[0-9]+))$')
hl.windowrule('opacity 1.0,                 match:class ^(steamweb(|_app_[0-9]+))$')
hl.windowrule('opacity 1.0                  override 0.6 override 1.0 override,            match:class ^(steam)$')
hl.windowrule(
    'opacity 1.0 override 1.0     override 1.0 override,                         match:class ^(UnrealEditor)$'
)
hl.windowrule('opacity 0.0                  override 0.0 override,                         match:class ^(Vesktop)$')
-- windowrule = opacity 0.7 0.7,             match:class ^(org\.pwmt\.zathura)$
-- windowrule = tile on,                     match:class ^(org\.pwmt\.zathura)$
hl.windowrule('opaque on,                   match:class ^(.*audacity.*)$')
hl.windowrule(
    'opaque on,                   match:class ^(.*)$,                            match:title ^(.*)$, match:content popup'
)
hl.windowrule('opaque on,                   match:class ^(.*)$, match:title ^(.*)$, match:content dropdown_menu')
hl.windowrule('size 45% 45%,                match:class ^(nm-connection-editor)$')
hl.windowrule('size 45% 45%,                match:class ^(org.pulseaudio.pavucontrol)$')
hl.windowrule('size 45% 45%,                match:class ^(pavucontrol)$')
hl.windowrule([[size 25% 25%,                match:title ^([Pp]icture[-\s]?[Ii]n[-\s]?[Pp]icture)(.*)$]])
hl.windowrule('stay_focused on,             match:class ^(steam)$,              match:title ^()$')
hl.windowrule([[suppress_event activate,     match:class ^UnrealEditor$,         match:title ^\w*$]])
hl.windowrule([[tile on,                     match:class ^dev\.warp\.Warp$]])
hl.windowrule([[group unset,                 match:class ^UnrealEditor$,         match:title ^\w*$]])
