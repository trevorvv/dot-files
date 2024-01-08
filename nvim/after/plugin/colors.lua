function ColorMe(color)
  vim.cmd[[set background=dark]]
  color = color or "no-clown-fiesta"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.cmd[[set cursorline]]
  vim.cmd[[set cursorlineopt=number]]
  vim.cmd[[hi CursorLineNr guifg = orange]]
end
ColorMe()
