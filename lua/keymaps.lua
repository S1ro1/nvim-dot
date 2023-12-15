vim.g.mapleader = " "

vim.keymap.set('n', '<Char-0xAA>', ':Telescope find_files<CR>', {silent=true})
vim.keymap.set('n', '<Char-0xAB>', ':Telescope live_grep<CR>', {silent=true})
vim.keymap.set('n', '<Char-0xAC>', ':Telescope buffers<CR>', {silent=true})

vim.keymap.set('n', '<leader>h', 'Telescope help_tags<CR>', {silent=true})
