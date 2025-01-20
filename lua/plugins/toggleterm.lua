return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
      require("toggleterm").setup{
        direction = 'float',
        open_mapping = [[<c-\>]],
        terminal_mappings = true,
        float_opts = {
          border = 'curved',
          winblend = 0,
          highlights = {
            border = "Normal",
            background = "Normal",
          }
        }
      }
    end
}
