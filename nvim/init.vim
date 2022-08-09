"=================================
"Author: Ilya Oberemok (@namakete) 
"=================================

if v:version >= 500
  hi clear
  :set listchars=space:*,trail:*,nbsp:*,extends:>,precedes:<,tab:\|>
  :set foldmethod=manual
  :set nofoldenable
endif

if has("eval")
  let skip_defaults_vim = 1
endif

if has('autocmd')
  filetype plugin indent on
endif

if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

match IncSearch '\s\+$'

let g:terraform_fmt_on_save = 1

"=============Settigns============

:set encoding=utf-8
:set termencoding=utf-8
:set textwidth=72
:set nonumber
:set ruler
:set autoindent
:set autowrite
:set showmode
:set tabstop=2
:set softtabstop=2
:set shiftwidth=2
:set smartindent
:set smarttab
:set expandtab
:set wrapscan
:set nobackup
:set noswapfile
:set nowritebackup
:set norelativenumber
:set icon
:set hlsearch
:set incsearch
:set linebreak
:set cinoptions+=:0
:set clipboard+=unnamedplus
:set ruf=%30(%=%#LineNr#%.50F\ [%{strlen(&ft)?&ft:'none'}]\ %l:%c\ %p%%%)
:set wildmenu
:set ttyfast
:set omnifunc=syntaxcomplete#Complete

"============Color==============

hi Normal ctermbg=NONE
hi NormalFloat ctermfg=239 ctermbg=NONE cterm=NONE
hi EndOfBuffer ctermfg=235 ctermbg=NONE cterm=NONE

hi LineNr ctermfg=235 ctermbg=NONE cterm=NONE 
hi SignColumn ctermfg=239 ctermbg=NONE cterm=NONE 

hi StatusLine ctermfg=239 ctermbg=NONE cterm=NONE
hi StatusLineNC ctermfg=239 ctermbg=NONE cterm=NONE

hi Pmenu ctermfg=magenta ctermbg=234 cterm=NONE 
hi PmenuSel ctermfg=magenta ctermbg=232 cterm=NONE
hi PmenuSbar ctermbg=233 cterm=NONE
hi PmenuThumb ctermbg=magenta cterm=NONE

hi VertSplit ctermfg=234 ctermbg=234 cterm=NONE

hi ErrorMsg ctermbg=NONE ctermfg=darkred cterm=NONE
hi Error ctermbg=NONE ctermfg=darkred cterm=NONE

hi Search ctermbg=233 ctermfg=darkred
hi IncSearch ctermbg=236 cterm=NONE ctermfg=darkred

hi vimGlobal ctermfg=black ctermbg=NONE
hi vimTodo ctermbg=233 ctermfg=darkred
hi Todo ctermbg=236 ctermfg=darkred

hi Special ctermfg=cyan
hi SpecialKey ctermfg=black ctermbg=NONE
hi Visual ctermfg=NONE ctermbg=237 cterm=NONE
hi ModeMsg ctermfg=black cterm=NONE ctermbg=NONE
hi MoreMsg ctermfg=black ctermbg=NONE
hi NonText ctermfg=black ctermbg=NONE
hi SpellBad ctermbg=234 ctermfg=NONE cterm=NONE
hi SpellRare ctermbg=NONE ctermfg=darkred cterm=NONE
hi MatchParen ctermbg=235 ctermfg=darkred
hi Comment ctermfg=239 ctermbg=NONE cterm=NONE
hi CursorLine ctermfg=NONE ctermbg=234 cterm=NONE

hi TroubleInformation ctermbg=NONE ctermfg=yellow cterm=NONE
hi DiagnosticInfo ctermbg=NONE ctermfg=yellow cterm=NONE

hi TelescopeBorder ctermbg=NONE ctermfg=yellow cterm=NONE
hi TelescopeSelection ctermbg=234 ctermfg=black cterm=NONE 

hi CocErrorSign ctermbg=NONE ctermfg=darkred cterm=none
hi CocWarningSign ctermbg=NONE ctermfg=yellow cterm=NONE
hi CocFloating ctermbg=234 guifg=234 cterm=NONE
hi CocNotificationProgress  ctermfg=darkyellow cterm=NONE
hi CocHitFloat ctermbg=NONE guifg=234 cterm=NONE
hi CocListSearch ctermbg=NONE guifg=234 cterm=NONE
hi CocInlayHint ctermbg=NONE guifg=234 cterm=NONE
hi CocListFgBlue ctermbg=NONE guifg=234 cterm=NONE
hi CocMenuSel ctermfg=magenta ctermbg=232 cterm=NONE
hi CocErrorHighlight ctermfg=1 ctermbg=234 cterm=NONE
hi CocUnusedHighlight ctermfg=NONE ctermbg=234 cterm=NONE
hi CocPumSearch ctermfg=4 ctermbg=NONE cterm=NONE

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

"===========Mapping=============

map <C-q> :q!<CR>
map <C-s> :w!<CR>
nmap <C-a> gg<S-v>G
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
nnoremap <leader>ff :Telescope find_files<CR>
map <F1> :set number!<CR>
nnoremap <F2> :NERDTreeToggle<CR>
map <F3> :set list!<CR>

"=========PlugInstaller==========

if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin('~/.vim/plugged')
  if has("nvim")
    Plug 'nvim-lua/plenary.nvim'
    Plug 'scrooloose/nerdtree', {'on':  'NERDTreeToggle'}
    Plug 'frazrepo/vim-rainbow'
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'rwxrob/vim-pandoc-syntax-simple'
    Plug 'tpope/vim-fugitive'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.0'}
    Plug 'vim-test/vim-test'
    Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
    Plug 'akinsho/flutter-tools.nvim'
    Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
  endif
call plug#end()


"=======Lsp Servers Config========

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <silent> g[ <Plug>(coc-diagnostic-prev)
nmap <silent> g] <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>gr <Plug>(coc-rename)
nmap <leader>ca  <Plug>(coc-codeaction-selected)
nnoremap <silent> K :call ShowDocumentation()<CR>
nnoremap <space>a :CocDiagnostics<CR>
nmap <leader>q <Plug>(coc-format)

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

autocmd CursorHold * silent call CocActionAsync('highlight')

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
            \'coc-snippets',
            \'coc-highlight',
            \]

