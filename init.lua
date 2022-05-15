local present, impatient = pcall(require, "impatient")

if present then
   impatient.enable_profile()
end

local modules = {
   "utils",
   "options",
   "autocmds",
   "commands",
}

for _, module in ipairs(modules) do
   local ok, err = pcall(require, "core." .. module)

   if not ok then
      error("Error loading " .. module .. "\n\n" .. err)
   end
end

-- check if custom init.lua file exists
if vim.fn.filereadable(vim.fn.stdpath "config" .. "/lua/custom/init.lua") == 1 then
   -- try to call custom init, if not successful, show error
   local ok, err = pcall(require, "custom")

   if not ok then
      vim.notify("Error loading custom/init.lua\n\n" .. err)
   end

   return
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

