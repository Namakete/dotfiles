local map = vim.api.nvim_set_keymap

map('n', '<c-s>', ':w!<CR>', {})
map('n', '<c-q>', ':q!<CR>', {})
map('n', '<c-e>', ':wq!<CR>', {})
map('n', '<c-a>', 'gg<S-v>G', {})
map('n', 'w<left>', '<c-w>h', {})
map('n', 'w<right>', '<c-w>l', {})
map('n', 'w<up>', '<c-w>k', {})
map('n', 'w<down>', '<c-w>j', {})
map('n', '<F7>', ':%s/\r//g', {})
map('n', '<F8>', ':make clean<CR>', {})
map('n', '<F10>', ':make run<CR>', {})
map('n', '<F9>', ':make debug<CR>', {})
