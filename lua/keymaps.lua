vim.g.mapleader = " "

local default_opts = {silent=true}
-- TELESCOPE
vim.keymap.set('n', '<Char-0xAA>', ':Telescope find_files<CR>', default_opts) -- p
vim.keymap.set('n', '<Char-0xAB>', ':Telescope live_grep<CR>', default_opts) -- f
vim.keymap.set('n', '<Char-0xAC>', ':Telescope buffers<CR>', default_opts) -- b
vim.keymap.set('n', '<leader>h', ':Telescope help_tags<CR>', default_opts)

--NEOTREE
vim.keymap.set('n', '<C-e>', ':Neotree toggle<CR>', default_opts) -- this is remapped inside alacritty and tmux

-- LSP
vim.keymap.set('n', '<Char-0xAE>', vim.lsp.buf.hover, default_opts)
vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, default_opts)
vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, default_opts)
vim.keymap.set('n', 'gD', vim.lsp.buf.definition, default_opts)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, default_opts)

