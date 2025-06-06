return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ruby_lsp",
					-- "standardrb",
					"terraformls",
					"yamlls",
					"pyright",
					"zls",
					"gopls",
					"bashls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "williamboman/mason-lspconfig.nvim" },
		config = function()
			local lspconfig = require("lspconfig")

			lspconfig.zls.setup({})
			lspconfig.ruby_lsp.setup({
				init_options = {
					formatter = "standard",
					linters = { "standard" },
				},
			})
			-- lspconfig.standardrb.setup({})
			lspconfig.bashls.setup({})
			lspconfig.yamlls.setup({})
			lspconfig.terraformls.setup({})
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
						format = {
							defaultConfig = {
								indent_style = "tabs",
								indent_size = "4",
							},
							enable = true,
						},
					},
				},
			})
			lspconfig.pyright.setup({})
			lspconfig.gopls.setup({})
			lspconfig.zls.setup({})
		end,
	},
}
