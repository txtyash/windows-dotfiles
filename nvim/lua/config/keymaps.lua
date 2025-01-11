-- TODO: mapping to search word under cursor or selection in the current buffer
-- TODO: Map esc and ctrl-c to do nohl
-- TODO: Map o and O to not go into insert mode
-- BUG: If on buffer A and I open buffer B and close it using the leader-c binding, then buffer C is displayed. It should display the buffer B
-- TODO: Implement copying multiple things at one time and paste them one by one kj
-- TODO: map ctrl-c in normal mode in telescope pickers to quit teelescope
-- TODO: add mapping to insert white space without leaving insert mode
local map = vim.keymap.set
local helpers = require("config.helpers")

map({ "n", "i", "x" }, "<c-s>", "<cmd>update<cr>", { silent = true, desc = "Save buffer" })

map("n", "<leader>w", helpers.toggle_wrap, { silent = true, desc = "Toggle line wrap" })

-- FIX
map("n", "<leader>e", "<cmd>Explore<cr>", { noremap = true, silent = true, desc = "Toggle Netrw" })

-- FIX
map("n", "<leader>tb", helpers.toggle_background, { desc = "Toggle background dark/light" })

map("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })

map("n", "<leader>c", "<cmd>bp|bd#<cr>", { desc = "Close buffer but keep split", silent = true })

map("n", "<leader>k", helpers.hover, { desc = "LSP Hover", silent = true })

map("n", "<leader>i", "<cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "Goto implementation", silent = true })

map("n", "<leader>d", helpers.diagnostic_open, { desc = "Display diagnostics", silent = true })

-- FIX
map("t", "<C-v>", "<C-\\><C-n><C-v>", { silent = true, desc = "Visual block mode in terminal" })

map("v", "<leader>y", '"+ygv', { desc = "Copy to system clipboard" })
map("n", "<leader>y", '"+y', { desc = "Copy to system clipboard" })
map("v", "<leader>p", '"+p', { desc = "Paste from system clipboard, replace selection" })
map("n", "<leader>p", '"+p', { desc = "Paste from system clipboard" })
map("v", "<leader>P", '"+P', { desc = "Paste before selection from system clipboard" })
map("n", "<leader>P", '"+P', { desc = "Paste before cursor from system clipboard" })
map(
	"n",
	"<Esc>",
	helpers.clear_search_and_continue(vim.api.nvim_replace_termcodes("<Esc>", true, false, true)),
	{ noremap = true, silent = true }
)
map(
	"n",
	"<C-c>",
	helpers.clear_search_and_continue(vim.api.nvim_replace_termcodes("<C-c>", true, false, true)),
	{ noremap = true, silent = true }
)
