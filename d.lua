#!/usr/bin/env lua

-- d.lua
-- Qompass AI - [ ]
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ----------------------------------------
hl.bind(
    'SUPER + F',
    hl.dsp.window.fullscreen({
        mode = 'fullscreen', -- or "maximized"
        action = 'toggle', -- toggle is the default, but explicit is clearer
    })
)
