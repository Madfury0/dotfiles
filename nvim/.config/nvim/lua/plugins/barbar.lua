return {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},

		keys = {
			-- Move to previous/next
			{ "<leader>,", "<Cmd>BufferPrevious<CR>", desc = "Previous buffer" },
			{ "<leader>.", "<Cmd>BufferNext<CR>", desc = "Next buffer" },

			-- Re-order buffers
			{ "<leader><", "<Cmd>BufferMovePrevious<CR>", desc = "Move buffer left" },
			{ "<leader>>", "<Cmd>BufferMoveNext<CR>", desc = "Move buffer right" },

			-- Goto buffer in position
			{ "<leader>1", "<Cmd>BufferGoto 1<CR>", desc = "Go to buffer 1" },
			{ "<leader>2", "<Cmd>BufferGoto 2<CR>", desc = "Go to buffer 2" },
			{ "<leader>3", "<Cmd>BufferGoto 3<CR>", desc = "Go to buffer 3" },
			{ "<leader>4", "<Cmd>BufferGoto 4<CR>", desc = "Go to buffer 4" },
			{ "<leader>5", "<Cmd>BufferGoto 5<CR>", desc = "Go to buffer 5" },
			{ "<leader>6", "<Cmd>BufferGoto 6<CR>", desc = "Go to buffer 6" },
			{ "<leader>7", "<Cmd>BufferGoto 7<CR>", desc = "Go to buffer 7" },
			{ "<leader>8", "<Cmd>BufferGoto 8<CR>", desc = "Go to buffer 8" },
			{ "<leader>9", "<Cmd>BufferGoto 9<CR>", desc = "Go to buffer 9" },
			{ "<leader>0", "<Cmd>BufferLast<CR>", desc = "Go to last buffer" },

			-- Pin
			{ "<leader>pp", "<Cmd>BufferPin<CR>", desc = "Pin/unpin buffer" },

			-- Close / restore
			{ "<leader>cc", "<Cmd>BufferClose<CR>", desc = "Close buffer" },
			{ "<leader>sc", "<Cmd>BufferRestore<CR>", desc = "Restore buffer" },

			-- Pick mode
			{ "<leader>bp", "<Cmd>BufferPick<CR>", desc = "Pick buffer" },
			{ "<leader>bP", "<Cmd>BufferPickDelete<CR>", desc = "Pick buffer to delete" },

			-- Sorting
			{ "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>", desc = "Order by buffer number" },
			{ "<leader>bn", "<Cmd>BufferOrderByName<CR>", desc = "Order by name" },
			{ "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>", desc = "Order by directory" },
			{ "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>", desc = "Order by language" },
			{ "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>", desc = "Order by window" },
		},

		config = function()
			vim.g.barbar_auto_setup = false
		end,

		opts = {
			-- your barbar options here
		},
	},
}
