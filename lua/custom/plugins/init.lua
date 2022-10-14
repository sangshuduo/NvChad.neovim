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
    ["saecki/crates.nvim"] =
    {
        tag = 'v0.2.1',
        config = function()
            require('crates').setup()
        end,
    }
}

