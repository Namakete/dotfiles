require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {},
        always_divide_middle = true,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'fileformat', 'filetype'},
        lualine_y = {},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {}
}
sections = {
    lualine_a = {
        {
            'fileformat',
            symbols = {
                unix = '',
                dos = '',
                mac = '',
            }
        },
        'diagnostics',
        sources = {
            'nvim_diagnostic',
            'coc'
        },
        sections = {
            'error',
            'warn',
            'info',
            'hint'
        },
        diagnostics_color = {
            error = 'DiagnosticError',
            warn  = 'DiagnosticWarn',
            info  = 'DiagnosticInfo',
            hint  = 'DiagnosticHint',
        },
        symbols = {
            error = 'E',
            warn = 'W',
            info = 'I',
            hint = 'H'
        },
        colored = true,
        update_in_insert = false,
        always_visible = false,
    }
}
