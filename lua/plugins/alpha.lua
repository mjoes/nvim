return {
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
}

