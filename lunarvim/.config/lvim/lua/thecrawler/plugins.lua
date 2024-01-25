lvim.plugins = {
  { "lunarvim/darkplus.nvim" },
  {
    "ggandor/leap.nvim",
    name = "leap",
    config = function()
      require("leap").add_default_mappings()
    end
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },
  {
    "tpope/vim-surround"
  },
  {
    "tpope/vim-repeat"
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "StorageBrain",
          path = "~/StorageBrain",
        },
      },
    },
  }
}
