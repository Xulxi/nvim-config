local lspconfig = vim.lsp.config

-- Python
lspconfig("pyright", {})

-- Lua
lspconfig("lua_ls", {
	settings = {
		Lua = {
			diagnostics = { globals = { "vim" } },
		},
	},
})

-- Go
lspconfig("gopls", {})

-- Rust
lspconfig("rust_analyzer", {})

-- Fish
lspconfig("fish", {})
