local set_options = {
	shiftwidth = 2,
	tabstop = 2,
	expandtab = true,
  number = true,
  relativenumber = true,
  backup = false,
  clipboard = "unnamedplus",
  timeoutlen = 500,
  scrolloff = 8,
  sidescrolloff = 16,
  completeopt = { "menuone", "noselect" },
  fileencoding = "utf-8",
  ignorecase = true,
  pumheight = 10,
  showmode = false,
  showtabline = 2,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  undofile = true,
  updatetime = 200,
  cursorline = true,
  signcolumn = "yes",
  wrap = false,
  colorcolumn = "100",
  termguicolors = true,
}

local append_options = {
  shortmess = "c",
  whichwrap = "<,>,[,],h,l",
}

for option, value in pairs(set_options) do
	vim.opt[option] = value
end

for option, value in pairs(append_options) do
  vim.opt[option]:append(value)
end
