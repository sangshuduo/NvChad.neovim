-- custom/plugins/init.lua has to return a table
-- THe plugin name is github user or organization name/reponame

return {
    {"vim-scripts/c.vim", lazy = false},
    {"skywind3000/asyncrun.vim", lazy = false},
    {"fatih/vim-go", lazy = false},
    {"darrikonn/vim-gofmt", lazy = false},
    {"wellle/context.vim", lazy = false},
    {"rhysd/vim-clang-format", lazy = false},
    {"github/copilot.vim", lazy = false},
    {"Exafunction/codeium.vim", lazy = false},
    {'danilamihailov/beacon.nvim', lazy = false},
    {'neoclide/coc.nvim', lazy = false},
    {'tamton-aquib/duck.nvim',
        lazy = false,
        config = function()
            vim.keymap.set('n', '<leader>dd', function() require("duck").hatch("🦀") end, {})
            vim.keymap.set('n', '<leader>dk', function() require("duck").cook() end, {})
        end
    },
    {"saecki/crates.nvim",
        lazy = false,
        tag = 'v0.2.1',
        config = function()
            require('crates').setup()
        end,
    },
    {"folke/todo-comments.nvim",
        -- PERF: test perf?
        -- HACK: bruh
        -- TODO: wew
        -- NOTE:  sdkfj dkfjskdf
        -- ERROR: --
        -- FIX: fixed
        -- WARNING: test done
        lazy = false,
        config = function()
            require("todo-comments").setup {
                keywords = {
                    FIX = {
                        color = "error", -- can be a hex color, or a named color (see below)
                        alt = {"ERROR"},
                    },
                },
                highlight = {
                    comments_only = false, -- uses treesitter to match keywords in comments only
                    pattern = [[.*<(KEYWORDS)\s*]], -- pattern or table of patterns, used for highlightng (vim regex)
                }
        }
        end
    },
    {'simrat39/rust-tools.nvim', lazy = false},
    {'mfussenegger/nvim-dap', lazy = false},
    {'voldikss/vim-floaterm', lazy = false},
    {"Exafunction/codeium.vim", lazy = false}
}

