local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.opt.number = true

-- ===== Leader keys =====
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- ===== Telescope =====
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)

-- ===== Snacks =====
map("n", "<leader>ss", function()
	require("snacks.scratch").open()
end, opts)

-- ===== Blink.cmp =====
-- Uses default <Tab>/<S-Tab> and <CR> for selection
-- Optional: add mappings if you want custom behavior

-- ===== LSP =====
map("n", "gd", vim.lsp.buf.definition, opts)
map("n", "gr", vim.lsp.buf.references, opts)
map("n", "K", vim.lsp.buf.hover, opts)
map("n", "<leader>rn", vim.lsp.buf.rename, opts)
map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
map("n", "<leader>fD", vim.lsp.buf.declaration, opts)
map("n", "<leader>i", vim.lsp.buf.implementation, opts)

-- ===== Conform & Lint =====
map("n", "<leader>cf", function()
	require("conform").format()
end, opts)
map("n", "<leader>cl", function()
	require("lint").try_lint()
end, opts)

-- ===== Nvim-Tree =====
map("n", "<leader>t", "<cmd>NvimTreeFocus<CR>", opts)

-- ===== General =====
-- Full quit
map("n", "<leader>q", "<cmd>wqa<CR>")
