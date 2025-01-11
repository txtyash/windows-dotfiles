vim.api.nvim_create_autocmd("FileType", {
	pattern = "typescript",
	callback = function(ev)
		vim.lsp.start({
			name = "typescript-language-server",
			cmd = { "typescript-language-server.cmd", "--stdio" },

			root_dir = vim.fs.dirname(vim.fs.find({
				"package.json",
				"tsconfig.json",
				".git",
			}, { upward = true })[1]),
		})
	end,
})
