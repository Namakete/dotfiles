return {
  {
    "stevearc/conform.nvim",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",
        "vimdoc",
        "make",
        "luadoc",
        "markdown",
        "markdown_inline",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "jsx",
        "prisma",

        -- some languages
        "dart",
        "java",
        "go",
        "rust",
        "php",
        "python",
        "json",
        "yaml",
        "toml",
        "graphql",
        "zig",

        -- low level
        "c",
        "cpp",
        "zig",
      },
    },
  },
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()',
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "Trouble" },
    config = function()
      require("trouble").setup()
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    cmd = {
      "Neotree",
    },
    config = function()
      require("neo-tree").setup {
        close_if_last_window = true,
        popup_border_style = "solid",
        enable_git_status = true,
        enable_modified_markers = true,
        enable_diagnostics = true,
        sort_case_insensitive = true,
        default_component_configs = {
          indent = {
            with_markers = true,
            with_expanders = true,
          },
          modified = {
            symbol = " ",
            highlight = "NeoTreeModified",
          },
          icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "",
            folder_empty_open = "",
          },
          git_status = {
            symbols = {
              added = "",
              deleted = "",
              modified = "",
              renamed = "",
              untracked = "",
              ignored = "",
              unstaged = "",
              staged = "",
              conflict = "",
            },
          },
        },
        window = {
          position = "float",
          width = 40,
        },
        filesystem = {
          use_libuv_file_watcher = true,
          filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_by_name = {
              "node_modules",
              ".git",
              ".vscode",
              ".intellij",
            },
            never_show = {
              ".DS_Store",
              "thumbs.db",
            },
          },
        },
        event_handlers = {
          {
            event = "neo_tree_window_after_open",
            handler = function(args)
              if args.position == "left" or args.position == "right" then
                vim.cmd "wincmd ="
              end
            end,
          },
          {
            event = "neo_tree_window_after_close",
            handler = function(args)
              if args.position == "left" or args.position == "right" then
                vim.cmd "wincmd ="
              end
            end,
          },
        },
      }
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      enabled = false,
    },
  },
  {
    "terrortylor/nvim-comment",
    cmd = {
      "CommentToggle",
    },
    config = function()
      require("nvim_comment").setup()
    end,
  },
  {
    "razak17/tailwind-fold.nvim",
    cmd = {
      "TailwindFoldToggle",
    },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("tailwind-fold").setup() {
        ft = { "html", "svelte", "astro", "vue", "typescriptreact", "php", "blade" },
      }
    end,
  },
}
