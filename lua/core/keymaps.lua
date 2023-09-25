vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- set number
vim.wo.relativenumber = true
vim.opt.backspace = '2'
-- displays the partial command you are typing in the last line of the Neovim interface. 
vim.opt.showcmd = true
vim.opt.laststatus = 2
-- Neovim will automatically write (save) changes to the file when you switch buffers or exit Neovim.
vim.opt.autowrite = true
vim.opt.cursorline = true
-- automatically reload the file if it has been modified externally.
vim.opt.autoread = true

-- controls how many spaces a tab character should visually represent. 
vim.opt.tabstop = 2
-- option determines the number of spaces used for one level of indentation when you auto-indent or manually indent your code (e.g., with the >> or << commands). By setting it to 2, you specify that each level of indentation should consist of 2 spaces.
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
-- use spaces for indentation instead of tab characters. When you press the Tab key or auto-indent, spaces will be inserted rather than a tab character. This is often used to enforce consistent indentation across different editors and environments.
vim.opt.expandtab = false

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>') 
