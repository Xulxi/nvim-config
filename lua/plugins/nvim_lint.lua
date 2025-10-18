return {
	"mfussenegger/nvim-lint",
	event = "BufReadPost",
	config = function()
		local lint = require("lint")

		-- Optional: autocmd to lint on save
		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
