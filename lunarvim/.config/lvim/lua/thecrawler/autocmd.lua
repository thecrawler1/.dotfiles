lvim.autocommands = {
  {
    "VimEnter",
    {
      pattern = { "*" },
      command = "lua vim.fn.system('alacritty msg config window.padding.x=0 window.padding.y=0')"
    }
  }, {
    "VimLeave",
    {
      pattern = { "*" },
      command = "lua vim.fn.system('alacritty msg config window.padding.x=10 window.padding.y=10')"
    }
  }
}
