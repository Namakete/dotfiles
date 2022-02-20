-- Install your plugin here
require('packer').startup(function()
    -- Packer basic plugins
    use 'wbthomason/packer.nvim' -- Packer management plugin
    use 'projekt0n/github-nvim-theme' -- Nvim theme (GitHub)
    use 'kyazdani42/nvim-web-devicons' --  Icons files
    
    -- NERDTree
    use 'https://github.com/preservim/nerdtree' -- File system explorer
    
    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
end)
