return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- formatting
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.shellharden,
				-- Linting
				null_ls.builtins.diagnostics.checkmake,
			},
		})
		vim.keymap.set({ "n", "v" }, "<leader>ff", vim.lsp.buf.format, {})
	end,
}
