local opts = {
    noremap = true,
    silent = true
}
local term_opts = {
    silent = true
}
local keymap = vim.keymap.set

keymap("n", "<C-s>", ":w!<CR>", opts)
keymap("n", "<C-q>", ":wq!<CR>", opts)
keymap("n", "ss", ":split<Return>", opts)
keymap("n", "sv", ":vsplit<Return>", opts)
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)

keymap('n', '<space>e', vim.diagnostic.open_float)
keymap('n', '[d', vim.diagnostic.goto_prev)
keymap('n', ']d', vim.diagnostic.goto_next)
keymap('n', '<space>q', vim.diagnostic.setloclist)

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        local opts = {
            buffer = ev.buf
        }
        keymap('n', 'K', vim.lsp.buf.hover, opts)
        keymap('n', 'gD', vim.lsp.buf.declaration, opts)
        keymap('n', 'gd', vim.lsp.buf.definition, opts)
        keymap('n', 'gi', vim.lsp.buf.implementation, opts)
        keymap('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        keymap('n', '<space>D', vim.lsp.buf.type_definition, opts)
        keymap({'n', 'v'}, '<space>ca', vim.lsp.buf.code_action, opts)
        keymap('n', 'gr', vim.lsp.buf.references, opts)
        keymap('n', '<space>f', function()
            vim.lsp.buf.format {
                async = true
            }
        end, opts)
    end
})
