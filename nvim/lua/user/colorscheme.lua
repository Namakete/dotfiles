vim.cmd [[colorscheme solarized-osaka]]

vim.api.nvim_exec([[
augroup MyColors
  autocmd!
  autocmd ColorScheme * hi MatchParen guibg=NONE guifg=darkred ctermfg=darkred cterm=NONE
augroup END
]], false)
