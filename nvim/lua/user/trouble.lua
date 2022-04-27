local keymap = vim.api.nvim_set_keymap

keymap("n", "<F5>", "<cmd>TroubleToggle<cr>",
{
    silent = true, noremap = true
}
)
