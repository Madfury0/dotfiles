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

			-- Close terminal
			vim.keymap.set("n", "<leader>tc", function()
				fterm.close()
			end, { desc = "Close FTerm" })

			-- Exit terminal (force close)
			vim.keymap.set("n", "<leader>tx", function()
				fterm.exit()
			end, { desc = "Exit FTerm" })

			-- Toggle terminal
			vim.keymap.set("n", "<leader>tt", function()
				fterm.toggle()
			end, { desc = "Toggle FTerm" })
		end,
	},
}
