require('telescope').setup{
	defaults = {
		path_display={"smart"} 
	}
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gx', builtin.git_status, {})
vim.keymap.set('n', '<leader>f', function()
 builtin.grep_string({ search = vim.fn.input("> ") });
end)
