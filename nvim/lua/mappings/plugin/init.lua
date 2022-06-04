local map = vim.api.nvim_set_keymap

map('n', '<f2>', ':NERDTreeToggle<CR>', {})

map("n", "<F5>", "<cmd>TroubleToggle<cr>",{silent = true, noremap = true})

map('n', '<f3>', ':Autoformat<CR>', {})

map('n', '<leader>g', ':LazyGit<CR>', {silent = true, noremap = true})

