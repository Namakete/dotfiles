call plug#begin()
	if has("nvim")
	Plug 'projekt0n/github-nvim-theme'
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'
	Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'folke/trouble.nvim'
	Plug 'neovim/nvim-lspconfig'
	Plug 'glepnir/lspsaga.nvim'
	endif
call plug#end()



