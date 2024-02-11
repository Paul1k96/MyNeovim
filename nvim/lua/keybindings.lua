require "helpers/globals"
require "helpers/keyboard"

g.mapleader = ' '

-- LSP
nm('K', '<cmd>lua vim.lsp.buf.hover()<CR>') 		            -- Hover for object
nm('gf', '<cmd>lua vim.lsp.buf.formatting()<CR>') 	            -- Format document
nm('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')	            -- Actions with code
nm('gR', '<cmd>lua vim.lsp.buf.rename()<CR>') 		            -- Rename object

-- Trouble
nm('<leader>x', '<cmd>TroubleToggle<CR>')			            -- Open menu with LSP problems
nm('gr', '<cmd>Trouble lsp_references<CR>')			            -- Referenses in LSP

-- Telescope
nm('<gd>', '<cmd>Telescope lsp_definitions<CR>')                -- Go to definitions
nm('to', '<cmd>Telescope oldfiles<CR>')                         -- Show recent files
nm('tg', '<cmd>Telescope git_files<CR>')                        -- Search through the output of git ls-files command
nm('tf', '<cmd>Telescope find_files<CR>')                       -- Search for a file in working directory
nm('tj', '<cmd>Telescope jumplist<CR>')                             -- Show jumplist (previous location)
nm('tb', '<cmd>Telescope git_branches<CR>')                     -- Show git branches
nm('tl', '<cmd>Telescope live_grep<CR>')                        -- Find string in current directory
nm('tu', '<cmd>Telescope buffers<CR>')                          -- Show all buffers
nm('tt', '<cmd>Telescope<CR>')                                  -- Show all commands
nm('tp', '<cmd>Telescope lsp_dynamic_workspace_symbols<CR>')    -- Search for dynamic symbols
