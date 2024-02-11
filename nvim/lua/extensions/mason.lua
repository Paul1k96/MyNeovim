--[[ 
    File: mason.lua
    Description: Mason plugin configuration
    Source: https://github.com/williamboman/mason.nvim 
]]

local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup()
mason_lspconfig.setup({
	ensure_installed = {
		"lua_ls",								-- LSP for Lua
		"tsserver",								-- LSP for Typescript and Javascript
		"cssls",								-- LSP for CSS
		"pyright",								-- LSP for Python
		"gopls",								-- LSP for Golang
		"yamlls",								-- LSP for YAML
		"docker_compose_language_service",		-- LSP for docker-compose
		"dockerls",								-- LSP for Docker
		"bashls",								-- LSP for bash
        "sqlls",                                -- LSP for SQL
        "html",                                 -- LSP for HTML
        "jsonls",                               -- LSP for JSON
	}
});

mason_lspconfig.setup_handlers {
	function (server_name)
		lspconfig[server_name].setup {}
	end,
}
