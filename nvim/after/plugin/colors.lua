function ColorMe(color)
  color = color or "no-clown-fiesta"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.cmd[[set cursorline]]
  vim.cmd[[set cursorlineopt=number]]
  vim.cmd[[hi CursorLineNr guifg = orange]]
  require("transparent").setup({ -- Optional, you don't have to run setup.
  groups = { -- table: default groups
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
  },
  extra_groups = {}, -- table: additional groups that should be cleared
  exclude_groups = {}, -- table: groups you don't want to clear
})
end
ColorMe()