"=========Telescope========

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
        selection_caret = "> ",
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

"=======FlutterTools=======

lua << EOF
require("flutter-tools").setup {
  ui = {
    border = "rounded",
    notification_style = 'native' ,
  },
  closing_tags = {
    highlight = "ErrorMsg",
    prefix = " ",
    enabled = false
  },
  dev_tools = {
    autostart = false,
    auto_open_browser = false, 
  },
  dev_log = {
    enabled = true,
    open_cmd = "tabedit",
  },
  settings = {
    showTodos = true,
    completeFunctionCalls = true,
    analysisExcludedFolders = {"<path-to-flutter-sdk-packages>"},
    renameFilesWithClasses = "prompt",
    enableSnippets = true,
  },
  lsp = {
    color = { 
      enabled = false,
      background = false,
      foreground = false,
      virtual_text = false,
      virtual_text_str = "",
    },
    settings = {
      showTodos = false,
      completeFunctionCalls = true,
      analysisExcludedFolders = {"<path-to-flutter-sdk-packages>"},
      renameFilesWithClasses = "prompt",
      enableSnippets = true,
    }
  }
}
EOF

"=======FlutterTools=======

let g:go_fmt_fail_silently = 0
let g:go_fmt_command = 'goimports'
let g:go_fmt_autosave = 0
let g:go_gopls_enabled = 1
let g:go_auto_sameids = 0
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_diagnostic_errors = 0
let g:go_highlight_diagnostic_warnings = 0
