"=================================

if has("eval")                               
  let skip_defaults_vim = 1
endif

"=============Settigns============

:set encoding=utf-8
:set number
:set textwidth=72
:set autoindent
:set autowrite
:set showmode
:set tabstop=2
:set softtabstop=2
:set shiftwidth=2
:set smartindent
:set smarttab
:set expandtab
:set nobackup
:set noswapfile
:set nowritebackup
:set norelativenumber
:set icon
:set hlsearch
:set incsearch
:set linebreak
:set ttyfast

if has("syntax")
  syntax enable
endif

"===========Mapping=============

map <C-q> :wq!<CR>
map <C-s> :w!<CR>
nmap <C-a> gg<S-v>G

map <F12> :set fdm=indent<CR>

nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

nnoremap <leader>ff :Telescope find_files<CR>

nnoremap <F2> :NERDTreeToggle<CR>

"============Color==============

set background=dark

hi TelescopeBorder ctermfg=234 ctermfg=yellow cterm=NONE
hi TelescopeSelection ctermbg=darkgreen ctermfg=black cterm=NONE 

hi CocErrorSign ctermfg=234 ctermfg=darkred cterm=none
hi CocWarningSign ctermfg=234 ctermfg=yellow cterm=NONE
hi CocFloating guibg=#3c3b3b guifg=234 cterm=NONE 

hi GitSignsAdd ctermfg=234 ctermfg=green cterm=NONE
hi GitSignsChange ctermfg=234 ctermfg=yellow cterm=NONE

hi StatusLine ctermfg=black ctermbg=NONE cterm=NONE
hi StatusLineNC ctermfg=black ctermbg=NONE cterm=NONE
hi Normal ctermbg=NONE
hi Special ctermfg=cyan
hi LineNr ctermfg=black cterm=NONE 
hi SpecialKey ctermfg=black ctermbg=NONE
hi ModeMsg ctermfg=black cterm=NONE ctermbg=NONE
hi MoreMsg ctermfg=black ctermbg=NONE
hi NonText ctermfg=black ctermbg=NONE
hi vimGlobal ctermfg=black ctermbg=NONE
hi ErrorMsg ctermbg=234 ctermfg=darkred cterm=NONE
hi Error ctermbg=234 ctermfg=darkred cterm=NONE
hi SpellBad ctermbg=234 ctermfg=darkred cterm=NONE
hi SpellRare ctermbg=234 ctermfg=darkred cterm=NONE
hi Search ctermbg=236 ctermfg=darkred
hi vimTodo ctermbg=236 ctermfg=darkred
hi Todo ctermbg=236 ctermfg=darkred
hi IncSearch ctermbg=236 cterm=NONE ctermfg=darkred
hi MatchParen ctermbg=236 ctermfg=darkred
hi SignColumn ctermfg=black ctermbg=NONE cterm=NONE 

au FileType * hi StatusLine ctermfg=black ctermbg=NONE
au FileType * hi StatusLineNC ctermfg=black ctermbg=NONE
au FileType * hi Normal ctermbg=NONE
au FileType * hi Special ctermfg=cyan
au FileType * hi LineNr ctermfg=black ctermbg=NONE
au FileType * hi SpecialKey ctermfg=black ctermbg=NONE
au FileType * hi ModeMsg ctermfg=black cterm=NONE ctermbg=NONE
au FileType * hi MoreMsg ctermfg=black ctermbg=NONE
au FileType * hi NonText ctermfg=black ctermbg=NONE
au FileType * hi vimGlobal ctermfg=black ctermbg=NONE
au FileType * hi goComment ctermfg=black ctermbg=NONE
au FileType * hi ErrorMsg ctermbg=234 ctermfg=darkred cterm=NONE
au FileType * hi Error ctermbg=234 ctermfg=darkred cterm=NONE
au FileType * hi SpellBad ctermbg=234 ctermfg=darkred cterm=NONE
au FileType * hi SpellRare ctermbg=234 ctermfg=darkred cterm=NONE
au FileType * hi Search ctermbg=236 ctermfg=darkred
au FileType * hi vimTodo ctermbg=236 ctermfg=darkred
au FileType * hi Todo ctermbg=236 ctermfg=darkred
au FileType * hi IncSearch ctermbg=236 cterm=NONE ctermfg=darkred
au FileType * hi MatchParen ctermbg=236 ctermfg=darkred
au FileType markdown,pandoc hi Title ctermfg=yellow ctermbg=NONE
au FileType markdown,pandoc hi Operator ctermfg=yellow ctermbg=NONE
au FileType yaml hi yamlBlockMappingKey ctermfg=NONE
au FileType yaml set sw=4
au FileType bash set sw=2
au FileType c set sw=8

set ruf=%30(%=%#LineNr#%.50F\ [%{strlen(&ft)?&ft:'none'}]\ %l:%c\ %p%%%)

"=========Plug Installer==========

call plug#begin('~/.vim/plugged')
	Plug 'morhetz/gruvbox'
  Plug 'nvim-lua/plenary.nvim'
	Plug 'scrooloose/nerdtree', {'on':  'NERDTreeToggle'}
	Plug 'frazrepo/vim-rainbow'
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'rwxrob/vim-pandoc-syntax-simple'
  Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
  Plug 'tpope/vim-fugitive'
  Plug 'hashivim/vim-terraform'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'metakirby5/codi.vim'
  Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.0'}
  Plug 'lewis6991/gitsigns.nvim'
call plug#end()

"=================================

let g:terraform_fmt_on_save = 1

"===========Lsp Servers===========

let g:coc_global_extensions=[
            \'coc-css',
            \'coc-flutter',
            \'coc-json',
            \'coc-tsserver',
            \'coc-pyright',
            \'coc-clangd',
            \'coc-sh',
            \'coc-phpls',
            \'coc-solargraph',
            \'coc-lua',
            \'coc-rust-analyzer',
            \'coc-cmake',
            \'coc-go',
            \]

"============Telescope=============

lua << EOF

local actions = require('telescope.actions')

require('telescope').setup {
    defaults = {
        layout_config = {
            width = 0.50,
            prompt_position = "top",
            preview_cutoff = 120,
            horizontal = {mirror = false},
            vertical = {mirror = false}
        },
        find_command = {
            'rg', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case'
        },
        prompt_prefix = " ",
        selection_caret = " ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        file_sorter = require'telescope.sorters'.get_fuzzy_file,
        file_ignore_patterns = {},
        generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
        path_display = {},
        winblend = 0,
        border = {},
        borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
        color_devicons = true,
        use_less = true,
        set_env = {['COLORTERM'] = 'truecolor'},
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
        buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker,
    },
    pickers = {
        find_files = {
            theme = "dropdown",
        }
    },
    mappings = {
        i = {
            ["<esc>"] = actions.close,
        }
    }
}

EOF

"============GitSigns==============

lua << EOF

require('gitsigns').setup {
    signs = {
        add          = {hl = 'GitSignsAdd'   , text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
        change       = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
        delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    },
    signcolumn = true,
    numhl      = false,
    linehl     = false,
    word_diff  = false,
    watch_gitdir = {
        interval = 1000,
        follow_files = true
    },
    attach_to_untracked = true,
    current_line_blame = false,
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol',
        delay = 1000,
        ignore_whitespace = false,
    },
    current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil,
    max_file_length = 40000,
    preview_config = {
        border = 'single',
        style = 'minimal',
        relative = 'cursor',
        row = 0,
        col = 1
    },
    yadm = {
        enable = false
    },
    on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
        end
    end
}

EOF

"=================================
