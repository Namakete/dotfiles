call plug#begin()
	if has("nvim")
	Plug 'projekt0n/github-nvim-theme'
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons'
	endif
call plug#end()


colorscheme github_dimmed
let g:github_comment_style = "NONE"
let g:github_keyword_style = "NONE"
let g:github_function_style = "NONE"
let g:github_variable_style = "NONE"

