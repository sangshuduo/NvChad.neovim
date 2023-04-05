-- tab:→\ ,trail:␣,extends:…,eol:⏎
-- tab:>- ,trail:~,extends:…,eol:↵
vim.opt.list = true
vim.opt.listchars:append "eol:⏎"
vim.opt.listchars:append "space: "
vim.opt.listchars:append "trail:␣"
vim.opt.listchars:append "extends:…"
vim.opt.listchars:append "nbsp:␣"
vim.opt.listchars:append "tab:>-"

pcall(require, "custom")

vim.cmd "hi Visual guifg=#FFFF00 guibg=#0000FF gui=none"
vim.cmd "set noignorecase"
vim.cmd "set nu"
vim.cmd "set whichwrap="
vim.cmd "set tabstop=4 shiftwidth=4"

vim.cmd "hi Visual guifg=#FFFF00 guibg=#0000FF gui=none"
vim.cmd "set noignorecase"
vim.cmd "set nu"
vim.cmd "set whichwrap="
vim.cmd "set tabstop=4 shiftwidth=4"
vim.cmd "let g:asyncrun_open = 6"
vim.cmd "noremap <F7> :AsyncRun make -j80 <cr>"
vim.cmd "nnoremap <Leader>f :<C-u>ClangFormat<CR>"
vim.cmd "let g:floaterm_position = 'bottom'"
vim.cmd "let g:floaterm_width = 1.0"
vim.cmd "let g:floaterm_height = 0.3"
vim.cmd "let g:floaterm_keymap_new    = '<F10>'"
vim.cmd "let g:floaterm_keymap_prev   = '<F9>'"
vim.cmd "let g:floaterm_keymap_next   = '<F11>'"
vim.cmd "let g:floaterm_keymap_toggle = '<F12>'"

