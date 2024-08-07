return {
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"saadparwaiz1/cmp_luasnip",
		},
		opts = function()
			local cmp = require("cmp")
			require("luasnip.loaders.from_vscode").lazy_load()

			return {
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				sources = {
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "buffer" },
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
			}
		end,
		--[[
        keys = {
            { "<C-b>", function() require('cmp').mapping.scroll_docs(-4) end },
            { "<C-f>", function() require('cmp').mapping.scroll_docs(4) end },
            { "<C-Space>", function() require('cmp').mapping.complete() end },
            { "<C-e>", function() require('cmp').mapping.abort() end },
            { "<CR>", function() require('cmp').mapping.confirm({ select = true }) end },
        },
        ]]
		--
	},
}
