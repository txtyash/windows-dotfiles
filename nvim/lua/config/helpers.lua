return {
	toggle_background = function()
		if vim.o.background == "dark" then
			vim.o.background = "light"
		else
			vim.o.background = "dark"
		end
	end,
	toggle_netrw = function()
		if vim.bo.filetype == "netrw" then
			vim.cmd("Rexplore")
		else
			vim.cmd("Explore")
		end
	end,
	toggle_wrap = function()
		vim.wo.wrap = not vim.wo.wrap
	end,
	hover = function()
		vim.lsp.buf.hover()
	end,
	goto_impl = function()
		vim.lsp.buf.implementation()
	end,
	diagnostic_open = function()
		vim.diagnostic.open_float()
	end,
	clear_search_and_continue = function(action)
		return function()
			vim.cmd("nohlsearch") -- Clear search highlight
			vim.api.nvim_feedkeys(action, "n", true) -- Perform the original action
		end
	end,
}
