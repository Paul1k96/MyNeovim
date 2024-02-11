--[[
    File: treesitter.lua
    Description: Treesitter plugin configuration
    Source: https://github.com/nvim-treesitter/nvim-treesitter
]]
require'nvim-treesitter.configs'.setup{
    -- Needed parsers
    ensure_installed = {
        "lua",
        "sql",
        "bash",
        "gomod",
        "gosum",
        "gowork",
        "css",
        "html",
        "json",
        "proto",
        "dockerfile",
        "python",
        "go",
    },

    -- Install all parsers synchronuously
    sync_install = false,

    -- Highlights
    highlight = {
        -- Enabling hilight for all files
        enable = true,
        disable = {},
    },

    indent = {
        -- Disabling indentation for all files
        enable = false,
        disable = {},
    },
}
