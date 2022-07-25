"=================================
"Author: Ilya Oberemok (@namakete) 
"=================================

if has("eval")                               
  let skip_defaults_vim = 1
endif

if has("syntax")
  syntax enable
endif

if v:version >= 580
  hi clear
  set listchars=space:*,trail:*,nbsp:*,extends:>,precedes:<,tab:\|>
  set foldmethod=manual
  set nofoldenable
  if exists("syntax_on")
      syntax reset
  endif
endif

let g:terraform_fmt_on_save = 1

"=============Settigns============

:set encoding=utf-8
:set termencoding=utf-8
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
:set clipboard+=unnamedplus
:set clipboard^=unnamed,unnamedplus

"============Color==============

set background=dark

hi TroubleInformation             ctermbg=NONE ctermfg=yellow cterm=NONE
hi DiagnosticInfo                 ctermbg=NONE ctermfg=yellow cterm=NONE

hi TelescopeBorder                ctermbg=NONE ctermfg=yellow cterm=NONE
hi TelescopeSelection             ctermbg=234 ctermfg=black cterm=NONE 

hi CocErrorSign                   ctermbg=NONE ctermfg=darkred cterm=none
hi CocWarningSign                 ctermbg=NONE ctermfg=yellow cterm=NONE
hi CocFloating                    ctermbg=234 guifg=234 cterm=NONE
hi CocNotificationProgress        ctermbg=NONE guifg=234 cterm=NONE
hi CocHitFloat                    ctermbg=NONE guifg=234 cterm=NONE
hi CocListSearch                  ctermbg=NONE guifg=234 cterm=NONE
hi CocInlayHint                   ctermbg=NONE guifg=234 cterm=NONE
hi CocListFgBlue                  ctermbg=NONE guifg=234 cterm=NONE

hi StatusLine                     ctermfg=239 ctermbg=NONE cterm=NONE
hi StatusLineNC                   ctermfg=239 ctermbg=NONE cterm=NONE
hi Pmenu                          ctermfg=magenta ctermbg=234 cterm=NONE 
hi PmenuSel                       ctermfg=magenta ctermbg=233 cterm=NONE
hi Normal                         ctermbg=NONE
hi NormalFloat                    ctermfg=239 ctermbg=NONE cterm=NONE
hi Visual                         ctermfg=NONE ctermbg=237 cterm=NONE
hi Special                        ctermfg=cyan
hi LineNr                         ctermfg=black ctermbg=NONE cterm=NONE 
hi SpecialKey                     ctermfg=black ctermbg=NONE
hi ModeMsg                        ctermfg=black cterm=NONE ctermbg=NONE
hi MoreMsg                        ctermfg=black ctermbg=NONE
hi NonText                        ctermfg=black ctermbg=NONE
hi vimGlobal                      ctermfg=black ctermbg=NONE
hi ErrorMsg                       ctermbg=NONE ctermfg=darkred cterm=NONE
hi Error                          ctermbg=NONE ctermfg=darkred cterm=NONE
hi SpellBad                       ctermbg=234 ctermfg=NONE cterm=NONE
hi SpellRare                      ctermbg=NONE ctermfg=darkred cterm=NONE
hi Search                         ctermbg=236 ctermfg=darkred
hi vimTodo                        ctermbg=236 ctermfg=darkred
hi Todo                           ctermbg=236 ctermfg=darkred
hi IncSearch                      ctermbg=236 cterm=NONE ctermfg=darkred
hi MatchParen                     ctermbg=236 ctermfg=darkred
hi SignColumn                     ctermfg=239 ctermbg=NONE cterm=NONE 
hi Comment                        ctermfg=239 ctermbg=NONE cterm=NONE

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

"===========Mapping=============

map <C-q> :q!<CR>
map <C-s> :w!<CR>
nmap <C-a> gg<S-v>G
map <F12> :set fdm=indent<CR>
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <F2> :NERDTreeToggle<CR>

"=========Plug Installer==========

if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin('~/.vim/plugged')
  if has("nvim")
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
    Plug 'akinsho/flutter-tools.nvim'
    Plug 'nvim-treesitter/nvim-treesitter'
  endif
call plug#end()

"=======Lsp Servers Config========

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

"=========Telescope Config========

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

"=======Flutter Tools Config=======

lua << EOF

require("flutter-tools").setup {
  ui = {
    border = "rounded",
    notification_style = 'native' ,
  },
  closing_tags = {
    highlight = "ErrorMsg",
    prefix = ">",
    enabled = false
  },
  dev_tools = {
    autostart = false,
    auto_open_browser = false, 
  },
  settings = {
    showTodos = true,
    completeFunctionCalls = true,
    analysisExcludedFolders = {"<path-to-flutter-sdk-packages>"},
    renameFilesWithClasses = "prompt",
    enableSnippets = true,
  },
}

EOF

"================================
lua << EOF

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { 
      "c", 
      "cpp", 
      "c_sharp", 
      "rust", 
      "dart", 
      "lua", 
      "bash", 
      "css", 
      "python", 
      "fish", 
      "go", 
      "json", 
      "php", 
      "scss",
      "vim"},

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

EOF

