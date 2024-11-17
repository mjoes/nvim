return {
{
  "ggandor/flit.nvim",
  enabled = true,
  keys = function()
    ---@type LazyKeysSpec[]
    local ret = {}
    for _, key in ipairs({ "f", "F", "t", "T" }) do
      ret[#ret + 1] = { key, mode = { "n", "x", "o" } }
    end
    return ret
  end,
  opts = { labeled_modes = "nx" },
},
{
  "ggandor/leap.nvim",
  enabled = true,
  keys = {
    { "s", mode = { "n", "x", "o" }, desc = "Leap Forward to" },
    { "S", mode = { "n", "x", "o" }, desc = "Leap Backward to" },
    { "gs", mode = { "n", "x", "o" }, desc = "Leap from Windows" },
  },
  config = function(_, opts)
    local leap = require("leap")
    for k, v in pairs(opts) do
      leap.opts[k] = v
    end
    leap.add_default_mappings(true)
    vim.keymap.del({ "x", "o" }, "x")
    vim.keymap.del({ "x", "o" }, "X")
  end,
},
{ "tpope/vim-repeat", event = "VeryLazy" },
{
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,

},
{
    'numToStr/Comment.nvim',
    opts = { }
},
{
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
},
{
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
},
{
  "rebelot/kanagawa.nvim"
},
{
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
        { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
}
}
