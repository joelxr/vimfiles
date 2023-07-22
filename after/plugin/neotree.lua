require("neo-tree").setup({
    sources = {
    "filesystem",
    "buffers",
    "git_status",
    "diagnostics",
  },
  close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  filesystem = {
    follow_current_file = true,
    group_empty_dirs = true,
  },
  buffers = {
    follow_current_file = {
      enabled = true,
    },
    group_empty_dirs = true,
    window = {
      mappings = {
        ["bd"] = "buffer_delete",
        ["<bs>"] = "navigate_up",
        ["."] = "set_root",
      }
    },
  },
  diagnostics = {
    auto_preview = {
      enabled = false,
      preview_config = {},
      event = "neo_tree_buffer_enter",
    },
    bind_to_cwd = true,
    diag_sort_function = "severity",
    follow_behavior = {
      always_focus_file = false,
      expand_followed = true,
      collapse_others = true,
    },
    follow_current_file = true,
    group_dirs_and_files = true, 
    group_empty_dirs = true, 
    show_unloaded = true, 
    refresh = {
      delay = 100,
      event = "vim_diagnostic_changed",
      max_items = false,
    },
  },
})

vim.keymap.set('n', '<leader>t', ':Neotree toggle filesystem left<CR>',{})
vim.keymap.set('n', '<leader>ts', ':Neotree toggle git_status left<CR>',{})
vim.keymap.set('n', '<leader>b', ':Neotree toggle buffers left<CR>',{})
vim.keymap.set('n', '<leader>rf', ':Neotree reveal_file=%<CR>',{})
