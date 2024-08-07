return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		build = ":TSUpdate",
		ensure_installed = {
			"ruby",
			"lua",
			"hcl",
			"terraform",
		},
		auto_install = true,
		highlight = {
			enable = true,
		},
		indent = {
			enable = false,
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
