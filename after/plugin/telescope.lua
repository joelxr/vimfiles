require('telescope').setup{
  defaults = {
    path_display={"smart"},
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        width = { padding = 0 },
        height = { padding = 0 },
        preview_width = 0.7,
      },
    },
    sorting_strategy = "ascending",
  },
  pickers = {
    buffers = {
      show_all_buffers = true,
      sort_lastused = true,
      mappings = {
        i = {
          ["<c-d>"] = "delete_buffer",
        }
      }
    }
  }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gx', builtin.git_status, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>bf', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>bf', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>tr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>ti', builtin.lsp_incoming_calls, {})
vim.keymap.set('n', '<leader>to', builtin.lsp_outgoing_calls, {})
vim.keymap.set('n', '<leader>td', builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>tt', builtin.lsp_type_definitions, {})
vim.keymap.set('n', '<leader>tm', builtin.lsp_implementations, {})
vim.keymap.set('n', '<leader>f', function()
  builtin.grep_string({ search = vim.fn.input("> ") });
end)
