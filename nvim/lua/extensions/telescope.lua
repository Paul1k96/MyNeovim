--[[ 
    File: telescope.lua
    Description: Telescope plugin configuration
    Source: https://github.com/nvim-telescope/telescope.nvim
]]

local telescope = require("telescope")
telescope.setup{
    pickers = {
        find_files = {
            hidden = true,
            find_command = {"rg", "--files", "--iglob", "!.git"}
        }
    }
}
