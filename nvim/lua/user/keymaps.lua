local keymap = vim.api.nvim_set_keymap

keymap('n', '<c-s>', ':w!<CR>', {})     -- Save file
keymap('n', '<c-q>', ':q!<CR>', {})     -- Go out of the file 
keymap('n', '<c-e>', ':wq!<CR>', {})    -- Save and exit the file
keymap('n', '<c-a>', 'gg<S-v>G', {})    -- Select all text
keymap('n', 'w<left>', '<c-w>h', {})    -- Move left window
keymap('n', 'w<right>', '<c-w>l', {})   -- Move right window
keymap('n', 'w<up>', '<c-w>k', {})      -- Move up window
keymap('n', 'w<down>', '<c-w>j', {})    -- Move down window'
keymap('n', '<F7>', ':%s/\r//g', {})
keymap('n', '<F8>', ':make clean<CR>', {})
keymap('n', '<F10>', ':make run<CR>', {})
keymap('n', '<F9>', ':make debug<CR>', {})



