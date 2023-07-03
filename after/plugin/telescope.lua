require('telescope').setup{
	defaults = {
		path_display={"smart"} 
	}
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>f', function()
 builtin.grep_string({ search = vim.fn.input("> ") });
end)
