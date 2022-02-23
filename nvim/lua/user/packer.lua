-- Install your plugin here
require('packer').startup(function()
  -- Packer basic plugins
  use 'wbthomason/packer.nvim'  -- Packer management plugin
  use 'projekt0n/github-nvim-theme' -- Nvim theme (GitHub)
  use 'kyazdani42/nvim-web-devicons'  --  Icons files
  use 'https://github.com/ryanoasis/vim-devicons'
  use 'windwp/nvim-autopairs' -- Autopairs, integrates with both cmp and treesitter
  use 'antoinemadec/FixCursorHold.nvim' -- This is needed to fix lsp doc highlight
  use 'nvim-lualine/lualine.nvim'

  -- NERDTree
  use 'https://github.com/preservim/nerdtree' -- File system explorer

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Autoformat
  use 'https://github.com/vim-autoformat/vim-autoformat' -- Autoformat code

  -- CMP plugin
  use 'hrsh7th/nvim-cmp'  -- The completion plugin
  use 'hrsh7th/cmp-buffer'  -- Buffer completions
  use 'hrsh7th/cmp-path'  -- Path completions
  use 'hrsh7th/cmp-cmdline' -- Cmdline completions
  use 'saadparwaiz1/cmp_luasnip'  -- Snippet completions
  use 'hrsh7th/cmp-nvim-lsp'

  -- LSP
  use 'neovim/nvim-lspconfig' -- Enable LSP
  use 'williamboman/nvim-lsp-installer' -- Simple to use language server installer
  use 'tamago324/nlsp-settings.nvim'  -- Language server settings defined in json for
  use 'jose-elias-alvarez/null-ls.nvim' -- For formatters and linters

  -- Snippets
  use 'L3MON4D3/LuaSnip'  -- Snippet engine
  use 'rafamadriz/friendly-snippets'  -- A bunch of snippets to use

  -- Trouble
  use 'folke/trouble.nvim' -- Debug panel
  require('luasnip.loaders.from_vscode').load()

  -- Terminal
  use 'https://github.com/tc50cal/vim-terminal' -- Terminal in (Neo)vim

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  use 'https://github.com/hankchiutw/flutter-reload.vim'
  use 'dart-lang/dart-vim-plugin'
  use 'thosakwe/vim-flutter'

  use 'https://github.com/rcarriga/nvim-notify'

  use 'lukas-reineke/indent-blankline.nvim'

  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'},
  }
  
end)