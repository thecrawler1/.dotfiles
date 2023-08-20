function Wipeout_buffers()
  local current_buf = vim.fn.bufnr("%")
  local nvimtree_buf = vim.fn.bufnr("NvimTree")

  for _, buf in ipairs(vim.fn.range(1, vim.fn.bufnr("$"))) do
    if buf ~= current_buf and buf ~= nvimtree_buf then
      vim.fn.execute("silent! bdelete! " .. buf)
    end
  end

  vim.cmd("BufferLinePickClose")
end

-- Back to normal mode
lvim.keys.insert_mode["jk"] = "<Esc>"

-- Buffer navigation
lvim.keys.normal_mode["H"] = ":bp<CR>"
lvim.keys.normal_mode["L"] = ":bn<CR>"

-- Screen nagivation
lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"
lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
lvim.keys.normal_mode["n"] = "nzz"
lvim.keys.normal_mode["N"] = "Nzz"

-- Stay in indent mode
lvim.keys.visual_mode[">"] = ">gv"
lvim.keys.visual_mode["<"] = "<gv"

-- NvimTree
lvim.builtin.which_key.mappings["e"] = { "<cmd>NvimTreeFocus<CR>", "Exploer Focus" }
lvim.builtin.which_key.mappings["E"] = { "<cmd>NvimTreeToggle<CR>", "Exploer Toggle" }

lvim.builtin.which_key.mappings["j"] = { "<cmd>Telescope live_grep<CR>", "Find text" }

-- Close all but this
lvim.builtin.which_key.mappings["t"] = { "<cmd>lua Wipeout_buffers()<CR>", "Close all but this" }
