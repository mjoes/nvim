return {
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.8', 
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local map = vim.keymap.set
    local builtin = require('telescope.builtin')

    require('telescope').setup {
      defaults = {
        layout_config = {
          horizontal = {
            prompt_position="top",
          },
        },
      },
    }

    map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
  end
}
