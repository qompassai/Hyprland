#!/usr/bin/env lua5,4
---@version 5.4
-- /qompassai/hyprland/hypr/hypr.d/keybinds/workspace_bindings.lua
-- Qompass AI Hyprland 0.55+ Workspace Keybindings Lua Config
-- Copyright (C) 2025 Qompass AI, All rights reserved
-- ###################################################
local apps = require('hyprd.exec.apps')
local mainMod = 'SUPER'
for i = 1, 9 do
    hl.bind(
        mainMod .. ' + ' .. i,
        hl.dsp.focus({
            workspace = i,
        })
    )
    hl.bind(
        mainMod .. ' + SHIFT + ' .. i,
        hl.dsp.window.move({
            workspace = i,
        })
    )
end
hl.bind(
    'CTRL + ' .. mainMod .. ' + Right',
    hl.dsp.focus({
        workspace = 'r+1',
    })
)
hl.bind(
    'CTRL + ' .. mainMod .. ' + Left',
    hl.dsp.focus({
        workspace = 'r-1',
    })
)
hl.bind(
    'CTRL + ' .. mainMod .. ' + Up',
    hl.dsp.focus({
        workspace = 'r-5',
    })
)
hl.bind(
    'CTRL + ' .. mainMod .. ' + Down',
    hl.dsp.focus({
        workspace = 'r+5',
    })
)
--[[
hl.bind(
    'CTRL + ' .. mainMod .. ' + [',
    hl.dsp.focus({
        workspace = 'e-1',
    })
)
    --]]
--[[
   hl.bind(
    'CTRL + ' .. mainMod .. ' + ]',
    hl.dsp.focus({
        workspace = 'e+1',
    })
)
   --]]
--[[
hl.bind(
    mainMod .. ' + Page_Up',
    hl.dsp.focus({
        workspace = 'e-1',
    })
)
--]]
hl.bind(
    mainMod .. ' + Page_Down',
    hl.dsp.focus({
        workspace = 'e+1',
    })
)
hl.bind(
    'CTRL + ' .. mainMod .. ' + ALT + Right',
    hl.dsp.focus({
        workspace = 'm+1',
    })
)
hl.bind(
    'CTRL + ' .. mainMod .. ' + ALT + Left',
    hl.dsp.focus({
        workspace = 'm-1',
    })
)
hl.bind(
    mainMod .. ' + mouse_down',
    hl.dsp.focus({
        workspace = 'e+1',
    }),
    {
        mouse = true,
    }
)
hl.bind(
    mainMod .. ' + mouse_up',
    hl.dsp.focus({
        workspace = 'e-1',
    }),
    { mouse = true }
)
hl.bind(
    'CTRL + ' .. mainMod .. ' + SHIFT + Right',
    hl.dsp.window.move({
        workspace = 'r+1',
    })
)
hl.bind(
    'CTRL + ' .. mainMod .. ' + SHIFT + Left',
    hl.dsp.window.move({
        workspace = 'r-1',
    })
)
hl.bind(
    'CTRL + ' .. mainMod .. ' + SHIFT + Up',
    hl.dsp.window.move({
        workspace = 'special',
        silent = true,
    })
)
hl.bind(
    mainMod .. ' + ALT + mouse_down',
    hl.dsp.window.move({
        workspace = 'r-1',
    }),
    {
        mouse = true,
    }
)
hl.bind(
    mainMod .. ' + ALT + mouse_up',
    hl.dsp.window.move({
        workspace = 'r+1',
    }),
    {
        mouse = true,
    }
)
hl.bind(
    mainMod .. ' + SHIFT + mouse_down',
    hl.dsp.window.move({
        workspace = 'r-1',
    }),
    {
        mouse = true,
    }
)
hl.bind(
    mainMod .. ' + SHIFT + mouse_up',
    hl.dsp.window.move({
        workspace = 'r+1',
    }),
    {
        mouse = true,
    }
)
hl.bind(mainMod .. ' + S', hl.dsp.workspace.toggle_special('magic'))
hl.bind(
    mainMod .. ' + SHIFT + S',
    hl.dsp.window.move({
        workspace = 'special:magic',
    })
)
hl.bind(mainMod .. ' + TAB', hl.dsp.workspace.toggle_special())
hl.bind('CTRL + ' .. mainMod .. ' + period', hl.dsp.workspace.toggle_special())
hl.bind(mainMod .. ' + mouse:275', hl.dsp.workspace.toggle_special(), {
    mouse = true,
})
