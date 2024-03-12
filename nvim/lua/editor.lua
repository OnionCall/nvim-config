vim.cmd("set softtabstop=0 noexpandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
vim.cmd("set number relativenumber")
vim.cmd("set nu rnu")
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap(  't'  ,  'jk'  ,  '<C-\\><C-n>'  ,  {noremap = true}  )
vim.cmd("set clipboard=unnamedplus")
