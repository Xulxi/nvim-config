return {
	"stevearc/conform.nvim",
	opts = {
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
		formatters_by_ft = {
			go = { "gofumpt" },
			python = { "black" },
			lua = { "stylua" },
			rust = { "rustfmt" },
		},
	},
	event = "BufWritePre",
}
