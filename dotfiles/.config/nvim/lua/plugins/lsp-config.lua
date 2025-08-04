return {
    { "mason-org/mason.nvim",
    opts = {}
    },

    { "neovim/nvim-lspconfig",
    config = function ()
            -- Enabling installed LSPs --
            vim.lsp.enable ("lua_ls")
            vim.lsp.enable ("rust_analyzer")
            vim.lsp.enable ("clangd")
            vim.lsp.enable ("pylsp")

            -- Keymaps for LSPs --
            vim.keymap.set ("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set ("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set ("n", "gD", vim.lsp.buf.declaration, {})
            vim.keymap.set ("n", "gi", vim.lsp.buf.implementation, {})
            vim.keymap.set ("n", "gr", vim.lsp.buf.references, {})
            vim.keymap.set ( {"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {})
        end
    },

    { "mason-org/mason-lspconfig.nvim",
    opts = {
            ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "pylsp" },
            },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
        },
    }
}
