" Copyright (c) Namakete (Ilya Oberemok) <namakete.dev@gmail.com>.
" See the LICENCE file in the repository root for full licence text.
" ------------------------------------------------------------------
" When Vim starts, the 'compatible' option is on. This will be used when Vim starts its
" initializations. But as soon as a user vimrc file is found, or a vimrc file in the current
" directory, or the "VIMINIT" environment variable is set, it will be set to 'nocompatible'.
set nocompatible
" Encoding sets how vim shall represent characters internally. Utf-8 is necessary for most
" flavors of Unicode.
set encoding=utf-8
set termencoding=utf-8
" Automatically indent new lines.
set autoindent
" Automatically write files when changing when multiple files open.
set autowrite
" Deactivate line numbers.
set nonumber
" Disable relative line numbers.
set norelativenumber
" Turn column and row position on in bottom right.
set ruler
set ruf=%12([%{strlen(&ft)?&ft:'none'}]\ %l:%c\ %)
" Show command and insert mode.
set showmode
" TODO: Add comment
set tabstop=2
" TODO: Add comment
set softtabstop=2
" TODO: Add comment
set shiftwidth=2
" TODO: Add comment
set smartindent
" TODO: Add comment
set smarttab
"
if (v:version >= 800)
  " stop vim from silently messing with files that it shouldn't
  set nofixendofline
  " better ascii friendly listchars
  set listchars=space:*,trail:*,nbsp:*,extends:>,precedes:<,tab:\|>
  "set foldmethod=manual
  set nofoldenable
endif
"
set signcolumn=no
" Mark trailing spaces as errors.
match IncSearch '\s\+$'
" Textwidth (or tw): controls the wrap width you would like to use. Use :set tw=72 to set the
" wrap width; by default it's unset and thus disables line-wrapping. If this value is set,
" you're entirely at the whimsy of the below formatoptions, which is often filetype sensitive.
set textwidth=72
" Replace tabs with spaces automatically.
set expandtab
" Disable spell check.
set nospell
" TODO: Add comment
set nobackup
" TODO: Add comment
set noswapfile
" TODO: Add comment
set nowritebackup
" TODO: Add comment
set icon
" Highlight search hits.
set nohlsearch
set incsearch
set linebreak
" The showmatch option is also useful: it can reduce the need for %, the cursor will briefly jump
" to the matching brace when you insert one.
set noshowmatch
" By default, the 'wrapscan' option is on, which means that when "search next" reaches end of file,
" it wraps around to the beginning, and when "search previous" reaches the beginning, it wraps
" around to the end.
set wrapscan
" TODO: Add comment
set hidden
" TODO: Add comment
set history=20
" When expressions span multiple lines, you may want to line up the beginning of those lines with
" the beginning of the expression in the first line.
set cinoptions+=:0
" Allow sensing the filetype.
filetype plugin on
" For syntax highlighting there are two sets of default color maps: One for a light and another one
" for a dark background.
set background=dark

highlight clear

if exists("syntax_on")
  syntax reset
endif

hi Normal                   guibg=bg

hi Function                 ctermbg=NONE ctermfg=lightblue cterm=NONE
hi StorageClass             ctermbg=NONE ctermfg=lightblue cterm=NONE
hi Identifier               ctermbg=NONE ctermfg=lightgreen cterm=NONE
hi Statement                ctermbg=NONE ctermfg=yellow cterm=NONE
hi Comment                  ctermbg=NONE ctermfg=green cterm=NONE
hi Type                     ctermbg=NONE ctermfg=lightgreen cterm=NONE
hi PreProc                  ctermbg=NONE ctermfg=lightblue cterm=NONE
hi Constant                 ctermbg=NONE ctermfg=yellow cterm=NONE
hi String                   ctermbg=NONE ctermfg=magenta cterm=NONE
hi Number                   ctermbg=NONE ctermfg=magenta cterm=NONE
hi Boolean                  ctermbg=NONE ctermfg=darkblue cterm=NONE
hi Character                ctermbg=NONE ctermfg=darkmagenta cterm=NONE
hi Define                   ctermbg=NONE ctermfg=lightmagenta cterm=NONE
hi Macro                    ctermbg=NONE ctermfg=lightmagenta cterm=NONE
hi Structure                ctermbg=NONE ctermfg=lightgreen cterm=NONE

