--[[
    File: ray_x.lua
    Description: ray-x(go) plugin configuration
    Soruce: https://github.com/ray-x/go.nvim
]]
require "helpers.globals"
require "helpers.keyboard"
local ray_x = require "go"

api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        require('go.format').goimport()
    end,
    group = api.nvim_create_augroup("GoImport", {}),
})

-- Shortkeys
nm('g<leader>s', '<cmd>GoFillStruct<CR>')-- Call GoFillStruct
nm('g<leader>e', '<cmd>GoIfErr<CR>')-- Call GoIfErr - add handle
nm('g<leader>c', '<cmd>GoCmt<CR>')-- Call GoCmt - add comments
nm('g<leader>t', '<cmd>GoAddTag<CR>')-- Call GoAddTag
nm('g<leader>l', '<cmd>GoLint<CR>')-- Call GoLint - run linter
nm('g<leader>i', '<cmd>GoImport<CR>')-- Call GoImport - fix all imports
nm('g<leader>f', '<cmd>GoFmt<CR>')-- Call GoFmt - format code
nm('g<leader>a', '<cmd>GoFillStruct<CR>')-- Call GoAddTest - add test for current func
nm('g<leader>r', '<cmd>GoGenReturn<CR>')-- Call GoGenReturn - create return inside func and generate output for calling func

ray_x.setup()
