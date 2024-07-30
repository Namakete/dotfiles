local M = {}

local utils = require "nvchad.stl.utils"

M.ui = {
  theme = "tokyonight",
  transparency = false,

  statusline = {
    theme = "minimal", -- default | vscode | vscode_colored | minimal
    order = {
      "mode",
      "git",
      "%=",
      "diagnostics",
    },
  },

  telescope = {
    style = "borderless", -- borderless | bordered
  },

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "flat_light", -- default | flat_light | atom | atom_colored
  },

  tabufline = {
    order = { "treeOffset", "buffers", "tabs" },
  },

  -- Color palette:
  -- --------------
  -- black
  -- darker_black
  -- white
  -- black2
  -- one_bg
  -- one_bg2
  -- one_bg3
  -- grey
  -- grey_fg
  -- grey_fg2
  -- light_grey
  -- red
  -- baby_pink
  -- pink
  -- line
  -- green
  -- vibrant_green
  -- nord_blue
  -- blue
  -- yellow
  -- sun
  -- purple
  -- dark_purple
  -- teal
  -- orange
  -- cyan
  -- statusline_bg
  -- lightbg
  -- pmenu_bg
  -- folder_bg

  hl_add = {
    NeoTreeNormal = { bg = "darker_black" },
    NeoTreeFloatTitle = { bg = "red", fg = "darker_black" },
    NeoTreeGitDeleted = { fg = "red" },
    NotifyERRORBorder = { fg = "red" },
    NotifyWARNBorder = { fg = "yellow" },
    NotifyINFOBorder = { fg = "green" },
    NotifyDEBUGBorder = { fg = "magenta" },
    NotifyTRACEBorder = { fg = "green" },
    NotifyERRORIcon = { fg = "red" },
    NotifyWARNIcon = { fg = "yellow" },
    NotifyINFOIcon = { fg = "green" },
    NotifyDEBUGIcon = { fg = "magenta" },
    NotifyTRACEIcon = { fg = "green" },
    NotifyERRORTitle = { fg = "red" },
    NotifyWARNTitle = { fg = "yellow" },
    NotifyINFOTitle = { fg = "green" },
    NotifyDEBUGTitle = { fg = "magenta" },
    NotifyTRACETitle = { fg = "green" },
    InclineNormal = { fg = "dark_purple", bg = "black" },
    InclineNormalNC = { fg = "grey", bg = "black" },
    NoiceCmdlinePopupTitle = { fg = "darker_black", bg = "purple" },
    NoiceCmdlinePopupBorder = { fg = "dark_purple" },
    htmlEndTag = { fg = "blue" },
  },

  nvdash = {
    load_on_startup = true,

    header = {
      "          ૮₍ ˶• ༝ •˶ ₎ა          ",
    },
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
}

return M
