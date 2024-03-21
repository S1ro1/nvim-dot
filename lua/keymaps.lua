vim.g.mapleader = " "

local default_opts = { silent = true, noremap = true }
-- TELESCOPE
vim.keymap.set('n', '<C-p>', ':Telescope find_files<CR>', default_opts) -- p
vim.keymap.set('n', '<C-f>', ':Telescope live_grep<CR>', default_opts)  -- f
vim.keymap.set('n', '<C-b>', ':Telescope buffers<CR>', default_opts)    -- b
vim.keymap.set('n', '<leader>h', ':Telescope help_tags<CR>', default_opts)

--NEOTREE
vim.keymap.set('n', '<C-e>', ':Neotree toggle<CR>', default_opts) -- this is remapped inside alacritty and tmux

-- LSP
vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, default_opts)
vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, default_opts)
vim.keymap.set('n', 'gD', vim.lsp.buf.definition, default_opts)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, default_opts)

-- barbar
vim.keymap.set('n', '<leader>0', '<Cmd>BufferGoto 1<CR>', default_opts)
vim.keymap.set('n', '<leader>1', '<Cmd>BufferGoto 2<CR>', default_opts)
vim.keymap.set('n', '<leader>2', '<Cmd>BufferGoto 3<CR>', default_opts)
vim.keymap.set('n', '<leader>3', '<Cmd>BufferGoto 4<CR>', default_opts)
vim.keymap.set('n', '<leader>4', '<Cmd>BufferGoto 5<CR>', default_opts)
vim.keymap.set('n', '<leader>5', '<Cmd>BufferGoto 6<CR>', default_opts)
vim.keymap.set('n', '<leader>6', '<Cmd>BufferGoto 7<CR>', default_opts)
vim.keymap.set('n', '<leader>7', '<Cmd>BufferGoto 8<CR>', default_opts)
vim.keymap.set('n', '<leader>8', '<Cmd>BufferGoto 9<CR>', default_opts)
vim.keymap.set('n', '<leader>w', '<Cmd>BufferClose<CR>', default_opts)
