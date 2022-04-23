require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        "tsx",
        "toml",
        "fish",
        "php",
        "json",
        "yaml",
        "html",
        "scss",
        "dart",
        "lua",
        "latex",
        "make",
        "python",
        "vue",
        "cmake",
        "bash",
        "c_sharp",
        "cpp",
        "fortran",
        "javascript",
    },
    autotag = {
        enable = true,
    }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = {
    "javascript",
    "typescript.tsx"
}
