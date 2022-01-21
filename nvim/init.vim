:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

:set noswapfile

call plug#begin()

"Neovim plugins
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Theme
Plug 'morhetz/gruvbox'
 
:set completeopt-=preview

call plug#end()

colorscheme gruvbox

:set completeopt-=preview 

"Hot key
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-w> :wq<CR>