hi TermCursorNC             ctermbg=233 cterm=NONE

hi NormalFloat              ctermbg=NONE ctermfg=239 cterm=NONE
hi EndOfBuffer              ctermbg=NONE ctermfg=235 cterm=NONE

hi LineNr                   ctermbg=NONE ctermfg=235 cterm=NONE
hi LineNrAbove              ctermbg=233 ctermfg=235 cterm=NONE
hi LineNrBelow              ctermbg=233 ctermfg=1 cterm=NONE
hi SignColumn               ctermbg=NONE ctermfg=239 cterm=NONE

hi StatusLine               ctermbg=233 ctermfg=239 cterm=NONE
hi StatusLineNC             ctermbg=233 ctermfg=239 cterm=NONE

hi Pmenu                    ctermbg=233 ctermfg=lightblue cterm=NONE
hi PmenuSel                 ctermbg=232 ctermfg=magenta cterm=NONE
hi PmenuSbar                ctermbg=233 ctermfg=NONE cterm=NONE
hi PmenuThumb               ctermbg=magenta ctermfg=NONE cterm=NONE

hi VertSplit                ctermbg=NONE ctermfg=magenta cterm=NONE

hi ErrorMsg                 ctermbg=NONE ctermfg=darkred cterm=NONE
hi Error                    ctermbg=NONE ctermfg=darkred cterm=NONE

hi Search                   ctermbg=233 ctermfg=darkred cterm=NONE
hi IncSearch                ctermbg=233 ctermfg=darkred cterm=NONE

hi vimGlobal                ctermbg=NONE ctermfg=black cterm=NONE
hi vimTodo                  ctermbg=233 ctermfg=darkred cterm=NONE
hi Todo                     ctermbg=233 ctermfg=darkred cterm=NONE

hi Special                  ctermbg=NONE ctermfg=cyan cterm=NONE
hi SpecialKey               ctermbg=NONE ctermfg=black cterm=NONE
hi Visual                   ctermbg=236 ctermfg=NONE cterm=NONE
hi ModeMsg                  ctermbg=NONE ctermfg=black cterm=NONE
hi MoreMsg                  ctermbg=NONE ctermfg=black cterm=NONE
hi NonText                  ctermbg=NONE ctermfg=black cterm=NONE
hi SpellBad                 ctermbg=NONE ctermfg=NONE cterm=NONE
hi SpellRare                ctermbg=NONE ctermfg=darkred cterm=NONE
hi MatchParen               ctermbg=NONE ctermfg=darkred cterm=NONE
hi CursorLine               ctermbg=234 ctermfg=NONE cterm=NONE

hi DiffChange               ctermbg=233 ctermfg=NONE cterm=NONE
hi DiffAdd                  ctermbg=233 ctermfg=NONE cterm=NONE

hi TroubleInformation       ctermbg=NONE ctermfg=yellow cterm=NONE
hi DiagnosticInfo           ctermbg=NONE ctermfg=yellow cterm=NONE

hi TelescopeBorder          ctermbg=233 ctermfg=233 cterm=NONE
hi TelescopeSelection       ctermbg=233 ctermfg=magenta cterm=NONE

hi CocErrorSign             ctermbg=NONE ctermfg=darkred cterm=NONE
hi CocWarningSign           ctermbg=NONE ctermfg=yellow cterm=NONE
hi CocFloating              ctermbg=233 cterm=NONE
hi CocNotificationProgress  ctermbg=red ctermfg=darkyellow cterm=NONE
hi CocHitFloat              ctermbg=red guifg=234 cterm=NONE
hi CocListSearch            ctermbg=red guifg=234 cterm=NONE
hi CocInlayHint             ctermbg=NONE ctermfg=233 cterm=NONE
hi CocListFgBlue            ctermbg=233 guifg=red cterm=NONE
hi CocMenuSel               ctermbg=232 ctermfg=magenta cterm=NONE
hi CocErrorHighlight        ctermbg=NONE ctermfg=darkred cterm=UNDERLINE
hi CocWarningHighlight      ctermbg=NONE ctermfg=yellow cterm=UNDERLINE
hi CocUnusedHighlight       ctermbg=NONE ctermfg=darkred cterm=NONE
hi CocPumSearch             ctermbg=NONE ctermfg=4 cterm=NONE

