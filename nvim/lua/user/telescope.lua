local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return
end


local keymap = vim.api.nvim_set_keymap
keymap('n', '<leader>f', ':Telescope find_files<CR>', {noremap = true}) -- Find files
keymap('n', '<leader>b', ':Telescope buffers<CR>', {noremap = true}) -- Buffers

local actions = require "telescope.actions"

telescope.setup {
    defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" },
        selection_strategy = "reset",
        mappings = {
            n = {
                ["q"] = actions.close,
            },
        },
    },
}



