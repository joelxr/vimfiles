require("bufferline").setup {
  options = {
    mode = 'buffers',
    indicator = {
      style = 'underline',
    },
    offsets = {
      {
        filetype = "neo-tree",
        text = "",
      }
    }
  },
}

vim.keymap.set('n', '<leader>p', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>n', ':BufferLineCyclePrev<CR>')
