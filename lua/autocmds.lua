vim.api.nvim_create_augroup("nobg", { clear = true })
vim.api.nvim_create_autocmd({ "ColorScheme" }, {
  desc = "Make all backgrounds transparent",
  group = "nobg",
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", ctermbg = "NONE" })
    -- etc...
  end,
})

vim.api.nvim_create_augroup("tabw", { clear = true})
vim.api.nvim_create_autocmd({"FileType"}, {
  desc = "Setup tab width",
  group = "tabw",
  pattern = {"*.py", "*.rs"},
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
  end,
})

