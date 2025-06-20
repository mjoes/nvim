return {
    {
        'zbirenbaum/copilot.lua',
        cmd = 'Copilot',
        event = 'InsertEnter',
        opts = {
            panel = { enabled = false },
            suggestion = {
                auto_trigger = true,
                keymap = {
                    accept = false,
                    accept_word = '<M-w>',
                    accept_line = '<M-l>',
                    next = '<C-s>',
                    prev = '<C-a>',
                    dismiss = '<C-x>',
                },
            },
            filetypes = { markdown = true },
        },
        config = function(_, opts)
            local cmp = require 'cmp'
            local copilot = require 'copilot.suggestion'
            local luasnip = require 'luasnip'

            require('copilot').setup(opts)

            -- Load copilot-cmp here
            require('copilot_cmp').setup()

            local function set_trigger(trigger)
                vim.b.copilot_suggestion_auto_trigger = trigger
                vim.b.copilot_suggestion_hidden = not trigger
            end

            cmp.event:on('menu_opened', function()
                if copilot.is_visible() then
                    copilot.dismiss()
                end
                set_trigger(false)
            end)

            cmp.event:on('menu_closed', function()
                set_trigger(not luasnip.expand_or_locally_jumpable())
            end)

            vim.api.nvim_create_autocmd('User', {
                pattern = { 'LuasnipInsertNodeEnter', 'LuasnipInsertNodeLeave' },
                callback = function()
                    set_trigger(not luasnip.expand_or_locally_jumpable())
                end,
            })
        end,
    },
    {
        'zbirenbaum/copilot-cmp',
        dependencies = { 'zbirenbaum/copilot.lua' },
    },
}

