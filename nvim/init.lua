require("trev")
require'lspconfig'.pyright.setup{}
require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'rose-pine',
    component_separators = '|',
    section_separators = '',
  },
}
require('gitsigns').setup {
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
}
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
