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

M.plugins = function()
  -- NvimTree plugin
  highlight(0, "NvimTreeFolderIcon", { link = "MoonflyBlue" })
  highlight(0, "NvimTreeFolderName", { link = "MoonflyBlue" })
  highlight(0, "NvimTreeIndentMarker", { link = "MoonflyGrey236" })
  highlight(0, "NvimTreeOpenedFolderName", { link = "MoonflyBlue" })
  highlight(0, "NvimTreeRootFolder", { link = "MoonflyPurple" })
  highlight(0, "NvimTreeSpecialFile", { link = "MoonflyYellow" })
  highlight(0, "NvimTreeWindowPicker", { link = "DiffChange" })
  highlight(0, "NvimTreeExecFile", { fg = green })
  highlight(0, "NvimTreeImageFile", { fg = violet })
  highlight(0, "NvimTreeOpenedFile", { fg = yellow })
  highlight(0, "NvimTreeSymlink", { fg = turquoise })

  -- Neo-tree plugin
  highlight(0, "NeoTreeDimText", { link = "MoonflyGrey235" })
  highlight(0, "NeoTreeDotfile", { link = "MoonflyGrey236" })
  highlight(0, "NeoTreeGitAdded", { link = "MoonflyGreen" })
  highlight(0, "NeoTreeGitConflict", { link = "MoonflyCrimson" })
  highlight(0, "NeoTreeGitModified", { link = "MoonflyViolet" })
  highlight(0, "NeoTreeGitUntracked", { link = "MoonflyGrey241" })
  highlight(0, "NeoTreeMessage", { link = "MoonflyGrey247" })
  highlight(0, "NeoTreeModified", { link = "MoonflyYellow" })
  highlight(0, "NeoTreeRootName", { link = "MoonflyPurple" })

  -- Telescope plugin
  highlight(0, "TelescopeBorder", { link = "MoonflyGrey236" })
  highlight(0, "TelescopeMatching", { link = "MoonflyCoral" })
  highlight(0, "TelescopeMultiIcon", { link = "MoonflyCrimson" })
  highlight(0, "TelescopeMultiSelection", { link = "MoonflyEmerald" })
  highlight(0, "TelescopeNormal", { link = "MoonflyGrey249" })
  highlight(0, "TelescopePreviewDate", { link = "MoonflyGrey246" })
  highlight(0, "TelescopePreviewGroup", { link = "MoonflyGrey246" })
  highlight(0, "TelescopePreviewLink", { link = "MoonflyTurquoise" })
  highlight(0, "TelescopePreviewMatch", { link = "MoonflyVisual" })
  highlight(0, "TelescopePreviewRead", { link = "MoonflyOrange" })
  highlight(0, "TelescopePreviewSize", { link = "MoonflyEmerald" })
  highlight(0, "TelescopePreviewUser", { link = "MoonflyGrey246" })
  highlight(0, "TelescopePromptPrefix", { link = "MoonflyBlue" })
  highlight(0, "TelescopeResultsDiffAdd", { link = "MoonflyGreen" })
  highlight(0, "TelescopeResultsDiffChange", { link = "MoonflyRed" })
  highlight(0, "TelescopeResultsDiffDelete", { link = "MoonflyCrimsonLine" })
  highlight(0, "TelescopeResultsSpecialComment", { link = "MoonflyGrey241" })
  highlight(0, "TelescopeSelectionCaret", { link = "MoonflyCrimson" })
  highlight(0, "TelescopeTitle", { link = "MoonflyGrey241" })
  highlight(0, "TelescopeSelection", { bg = grey0, fg = grey254 })

  -- gitsigns.nvim plugin
  highlight(0, "GitSignsAdd", { link = "MoonflyEmeraldAlert" })
  highlight(0, "GitSignsAddLn", { link = "MoonflyGreen" })
  highlight(0, "GitSignsAddPreview", { link = "MoonflyEmeraldLine" })
  highlight(0, "GitSignsChange", { link = "MoonflyYellowAlert" })
  highlight(0, "GitSignsChangeDelete", { link = "MoonflyCoralAlert" })
  highlight(0, "GitSignsChangeLn", { link = "MoonflyYellow" })
  highlight(0, "GitSignsChangeNr", { link = "MoonflyYellowAlert" })
  highlight(0, "GitSignsDelete", { link = "MoonflyRedAlert" })
  highlight(0, "GitSignsDeleteLn", { link = "MoonflyRed" })
  highlight(0, "GitSignsDeletePreview", { link = "MoonflyCrimsonLine" })
  highlight(0, "GitSignsDeleteVirtLn", { link = "MoonflyCrimsonLine" })
  highlight(0, "GitSignsAddInline", { bg = green, fg = black })
  highlight(0, "GitSignsChangeInline", { bg = yellow, fg = black })
  highlight(0, "GitSignsDeleteInline", { bg = red, fg = black })

  -- Hop plugin
  highlight(0, "HopCursor", { link = "IncSearch" })
  highlight(0, "HopNextKey", { link = "MoonflyYellow" })
  highlight(0, "HopNextKey1", { link = "MoonflyBlue" })
  highlight(0, "HopNextKey2", { link = "MoonflyCrimson" })
  highlight(0, "HopUnmatched", { link = "MoonflyGrey247" })

  -- Barbar plugin
  highlight(0, "BufferCurrent", { link = "MoonflyWhiteLineActive" })
  highlight(0, "BufferCurrentIndex", { link = "MoonflyWhiteLineActive" })
  highlight(0, "BufferCurrentMod", { link = "MoonflyYellowLineActive" })
  highlight(0, "BufferTabpages", { link = "MoonflyBlueLine" })
  highlight(0, "BufferVisible", { link = "MoonflyGrey246Line" })
  highlight(0, "BufferVisibleIndex", { link = "MoonflyGrey246Line" })
  highlight(0, "BufferVisibleMod", { link = "MoonflyYellowLine" })
  highlight(0, "BufferVisibleSign", { link = "MoonflyGrey246Line" })
  highlight(0, "BufferCurrentSign", { bg = grey238, fg = blue })
  highlight(0, "BufferInactive", { bg = grey236, fg = grey246 })
  highlight(0, "BufferInactiveMod", { bg = grey236, fg = yellow })
  highlight(0, "BufferInactiveSign", { bg = grey236, fg = grey247 })

  -- Bufferline plugin
  highlight(0, "BufferLineTabSelected", { fg = blue })
  highlight(0, "BufferLineIndicatorSelected", { fg = blue })

  -- nvim-cmp plugin
  highlight(0, "CmpItemAbbrMatch", { link = "MoonflyYellow" })
  highlight(0, "CmpItemAbbrMatchFuzzy", { link = "MoonflyCoral" })
  highlight(0, "CmpItemKind", { link = "MoonflyWhite" })
  highlight(0, "CmpItemKindClass", { link = "MoonflyEmerald" })
  highlight(0, "CmpItemKindColor", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemKindConstant", { link = "MoonflyPurple" })
  highlight(0, "CmpItemKindConstructor", { link = "MoonflySky" })
  highlight(0, "CmpItemKindEnum", { link = "MoonflyViolet" })
  highlight(0, "CmpItemKindEnumMember", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemKindEvent", { link = "MoonflyViolet" })
  highlight(0, "CmpItemKindField", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemKindFile", { link = "MoonflyBlue" })
  highlight(0, "CmpItemKindFolder", { link = "MoonflyBlue" })
  highlight(0, "CmpItemKindFunction", { link = "MoonflySky" })
  highlight(0, "CmpItemKindInterface", { link = "MoonflyEmerald" })
  highlight(0, "CmpItemKindKeyword", { link = "MoonflyViolet" })
  highlight(0, "CmpItemKindMethod", { link = "MoonflySky" })
  highlight(0, "CmpItemKindModule", { link = "MoonflyEmerald" })
  highlight(0, "CmpItemKindOperator", { link = "MoonflyViolet" })
  highlight(0, "CmpItemKindProperty", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemKindReference", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemKindSnippet", { link = "MoonflyGreen" })
  highlight(0, "CmpItemKindStruct", { link = "MoonflyEmerald" })
  highlight(0, "CmpItemKindText", { link = "MoonflyGrey249" })
  highlight(0, "CmpItemKindTypeParameter", { link = "MoonflyEmerald" })
  highlight(0, "CmpItemKindUnit", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemKindValue", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemKindVariable", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemMenu", { link = "MoonflyGrey247" })

  -- Indent Blankline plugin
  highlight(0, "IndentBlanklineChar", { fg = grey235, nocombine = true })
  highlight(0, "IndentBlanklineSpaceChar", { fg = grey235, nocombine = true })
  highlight(0, "IndentBlanklineSpaceCharBlankline", { fg = grey235, nocombine = true })

  -- Mini.nvim plugin
  highlight(0, "MiniCompletionActiveParameter", { link = "MoonflyVisual" })
  highlight(0, "MiniCursorword", { link = "MoonflyUnderline" })
  highlight(0, "MiniCursorwordCurrent", { link = "MoonflyUnderline" })
  highlight(0, "MiniIndentscopePrefix", { link = "MoonflyNoCombine" })
  highlight(0, "MiniIndentscopeSymbol", { link = "MoonflyWhite" })
  highlight(0, "MiniJump", { link = "SpellRare" })
  highlight(0, "MiniStarterCurrent", { link = "MoonflyNoCombine" })
  highlight(0, "MiniStarterFooter", { link = "Title" })
  highlight(0, "MiniStarterHeader", { link = "MoonflyViolet" })
  highlight(0, "MiniStarterInactive", { link = "Comment" })
  highlight(0, "MiniStarterItem", { link = "Normal" })
  highlight(0, "MiniStarterItemBullet", { link = "Delimiter" })
  highlight(0, "MiniStarterItemPrefix", { link = "MoonflyYellow" })
  highlight(0, "MiniStarterQuery", { link = "MoonflySky" })
  highlight(0, "MiniStarterSection", { link = "MoonflyCrimson" })
  highlight(0, "MiniStatuslineModeCommand", { link = "MoonflyYellowMode" })
  highlight(0, "MiniStatuslineModeInsert", { link = "MoonflyEmeraldMode" })
  highlight(0, "MiniStatuslineModeNormal", { link = "MoonflyBlueMode" })
  highlight(0, "MiniStatuslineModeOther", { link = "MoonflyTurquoiseMode" })
  highlight(0, "MiniStatuslineModeReplace", { link = "MoonflyCrimsonMode" })
  highlight(0, "MiniStatuslineModeVisual", { link = "MoonflyPurpleMode" })
  highlight(0, "MiniSurround", { link = "IncSearch" })
  highlight(0, "MiniTablineCurrent", { link = "MoonflyWhiteLineActive" })
  highlight(0, "MiniTablineFill", { link = "TabLineFill" })
  highlight(0, "MiniTablineModifiedCurrent", { link = "MoonflyYellowLineActive" })
  highlight(0, "MiniTablineModifiedVisible", { link = "MoonflyYellowLine" })
  highlight(0, "MiniTablineTabpagesection", { link = "MoonflyBlueMode" })
  highlight(0, "MiniTablineVisible", { link = "MoonflyGrey246Line" })
  highlight(0, "MiniTestEmphasis", { link = "MoonflyUnderline" })
  highlight(0, "MiniTestFail", { link = "MoonflyRed" })
  highlight(0, "MiniTestPass", { link = "MoonflyGreen" })
  highlight(0, "MiniTrailspace", { link = "MoonflyCrimsonMode" })
  highlight(0, "MiniJump2dSpot", { fg = yellow, underline = true, nocombine = true })
  highlight(0, "MiniStatuslineDevinfo", { bg = grey241, fg = white })
  highlight(0, "MiniStatuslineFileinfo", { bg = grey241, fg = white })
  highlight(0, "MiniStatuslineFilename", { bg = grey236, fg = grey247 })
  highlight(0, "MiniStatuslineInactive", { bg = grey236, fg = grey247 })
  highlight(0, "MiniTablineHidden", { bg = grey236, fg = grey246 })
  highlight(0, "MiniTablineModifiedHidden", { bg = grey236, fg = yellow })

  -- Dashboard plugin
  highlight(0, "DashboardCenter", { link = "MoonflyViolet" })
  highlight(0, "DashboardFooter", { link = "MoonflyCoral" })
  highlight(0, "DashboardHeader", { link = "MoonflyBlue" })
  highlight(0, "DashboardShortCut", { link = "MoonflyTurquoise" })

  -- nvim-notify
  highlight(0, "NotifyERRORBorder", { link = "FloatBorder" })
  highlight(0, "NotifyWARNBorder", { link = "FloatBorder" })
  highlight(0, "NotifyINFOBorder", { link = "FloatBorder" })
  highlight(0, "NotifyDEBUGBorder", { link = "FloatBorder" })
  highlight(0, "NotifyTRACEBorder", { link = "FloatBorder" })
  highlight(0, "NotifyERRORIcon", { link = "MoonflyRed" })
  highlight(0, "NotifyWARNIcon", { link = "MoonflyYellow" })
  highlight(0, "NotifyINFOIcon", { link = "MoonflyBlue" })
  highlight(0, "NotifyDEBUGIcon", { link = "MoonflyGrey246" })
  highlight(0, "NotifyTRACEIcon", { link = "MoonflyPurple" })
  highlight(0, "NotifyERRORTitle", { link = "MoonflyRed" })
  highlight(0, "NotifyWARNTitle", { link = "MoonflyYellow" })
  highlight(0, "NotifyINFOTitle", { link = "MoonflyBlue" })
  highlight(0, "NotifyDEBUGTitle", { link = "MoonflyGrey246" })
  highlight(0, "NotifyTRACETitle", { link = "MoonflyPurple" })
end

return M
