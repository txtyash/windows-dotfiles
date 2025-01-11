-- Use `:help` to learn about these options
-- TODO: Listchars
-- TODO: tabout
-- TODO: prserve folds throught sessions
vim.cmd("cd " .. vim.fn.getcwd())
vim.cmd("colorscheme gruvbox")
vim.opt.wrap = false
vim.opt.scrolloff = 9
vim.opt.ignorecase = true
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
vim.opt.smartcase = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.guifont = "Cascadia_Code:h10.5"
vim.opt.background = "light"

-- Window padding for GUI client Neovide
if vim.g.neovide then
	vim.g.neovide_padding_top = 3
	vim.g.neovide_padding_bottom = 3
	vim.g.neovide_padding_right = 3
	vim.g.neovide_padding_left = 3
end
