local fn = vim.fn
local execute = vim.api.nvim_command

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        'git', 'clone', 'https://github.com/wbthomason/packer.nvim',
        install_path
    })
    execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim'}

    use {'https://github.com/preservim/nerdtree'}

    use {'ellisonleao/gruvbox.nvim'}

    use {'projekt0n/github-nvim-theme'}

    use {'lukas-reineke/indent-blankline.nvim'}

    use {'https://github.com/norcalli/nvim-colorizer.lua'}

    use {'kyazdani42/nvim-web-devicons'}

    use {'https://github.com/ryanoasis/vim-devicons'}

    use {'nvim-lua/plenary.nvim'}

    use {
        'folke/todo-comments.nvim',
        requires = 'nvim-lua/plenary.nvim',
    }

    use {'akinsho/toggleterm.nvim'}

    use {'folke/zen-mode.nvim'}

    use {'nvim-lualine/lualine.nvim'}

    use {'https://github.com/vim-autoformat/vim-autoformat'}

    use {'https://github.com/hrsh7th/nvim-cmp'}

    use {'hrsh7th/cmp-buffer'}

    use {'hrsh7th/cmp-path'}

    use {'hrsh7th/cmp-cmdline'}

    use {'saadparwaiz1/cmp_luasnip'}

    use {'hrsh7th/cmp-nvim-lsp'}

    use {'neovim/nvim-lspconfig'}

    use {'williamboman/nvim-lsp-installer'}

    use {'tamago324/nlsp-settings.nvim'}

    use {'jose-elias-alvarez/null-ls.nvim'}

    use {'tami5/lspsaga.nvim'}

    use {'L3MON4D3/LuaSnip'}

    use {'rafamadriz/friendly-snippets'}

    use {
        'folke/trouble.nvim',
        require('luasnip.loaders.from_vscode').load()
    }

    use {'https://github.com/hankchiutw/flutter-reload.vim'}

    use {'dart-lang/dart-vim-plugin'}

    use {'thosakwe/vim-flutter'}

    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
    }

    use {'https://github.com/kdheepak/lazygit.nvim'}
end)
