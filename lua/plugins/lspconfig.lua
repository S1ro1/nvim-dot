local lsp = {
  "lua_ls",
  "ruff_lsp",
  "tsserver",
  "volar"
}


return {
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    config = function()
      local lsp_zero = require("lsp-zero")
      lsp_zero.extend_lspconfig()
      lsp_zero.on_attach(function(client, bufnr)
        lsp_zero.default_keymaps({buffer = bufnr})
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
