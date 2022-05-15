-- IMPORTANT NOTE : This is default config, so dont change anything here.
-- chadrc overrides this file

local M = {}

M.options = {

   clipboard = "unnamedplus",
   cmdheight = 1,
   ruler = false,
   hidden = true,
   ignorecase = true,
   smartcase = true,
   mapleader = " ",
   mouse = "a",
   number = true,
   numberwidth = 2,
   relativenumber = false,
   expandtab = true,
   shiftwidth = 4,
   smartindent = true,
   tabstop = 4, -- Number of spaces that a <Tab> in the file counts for
   timeoutlen = 400,
   updatetime = 250,
   undofile = true,
   fillchars = { eob = " " },
   -- load your options here or load module with options1
   user = function() end,

   nvChad = {
      -- updater
      update_url = "https://github.com/NvChad/NvChad",
      update_branch = "main",
   },
}

---- UI -----

M.ui = {
   hl_override = {},
   changed_themes = {},
   theme_toggle = { "onedark", "one_light" },
   theme = "onedark", -- default theme
   transparency = false,
}

M.plugins = {
   override = {},
   remove = {},

   options = {
      lspconfig = {
         setup_lspconf = "", -- path of lspconfig file
      },
      statusline = {
         separator_style = "default", -- default/round/slant/block/arrow
      },
      telescope = {
         extensions = { "themes", "terms" }
      }
   },

   -- add, modify, remove plugins
   user = {},
}

-- check core.mappings for table structure
M.mappings = require "core.mappings"

return M
