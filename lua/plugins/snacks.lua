return {
	"folke/snacks.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	opts = {
		notify = { enabled = true }, -- use snacks notifier
		dashboard = { enabled = true },
	},
	event = "VeryLazy",
}
