-- custom/plugins/init.lua has to return a table
-- THe plugin name is github user or organization name/reponame

return {

    ["vim-scripts/c.vim"] = {},
    ["fatih/vim-go"] = {},
    ["darrikonn/vim-gofmt"] = {},
    ["wellle/context.vim"] = {},
    ["github/copilot.vim"] = {},
    [ 'saecki/crates.nvim' ] = 
    {
        tag = 'v0.2.1',
        config = function()
            require('crates').setup()
        end,
    }
}

