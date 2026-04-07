return {
	{
		"numToStr/FTerm.nvim",
		config = function()
			local fterm = require("FTerm")

			fterm.setup({
				border = "rounded",
				dimensions = {
					height = 0.9,
					width = 0.9,
				},
			})

			-- Open terminal
			vim.keymap.set("n", "<leader>to", function()
				fterm.open()
			end, { desc = "Open FTerm" })

			-- Toggle terminal on
			vim.keymap.set("n", "<leader>tt", function()
				fterm.toggle()
			end, { desc = "Toggle FTerm" })

			-- Toggle terminal off
			vim.keymap.set(
				"t",
				"<leader>tt",
				[[<C-\><C-n><CMD>lua require("FTerm").toggle()<CR>]],
				{ desc = "Toggle FTerm (terminal mode)" }
			)

			-- Close terminal 
			vim.keymap.set(
				"t",
				"<leader>tc",
				[[<C-\><C-n><CMD>lua require("FTerm").close()<CR>]],
				{ desc = "Toggle FTerm (terminal mode)" }
			)
			-- Exit terminal 
			vim.keymap.set(
				"t",
				"<leader>tx",
				[[<C-\><C-n><CMD>lua require("FTerm").exit()<CR>]],
				{ desc = "Toggle FTerm (terminal mode)" }
			)
		end,
	},
}
