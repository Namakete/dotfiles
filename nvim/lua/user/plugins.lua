local packer_installed = vim.fn.exists("g:loaded_packer")
if packer_installed == 0 then
    vim.cmd [[
    packadd packer.nvim
  ]]
end

local packer_status, packer = pcall(require, 'packer')
if not packer_status then
    error('Unable to load Packer. Run PackerInstall to install it.')
    return
end

return packer.startup(function(use)
    use({'wbthomason/packer.nvim'})
    use({'nvim-lua/plenary.nvim'})
    use({'projekt0n/github-nvim-theme'})
    use({'craftzdog/solarized-osaka.nvim'})
    use({'nvim-tree/nvim-web-devicons'})
    use({'lewis6991/gitsigns.nvim'})
    use({'nvim-lualine/lualine.nvim'})
    use({'Exafunction/codeium.vim'})
    use({'nvim-treesitter/nvim-treesitter'})
    use({
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5'
    })
    use({'williamboman/mason.nvim'})
    use({'williamboman/mason-lspconfig.nvim'})
    use({'neovim/nvim-lspconfig'})
    use({'hrsh7th/cmp-nvim-lsp'})
    use({'hrsh7th/cmp-buffer'})
    use({'hrsh7th/cmp-path'})
    use({'hrsh7th/cmp-cmdline'})
    use({'hrsh7th/nvim-cmp'})
    use({'hrsh7th/cmp-vsnip'})
    use({'hrsh7th/vim-vsnip'})
    use({'L3MON4D3/LuaSnip'})
    use({'saadparwaiz1/cmp_luasnip'})
    use({'quangnguyen30192/cmp-nvim-ultisnips'})
    use({'dcampos/nvim-snippy'})
    use({'dcampos/cmp-snippy'})
end)
