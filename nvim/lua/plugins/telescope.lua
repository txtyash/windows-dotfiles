-- TODO: Map alt in tamper monkey to put focs on 'window'
return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local keymap = vim.keymap
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				layout_strategy = "vertical",
				layout_config = {
					vertical = {
						mirror = true,
						height = 100,
						prompt_position = "top",
					},
				},
				mappings = {
					n = {
						-- TODO: Preserve query between switches
						["<c-f>"] = function(buf)
							actions.close(buf)
							builtin.find_files()
						end,
						["<c-b>"] = function(buf)
							actions.close(buf)
							builtin.buffers()
						end,
					},
					i = {
						-- TODO: Preserve query between switches
						["<c-f>"] = function(buf)
							actions.close(buf)
							builtin.find_files()
						end,
						["<c-b>"] = function(buf)
							actions.close(buf)
							builtin.buffers()
						end,
					},
				},
				file_ignore_patterns = { "%.doc", "%.docx", "%.xls", "%.xlsx", "%.ppt", "%.pptx" },
				sorting_strategy = "ascending", -- Ensure the results are displayed starting from the top
				prompt_prefix = "🔍 ",
				selection_caret = "▶ ",
			},
		})

		keymap.set("n", "<c-p>", builtin.oldfiles, { desc = "Previously opened files" })
		keymap.set("n", "<c-n>", builtin.buffers, { desc = "Find buffers" })

		keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
		keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
		keymap.set("n", "<leader>fs", builtin.grep_string, { desc = "Grep string" })
	end,
}
