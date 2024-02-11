--[[
    File: plugins.lua
    Description: This file contains a list of plugins to load in lazy.nvim
]]

require "helpers/globals"

return {
    -- Mason
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
		config = function()
			require "extensions.mason"
		end
    },
    -- CMP
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
		dependencies = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-emoji',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'hrsh7th/cmp-nvim-lua',
            'rafamadriz/friendly-snippets',
		},
		config = function()
			require "extensions.cmp"
		end
    },
    -- LSP_Trouble
    {
        "folke/trouble.nvim",
        lazy = true,
		dependencies = "kyazdani42/nvim-web-devicons",
		config = function()
			require "extensions.trouble"
		end
    },
    -- LSPKind
    {
        'onsails/lspkind.nvim',
        lazy = true,
		config = function()
			require "extensions.lspkind"
		end

    },
    -- Ray-x
    {
        "ray-x/go.nvim",
        dependencies = {
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        event = {"CmdlineEnter"},
        ft = {"go", "gomod"},
        config = function()
            require "extensions.ray-x"
        end
    },
    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"ahmedkhalf/project.nvim",
		},
		config = function()
			require "extensions.telescope"
		end
    },
    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            require "extensions.treesitter"
        end
    },
    -- Nvim-Autopairs
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    },
    -- Themes
    {
        "sainnhe/sonokai",
        lazy = true,
        config = function()
            require "extensions.colorscheme.sonokai"
        end
    },
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        config = function()
            require "extensions.colorscheme.kanagawa"
        end
    },
}
