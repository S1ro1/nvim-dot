local lsp = {
  "lua_ls",
  "pyright",
  "tsserver",
  "volar"
}


return {
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
      require("mason-lspconfig").setup({
        ensure_installed = lsp,
      })
    end
  },
  -- nvim/lspconfig
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      for _, l in ipairs(lsp) do
        lspconfig[l].setup({})
      end
    end
  }
}