map <C-s> :w!<CR>
map <C-q> :q!<CR>
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
nnoremap <leader>ff :Telescope find_files<CR>
map <F1> :set number!<CR>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :Autoformat<CR>
map <F12> :set list!<CR>

" ============================
" vim-plug: Vim plugin manager
" ============================
"
" Download plug.vim for Unix/Linux
"
" Neovim
"   sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"
" Vim
"   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin('~/.vim/plugged')
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
if has("nvim")
  " The Plenary is a Lua module for asynchronous programming using coroutines. This library
  " is built on native lua coroutines and libuv. Coroutines make it easy to avoid callback
  " hell and allow for easy cooperative concurrency and cancellation. Apart from allowing
  " users to perform asynchronous io easily, this library also functions as an abstraction
  " for coroutines.
  Plug 'nvim-lua/plenary.nvim'
  " The NERDTree is a file system explorer for the Vim editor. Using this plugin, users can
  " visually browse complex directory hierarchies, quickly open files for reading or editing,
  " and perform basic file system operations.
  Plug 'scrooloose/nerdtree', {'on':  'NERDTreeToggle'}
  " The vim-pandoc provides facilities to integrate Vim with the pandoc document converter and
  " work with documents written in its markdown variant (although textile documents are also
  " supported).
  Plug 'vim-pandoc/vim-pandoc'
  " Standalone pandoc syntax module, to be used alongside `vim-pandoc`.
  Plug 'rwxrob/vim-pandoc-syntax-simple'
  " Format code with one button press (or automatically on save).
  " This plugin makes use of external formatting programs to achieve the most decent results.
  Plug 'vim-autoformat/vim-autoformat'
  " The Nvim.Coc is an intellisense engine for VIM. (same as in VSCode) This uses language
  " server protocol. A prerequisite for Coc is Node. js as it's written in TypeScript.
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " The Telescope.nvim is a highly extendable fuzzy finder over lists. Built on the latest
  " awesome features from neovim core. Telescope is centered around modularity, allowing
  " for easy customization.
  Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.0'}
  " Gocode is a helper tool which is intended to be integrated with your source code
  " editor, like vim, neovim and emacs.
  Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
  " Build flutter and dart applications in neovim using the native LSP. It adds the ability
  " to easily launch flutter applications, debug them, as well as extending/exposing LSP
  " functionality such as the widget guides, an outline view of your widgets, and hot reloading.
  Plug 'akinsho/flutter-tools.nvim'
  " This plugin adds Go language support for Vim.
  Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
  " Keyword and regex-based syntax highlighting for C and C++11/14/17/20/23 in Vim.
  Plug 'bfrg/vim-cpp-modern'
endif
call plug#end()

let g:cpp_function_highlight = 1
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

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
      \'coc-json',
      \'coc-flutter',
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
      \'coc-docker',
      \'coc-dot-complete',
      \'coc-dash-complete',
      \]

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
    enabled = false,
    open_cmd = "tabedit",
  },
  lsp = {
    color = { -- show the derived colours for dart variables
      enabled = false, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
      background = false, -- highlight the background
      foreground = false, -- highlight the foreground
      virtual_text = true, -- show the highlight using virtual text
      virtual_text_str = "*", -- the virtual text character to highlight
    },
    settings = {
      showTodos = true,
      completeFunctionCalls = true,
      analysisExcludedFolders = {"<path-to-flutter-sdk-packages>"},
      renameFilesWithClasses = "prompt", -- "always"
      enableSnippets = true,
    }
  }
}
EOF

