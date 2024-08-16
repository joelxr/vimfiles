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
