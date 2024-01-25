lvim.autocommands = {
  {
    "VimEnter",
    {
      pattern = { "*" },
      command = "lua vim.fn.system('alacritty msg config window.padding.x=0 window.padding.y=0')"
    }
  },
  {
    "VimLeave",
    {
      pattern = { "*" },
      command = "lua vim.fn.system('alacritty msg config window.padding.x=10 window.padding.y=10')"
    }
  },
  {
    "BufEnter",
    {
      pattern = { "*" },
      callback = function()
        if pcall(require, 'nvim-tree') then
          vim.cmd(":NvimTreeResize 40")
        end
      end
    }
  }
}
