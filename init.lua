require "core"
require "core.options"

vim.defer_fn(function()
   require("core.utils").load_mappings()
end, 0)

-- setup packer + plugins
require("core.packer").bootstrap()
require "plugins"

local user_conf, _ = pcall(require, "custom")

if user_conf then
   require "custom"
end

-- tab:→\ ,trail:␣,extends:…,eol:⏎
-- tab:>- ,trail:~,extends:…,eol:↵
vim.opt.list = true
vim.opt.listchars:append "eol:⏎"
vim.opt.listchars:append "space: "
vim.opt.listchars:append "trail:␣"
vim.opt.listchars:append "extends:…"
vim.opt.listchars:append "nbsp:␣"
vim.opt.listchars:append "tab:>-"

vim.cmd "hi Visual guifg=#FFFF00 guibg=#0000FF gui=none"
vim.cmd "set noignorecase"
vim.cmd "set nu"
vim.cmd "set whichwrap="
vim.cmd "set tabstop=4 shiftwidth=4"

