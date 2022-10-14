
vim.cmd "hi Visual guifg=#FFFF00 guibg=#0000FF gui=none"
vim.cmd "set noignorecase"
vim.cmd "set nu"
vim.cmd "set whichwrap="
vim.cmd "set tabstop=4 shiftwidth=4"
vim.cmd "let g:asyncrun_open = 6"
vim.cmd "noremap <F7> :AsyncRun make -j80 <cr>"
vim.cmd "nnoremap <Leader>f :<C-u>ClangFormat<CR>"

