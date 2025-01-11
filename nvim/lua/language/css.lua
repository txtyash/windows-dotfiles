vim.api.nvim_create_autocmd("FileType", {
	pattern = "css",
	callback = function(ev)
		vim.lsp.start({
			name = "vscode-css-language-server",
			cmd = { "vscode-css-language-server.cmd" },

			root_dir = vim.fs.dirname(vim.fs.find({
				"package.json",
				".git",
			}, { upward = true })[1]),
		})
	end,
})
