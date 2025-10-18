return {
	"folke/noice.nvim",
	dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
	opts = {
		cmdline = { enabled = true, view = "cmdline_popup" },
		messages = { enabled = true },
		popupmenu = { enabled = true, backend = "cmp" },
	},
	event = "VeryLazy",
}
