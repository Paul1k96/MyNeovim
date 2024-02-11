--[[
    File: cmp.lua
    Description: CMP plugin configuration
    Soruce: https://github.com/hrsh7th/nvim-cmp
]]

local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup{
	snippet = {
		
		-- REQUIRED - yoyu must specify a snippet engine
		expand = function(args)
			require'luasnip'.lsp_expand(args.body) -- Luasnip expand
		end,
	},

	-- Keys that will interact in nvim-cmp
	mapping = {
		
		-- Call autocomplete menu
		['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
		['<CR>'] = cmp.config.disable,
		['<C-y>'] = cmp.mapping.confirm({ select = true }),

		-- Use <C-e> for interrupt autocomplete
		['C-e'] = cmp.mapping({
			i = cmp.mapping.abort(), -- interrupt autocomplete
			c = cmp.mapping.close(), -- close autocomplete
		}),
		['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
		['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
	},

	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },                  -- LSP
		{ name = 'nvim_lsp_signature_help' },   -- Help with introducing parameters to methods
        { name = 'nvim_lua' },                   -- Lua Neovim API
		{ name = 'luasnip' },                   -- Luasnip
		{ name = 'buffer' },                    -- Buffers
		{ name = 'path' },                      -- Paths
		{ name = 'emoji' },                     -- Emoji
	}, {}),
	formatting = {
		format = lspkind.cmp_format({
			mode = 'symbol', -- show only symbol annotation
			maxwidth = 50,   -- prevent the popup from showing more than provided characters (no more 50 char)
		})
	}
}

-- Add snippets from Friendly Snippets
require("luasnip/loaders/from_vscode").lazy_load()
