local lsp = {
  "lua_ls",
  "ruff_lsp",
  "tsserver",
  "volar"
}


return {
  { 'neovim/nvim-lspconfig', },
  { 'hrsh7th/cmp-nvim-lsp' },
  {
    'hrsh7th/nvim-cmp',
    config = function()
      local cmp = require('cmp')
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<S-Tab>'] = cmp.mapping.select_prev_item(),
          ['<Tab>'] = cmp.mapping.select_next_item(),
        }),
      })
    end
  },
  { 'L3MON4D3/LuaSnip' },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    config = function()
      local lsp_zero = require("lsp-zero")
      lsp_zero.extend_lspconfig()
      lsp_zero.on_attach(function(client, bufnr)
        lsp_zero.default_keymaps({ buffer = bufnr })
        lsp_zero.buffer_autoformat()
      end)
    end
  },
  -- mason
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  -- mason/lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      local lsp_zero = require('lsp-zero')
      require("mason-lspconfig").setup({
        ensure_installed = lsp,
        handlers = {
          lsp_zero.default_setup,
        }
      })
    end
  },
  -- autocompletion
}
