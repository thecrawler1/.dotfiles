vim.cmd [[
  augroup MyAutocmds
    autocmd!
    autocmd VimEnter * lua vim.fn.system("alacritty msg config window.padding.x=0 window.padding.y=0")
    autocmd VimLeave * lua vim.fn.system("alacritty msg config window.padding.x=10 window.padding.y=10")
  augroup END
]]
