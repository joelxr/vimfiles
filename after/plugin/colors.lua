function light()
  vim.cmd("set background=light")
  vim.cmd("colorscheme rose-pine")
end

function dark()
  vim.cmd("set background=dark")
  vim.cmd("colorscheme rose-pine")
end

vim.cmd("command Light silent lua light()")
vim.cmd("command Dark silent lua dark()") 

function getKittyTheme()
  return vim.fn.system([[awk -F: 'NR==1 {print $2}' ~/.config/kitty/current-theme.conf]]):match("^%s*(.-)%s*$")
end

local kittyTheme = getKittyTheme()

if kittyTheme == "Rosé Pine Moon" then
  dark()
else
  light()
end

vim.cmd("highlight Cursor guibg=#B90E0A ctermbg=67")
vim.cmd("highlight iCursor guibg=#B90E0A ctermbg=229")
vim.cmd("highlight rCursor guibg=#B90E0A ctermbg=124")

vim.cmd("set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver100-iCursor,r-cr:block-rCursor,o:hor50-Cursor/lCursor,sm:block-iCursor,a:blinkwait1000-blinkon500-blinkoff250")
