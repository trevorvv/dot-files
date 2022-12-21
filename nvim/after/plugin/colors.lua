function ColorMe(color)
    vim.cmd 'set termguicolors'
    vim.cmd 'colorscheme darcula-solid'
    vim.api.nvim_set_hl(0, "Normal", {guibg=NONE, ctermbg=NONE})
end
ColorMe()
