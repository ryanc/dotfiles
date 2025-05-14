return {
	"mfussenegger/nvim-lint",
	opts = {
		linters_by_ft = {
			-- ruby = { "rubocop", "standardrb" },
			ruby = { "standardrb" },
			go = { "golangcilint" },
		},
	},
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			-- ruby = { "rubocop", "standardrb" },
			ruby = { "standardrb" },
			go = { "golangcilint" },
        }

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
