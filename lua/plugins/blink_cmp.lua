return {
	"Saghen/blink.cmp",
	opts = {
		fuzzy = {
			implementation = "lua",
		},
	},
	event = "InsertEnter",
	build = "cargo build --release",
}
