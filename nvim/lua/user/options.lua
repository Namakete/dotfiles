local vim = vim
local opt = vim.opt
local cmd = vim.cmd

cmd('filetype plugin indent on')

local opt = vim.opt

opt.background = "dark"
opt.fileencoding = "utf-8"
opt.mouse = "a"
opt.backup = false
opt.number = true
opt.relativenumber = false
opt.numberwidth = 1
opt.signcolumn = "yes"
opt.modeline = true
opt.showcmd = false
opt.laststatus = 2
opt.wrap = false
opt.scrolloff = 8
opt.completeopt = {'menuone', 'noinsert', 'noselect'}
opt.sidescrolloff = 8
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.cursorcolumn = false
opt.termguicolors = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.incsearch = true
opt.showmatch = true
opt.hlsearch = true
opt.ignorecase = true
opt.autoindent = true
opt.splitbelow = true
opt.splitright = true
opt.clipboard = opt.clipboard + 'unnamedplus'

