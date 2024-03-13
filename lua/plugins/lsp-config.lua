return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		-- Language server

		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls", -- lua
					"tsserver", -- javascript, typescript
					"intelephense", -- php
					"rust_analyzer", -- rust
					"gopls",
					"bashls",
					"sqlls", -- sql
					"cssls",
				    "dockerls",
					"graphql",
					"html",
					"jsonls",
					"jdtls",
					"marksman", -- markdown
					"mdx_analyzer", -- mdx
					"prismals", -- prisma
				}
			})
		end
	},
	{
		-- [1] this config is required to connect vim with the language server
		-- if you already config this, you can check the connection between
		-- NVIM and the language server by typing `:LspInfo`
		--
		"neovim/nvim-lspconfig",
		config = function()

			local lspconfig = require("lspconfig")

			-- [2] you can check what kind functionality that you can check via lsp
			-- by typing `:h vim.lsp.buf`. For example a simple usage of the 
			-- functionality is `hover()` function that we can take some information
			-- about the function `for example require()` that being use
			--
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { 'vim' }
						}
					}
				}
			})

			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			-- try to hover require function, then type shift+k. it will resulting a 
			-- pop-up about the require function 

			lspconfig.tsserver.setup({})
			lspconfig.rust_analyzer.setup({})
			lspconfig.intelephense.setup({})

			-- source for configuring nvim for go:
			-- https://www.youtube.com/watch?v=i04sSQjd-qo
			local util = require "lspconfig/util"
			lspconfig.gopls.setup({
				cmd = { "gopls" },
				filetypes = { "go", "gomod", "gowork", "gotmpl" },
				root_dir = util.root_pattern("go.work", "go.mod", ".git"),
			})
			lspconfig.cssls.setup({})
			lspconfig.bashls.setup({})
			lspconfig.dockerls.setup({})
			lspconfig.graphql.setup({})
			lspconfig.html.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.jdtls.setup({})
			lspconfig.marksman.setup({})
			lspconfig.mdx_analyzer.setup({})
			lspconfig.prismals.setup({})
			lspconfig.sqlls.setup({})
		end
	}

}
