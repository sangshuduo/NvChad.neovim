-- custom/plugins/init.lua has to return a table
-- THe plugin name is github user or organization name/reponame

return {

    ["vim-scripts/c.vim"] = {},
    ["skywind3000/asyncrun.vim"] = {},
    ["fatih/vim-go"] = {},
    ["darrikonn/vim-gofmt"] = {},
    ["wellle/context.vim"] = {},
    ["rhysd/vim-clang-format"] = {},
    ["github/copilot.vim"] = {},
    ['danilamihailov/beacon.nvim'] = {},
    ['neoclide/coc.nvim'] = {},
    ['lewis6991/gitsigns.nvim'] = {
        tag = 'release',
        config = function()
            require('gitsigns').setup() {
                signs = {
                    add          = { text = '│' },
                    change       = { text = '│' },
                    delete       = { text = '_' },
                    topdelete    = { text = '‾' },
                    changedelete = { text = '~' },
                    untracked    = { text = '┆' },
                },
                signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
                numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
                linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
                word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
                watch_gitdir = {
                    interval = 1000,
                    follow_files = true
                },
                attach_to_untracked = true,
                current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
                current_line_blame_opts = {
                    virt_text = true,
                    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
                    delay = 1000,
                    ignore_whitespace = false,
                },
                current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
                sign_priority = 6,
                update_debounce = 100,
                status_formatter = nil, -- Use default
                max_file_length = 40000, -- Disable if file is longer than this (in lines)
                preview_config = {
                    -- Options passed to nvim_open_win
                    border = 'single',
                    style = 'minimal',
                    relative = 'cursor',
                    row = 0,
                    col = 1
                },
                yadm = {
                    enable = false
                },
            }
        end,
    },
    ['tamton-aquib/duck.nvim'] = {
        config = function()
            vim.keymap.set('n', '<leader>dd', function() require("duck").hatch("🦀") end, {})
            vim.keymap.set('n', '<leader>dk', function() require("duck").cook() end, {})
        end
    },
    ["saecki/crates.nvim"] =
    {
        tag = 'v0.2.1',
        config = function()
            require('crates').setup()
        end,
    },
    ['voldikss/vim-floaterm'] = {}
}

