return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>ps', builtin.git_files, { desc = 'Telescope find git files'})
		vim.keymap.set('n', '<leader>pg', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = 'Telescope buffers' })
		vim.keymap.set('n', '<leader>pr', builtin.registers, { desc = 'Telescope vim reg'})
		vim.keymap.set('n', '<leader>ph', builtin.help_tags, { desc = 'Telescope help tags' })
	end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require('telescope').setup ({
                extensions = {
                    ['ui-select'] = {
                        require('telescope.themes').get_dropdown {
                        }
                    }
                }
              })
            require('telescope').load_extension('ui-select')
        end
    },
}

