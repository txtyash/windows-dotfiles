vim.api.nvim_create_autocmd("FileType", {
	pattern = "html",
	callback = function(ev)
		vim.lsp.start({
			name = "vscode-html-language-server.cmd",
			cmd = { "vscode-html-language-server.cmd", "--stdio" }, -- Note the '--stdio' argument
			root_dir = vim.fs.dirname(vim.fs.find({
				"package.json",
				".git",
				".html",
			}, { upward = true })[1]),
		})
	end,
})
