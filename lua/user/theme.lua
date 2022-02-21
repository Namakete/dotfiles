
-- Theme style:
-- [DARK]
--    dark
--    dimmed
--    dark_default
--    dark_colorblind
-- [LIGHT]
--    light
--    light_default
--    light_colorblind


-- Example config in Lua
require("github-theme").setup({
  theme_style = "dimmed",
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {hint = "orange", error = "#ff0000"},

  -- Overwrite the highlight groups
  overrides = function(c)
    return {
      htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
      DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
      -- this will remove the highlight groups
      TSField = {},
    }
  end
})


-- Normal text style
require("github-theme").setup({
  comment_style = "NONE",
  keyword_style = "NONE",
  function_style = "NONE",
  variable_style = "NONE"
  -- other config
})


-- Minimal config
require("github-theme").setup({
  dark_sidebar = false,
  -- other config
})

