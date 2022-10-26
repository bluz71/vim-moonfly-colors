local fn = vim.fn
local g = vim.g
local highlight = vim.api.nvim_set_hl

-- Background and foreground
local black = "#080808"
local white = "#c6c6c6"
local bg = black
if g.moonflyTransparent then
  bg = "NONE"
end
-- Variations of charcoal-grey
local grey0 = "#323437"
local grey254 = "#e4e4e4"
local grey249 = "#b2b2b2"
local grey247 = "#9e9e9e"
local grey246 = "#949494"
local grey244 = "#808080"
local grey241 = "#626262"
local grey238 = "#444444"
local grey237 = "#3a3a3a"
local grey236 = "#303030"
local grey235 = "#262626"
local grey234 = "#1c1c1c"
local grey233 = "#121212"
-- Core theme colors
local khaki = "#c2c292"
local yellow = "#e3c78a"
local orange = "#de935f"
local coral = "#f09479"
local lime = "#85dc85"
local green = "#8cc85f"
local emerald = "#36c692"
local blue = "#80a0ff"
local sky = "#74b2ff"
local turquoise = "#79dac8"
local purple = "#ae81ff"
local cranberry = "#e2637f"
local violet = "#d183e8"
local crimson = "#ff5189"
local red = "#ff5454"
-- Extra colors
local spring = "#00875f"

local M = {}

M.core = function()
  highlight(0, "Whitespace", { fg = grey0 })
  highlight(0, "TermCursor", { bg = grey247, fg = black })
  if g.moonflyNormalFloat then
    highlight(0, "NormalFloat", { bg = bg, fg = grey249 })
  else
    highlight(0, "NormalFloat", { bg = grey234, fg = white })
  end
  highlight(0, "FloatBorder", { bg = bg, fg = grey236 })
  highlight(0, "WinBar", { bg = grey235, fg = white })
  highlight(0, "WinBarNC", { bg = grey235, fg = grey247 })
  highlight(0, "WinSeparator", { link = "VertSplit" })

  -- Neovim Treesitter
  highlight(0, "@annotation", { link = "MoonflyViolet" })
  highlight(0, "@attribute", { link = "MoonflySky" })
  highlight(0, "@constant", { link = "MoonflyTurquoise" })
  highlight(0, "@constant.builtin", { link = "MoonflyGreen" })
  highlight(0, "@constant.macro", { link = "MoonflyViolet" })
  highlight(0, "@constructor", { link = "MoonflyEmerald" })
  highlight(0, "@danger", { link = "Todo" })
  highlight(0, "@function.builtin", { link = "MoonflySky" })
  highlight(0, "@function.macro", { link = "MoonflySky" })
  highlight(0, "@include", { link = "MoonflyCranberry" })
  highlight(0, "@keyword.operator", { link = "MoonflyViolet" })
  highlight(0, "@namespace", { link = "MoonflyTurquoise" })
  highlight(0, "@parameter", { link = "MoonflyWhite" })
  highlight(0, "@punctuation.special", { link = "MoonflyCranberry" })
  highlight(0, "@symbol", { link = "MoonflyPurple" })
  highlight(0, "@tag", { link = "MoonflyBlue" })
  highlight(0, "@tag.delimiter", { link = "MoonflyLime" })
  highlight(0, "@variable.builtin", { link = "MoonflyLime" })
  -- Language specific overrides.
  highlight(0, "@parameter.bash", { link = "MoonflyTurquoise" })
  highlight(0, "@punctuation.delimiter.css", { link = "MoonflyCranberry" })
  highlight(0, "@type.css", { link = "MoonflyBlue" })
  highlight(0, "@punctuation.delimiter.scss", { link = "MoonflyCranberry" })
  highlight(0, "@type.scss", { link = "MoonflyBlue" })
  highlight(0, "@variable.scss", { link = "MoonflyTurquoise" })
  highlight(0, "@variable.vim", { link = "MoonflyTurquoise" })
  highlight(0, "@variable.builtin.vim", { link = "MoonflyEmerald" })
  highlight(0, "@field.yaml", { link = "MoonflyBlue" })
  highlight(0, "@punctuation.delimiter.yaml", { link = "MoonflyCranberry" })

  -- Neovim Diagnostic
  highlight(0, "DiagnosticError", { link = "MoonflyRed" })
  highlight(0, "DiagnosticWarn", { link = "MoonflyYellow" })
  highlight(0, "DiagnosticInfo", { link = "MoonflySky" })
  highlight(0, "DiagnosticHint", { link = "MoonflyWhite" })
  if g.moonflyUndercurls then
    highlight(0, "DiagnosticUnderlineError", { link = "MoonflyDiagnosticUndercurlError" })
    highlight(0, "DiagnosticUnderlineWarn", { link = "MoonflyDiagnosticUndercurlWarn" })
    highlight(0, "DiagnosticUnderlineInfo", { link = "MoonflyDiagnosticUndercurlInfo" })
    highlight(0, "DiagnosticUnderlineHint", { link = "MoonflyDiagnosticUndercurlHint" })
  else
    highlight(0, "DiagnosticUnderlineError", { link = "MoonflyDiagnosticUnderlineError" })
    highlight(0, "DiagnosticUnderlineWarn", { link = "MoonflyDiagnosticUnderlineWarn" })
    highlight(0, "DiagnosticUnderlineInfo", { link = "MoonflyDiagnosticUnderlineInfo" })
    highlight(0, "DiagnosticUnderlineHint", { link = "MoonflyDiagnosticUnderlineHint" })
  end
  highlight(0, "DiagnosticVirtualTextError", { link = "MoonflyGrey241" })
  highlight(0, "DiagnosticVirtualTextWarn", { link = "MoonflyGrey241" })
  highlight(0, "DiagnosticVirtualTextInfo", { link = "MoonflyGrey241" })
  highlight(0, "DiagnosticVirtualTextHint", { link = "MoonflyGrey241" })
  highlight(0, "DiagnosticSignError", { link = "MoonflyRedAlert" })
  highlight(0, "DiagnosticSignWarn", { link = "MoonflyYellowAlert" })
  highlight(0, "DiagnosticSignInfo", { link = "MoonflySkyAlert" })
  highlight(0, "DiagnosticSignHint", { link = "MoonflyWhiteAlert" })
  highlight(0, "DiagnosticFloatingError", { link = "MoonflyRed" })
  highlight(0, "DiagnosticFloatingWarn", { link = "MoonflyYellow" })
  highlight(0, "DiagnosticFloatingInfo", { link = "MoonflySky" })
  highlight(0, "DiagnosticFloatingHint", { link = "MoonflyWhite" })
  highlight(0, "LspSignatureActiveParameter", { link = "MoonflyVisual" })
end

return M
