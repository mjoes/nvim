return {
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
    'goolord/alpha-nvim',
    dependencies = { 'echasnovski/mini.icons' },
    config = function()
        local alpha = require'alpha'
        local startify = require'alpha.themes.startify'

        -- Set custom header
        startify.section.header.val = {
          [[    __  ___           __                    __         ]],
          [[   /  |/  ____  _____/ /____  ____         / ____  ___ ]],
          [[  / /|_/ / __ \/ ___/ __/ _ \/ __ \   __  / / __ \/ _ \]],
          [[ / /  / / /_/ / /  / /_/  __/ / / /  / /_/ / /_/ /  __/]],
          [[/_/  /_/\____/_/   \__/\___/_/ /_/   \____/\____/\___/ ]],
          [[                                                       ]],
        }

        -- Pass the modified config to alpha
        alpha.setup(startify.config)
    end
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
'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' }
},
{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
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
