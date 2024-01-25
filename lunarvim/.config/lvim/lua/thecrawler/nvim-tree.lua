local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set("n", "<C-[>", "<C-w>l")
end

lvim.builtin.nvimtree.setup.on_attach = my_on_attach
lvim.builtin.nvimtree.setup.update_cwd = true
lvim.builtin.nvimtree.setup.view.width = 40
lvim.builtin.nvimtree.setup.sync_root_with_cwd = true
lvim.builtin.nvimtree.setup.respect_buf_cwd = true
lvim.builtin.nvimtree.setup.update_focused_file = {
  enable = true,
  update_root = true
}
lvim.builtin.nvimtree.setup.hijack_directories = {
  enable = true,
  auto_open = true,
}
