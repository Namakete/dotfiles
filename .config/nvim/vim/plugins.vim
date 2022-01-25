call plug#begin()

"Special~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'voldikss/vim-floaterm'
Plug 'bmeneg/coc-perl', {'do': 'yarn install && yarn build'}
Plug 'jiangmiao/auto-pairs'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'godlygeek/csapprox'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

"Themes~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plug 'icymind/NeoSolarized'
Plug 'joshdick/onedark.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'liuchengxu/space-vim-theme'
Plug 'https://github.com/sainnhe/everforest'
Plug 'morhetz/gruvbox'

"Git~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"Languages~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plug 'scrooloose/syntastic'

Plug 'neovim/nvim-lspconfig'

Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'groenewege/vim-less', { 'for': 'less' }

Plug 'leafgarland/typescript-vim'

Plug 'pangloss/vim-javascript'

Plug 'Vimjas/vim-python-pep8-indent'

Plug 'dart-lang/dart-vim-plugin'
Plug 'reisub0/hot-reload.vim'

Plug 'vim-scripts/fortran.vim'
Plug 'rudrab/vimf90'

Plug 'bfrg/vim-cpp-modern'
Plug 'jackguo380/vim-lsp-cxx-highlight'

"Window manager~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'dhruvmanila/telescope-bookmarks.nvim'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()
