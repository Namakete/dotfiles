local map = vim.api.nvim_set_keymap

map('n', '<f2>', ':NERDTreeToggle<CR>', {})

map("n", "<F5>", "<cmd>TroubleToggle<cr>",{silent = true, noremap = true})

map('n', '<f3>', ':Autoformat<CR>', {})

map('n', '<space>g', ':LazyGit<CR>', {silent = true, noremap = true})

map('n', '<C-j>', ':Lspsaga diagnostic_jump_next<CR>', {silent = true, noremap = true})
map('n', 'K', ':Lspsaga hover_doc<CR>', {silent = true, noremap = true})
map('n', '<C-k>', ':Lspsaga signature_help<CR>', {silent = true, noremap = true})
map('n', 'gh', ':Lspsaga lsp_finder<CR>', {silent = true, noremap = true})
map('n', 'gr', ':Lspsaga rename<CR>', {silent = true, noremap = true})
map('n', '<space>ca', ':Lspsaga code_action<CR>', {silent = true, noremap = true})

map('n', '<space>gh', ':Gitsigns preview_hunk<CR>', {silent = true, noremap = true})

map('n', '<space>f', ':Telescope find_files<CR>', {silent = true, noremap = true})
