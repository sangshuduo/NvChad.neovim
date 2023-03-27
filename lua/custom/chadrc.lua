-- This is an example chadrc file , its supposed to be placed in /lua/custom dir
-- lua/custom/chadrc.lua

-- tab:→\ ,trail:␣,extends:…,eol:⏎
-- tab:>- ,trail:~,extends:…,eol:↵
vim.opt.list = true
vim.opt.listchars:append "eol:⏎"
vim.opt.listchars:append "space: "
vim.opt.listchars:append "trail:␣"
vim.opt.listchars:append "extends:…"
vim.opt.listchars:append "nbsp:␣"
vim.opt.listchars:append "tab:>-"

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.plugins = "custom.plugins"

M.ui = {
   theme = "tokyonight",
}

return M
