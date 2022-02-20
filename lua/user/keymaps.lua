local keymap = vim.api.nvim_set_keymap
keymap('n', '<c-s>', ':w!<CR>', {})   -- save file
keymap('n', '<c-q>', ':q!<CR>', {})   -- go out of the file 
keymap('n', '<c-e>', ':wq!<CR>', {})  -- save and exit the file
