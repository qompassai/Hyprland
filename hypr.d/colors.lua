#!/usr/bin/env lua5.4
---@version 5.4
-- colors.lua
-- Qompass AI - [ ]
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- ----------------------------------------
hl.config({
    general = {
        col = {
            active_border = 'rgba(44464f77)',
            inactive_border = 'rgba(1a1b2033)',
        },
    },
    misc = {
        background_color = 'rgba(121318FF)',
    },
})

hl.window_rule({
    match = { pin = 1 },
    border_color = 'rgba(afc6ffAA) rgba(afc6ff77)',
})
