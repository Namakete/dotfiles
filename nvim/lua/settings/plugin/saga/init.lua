local lspsaga = require 'lspsaga'

lspsaga.setup {
    debug = false,
    use_saga_diagnostic_sign = true,
    error_sign = "",
    warn_sign = "",
    infor_sign = "",
    diagnostic_header_icon = "   ",
    code_action_prompt = {enable = true, sign = false, sign_priority = 40, virtual_text = true},
    finder_definition_icon = "  ",
    finder_reference_icon = "  ",
    max_preview_lines = 10,
    finder_action_keys = {
        open = "o",
        vsplit = "s",
        split = "i",
        quit = "q",
        scroll_down = "<C-f>",
        scroll_up = "<C-b>"
    },
    code_action_keys = {quit = "q", exec = "<CR>"},
    rename_action_keys = {quit = "<C-c>", exec = "<CR>"},
    definition_preview_icon = "  ",
    border_style = "round",
    rename_prompt_prefix = "➤",
    diagnostic_prefix_format = "%d. "
}
