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
local grey1 = "#373c4d"
local grey254 = "#e4e4e4"
local grey249 = "#b2b2b2"
local grey247 = "#9e9e9e"
local grey246 = "#949494"
local grey244 = "#808080"
local grey241 = "#626262"
local grey239 = "#4e4e4e"
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
local orchid = "#e196a2"
local lime = "#85dc85"
local green = "#8cc85f"
local emerald = "#36c692"
local blue = "#80a0ff"
local sky = "#74b2ff"
local turquoise = "#79dac8"
local purple = "#ae81ff"
local cranberry = "#e65e72"
local violet = "#cf87e8"
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

  -- Neovim check-health
  highlight(0, "healthSuccess", { link = "DiffAdd" })
  highlight(0, "healthHeadingChar", { link = "MoonflyBlue" })
  highlight(0, "helpHeader", { link = "MoonflyTurquoise" })

  -- Neovim Treesitter
  highlight(0, "@annotation", { link = "MoonflyViolet" })
  highlight(0, "@attribute", { link = "MoonflySky" })
  highlight(0, "@constant", { link = "MoonflyTurquoise" })
  highlight(0, "@constant.builtin", { link = "MoonflyGreen" })
  highlight(0, "@constant.macro", { link = "MoonflyViolet" })
  highlight(0, "@constructor", { link = "MoonflyEmerald" })
  highlight(0, "@danger", { link = "Todo" })
  highlight(0, "@error", { link = "MoonflyRedAlert" })
  highlight(0, "@exception", { link = "MoonflyViolet" })
  highlight(0, "@function.builtin", { link = "MoonflySky" })
  highlight(0, "@function.call", { link = "MoonflySky" })
  highlight(0, "@function.macro", { link = "MoonflySky" })
  highlight(0, "@include", { link = "MoonflyCranberry" })
  highlight(0, "@keyword.operator", { link = "MoonflyViolet" })
  highlight(0, "@namespace", { link = "MoonflyTurquoise" })
  highlight(0, "@none", {})
  highlight(0, "@parameter", { link = "MoonflyOrchid" })
  highlight(0, "@property", { link = "MoonflyTurquoise" })
  highlight(0, "@punctuation.special", { link = "MoonflyCranberry" })
  highlight(0, "@string.regex", { link = "MoonflyTurquoise" })
  highlight(0, "@symbol", { link = "MoonflyPurple" })
  highlight(0, "@tag", { link = "MoonflyBlue" })
  highlight(0, "@tag.attribute", { link = "MoonflyTurquoise" })
  highlight(0, "@tag.delimiter", { link = "MoonflyLime" })
  highlight(0, "@text.danger", { link = "MoonflyRedAlert" })
  highlight(0, "@text.diff.add", { link = "DiffAdd" })
  highlight(0, "@text.diff.delete", { link = "DiffDelete" })
  highlight(0, "@text.emphasis", { fg = orchid, italic = true })
  highlight(0, "@text.environment", { link = "MoonflyCranberry" })
  highlight(0, "@text.environment.name", { link = "MoonflyEmerald" })
  highlight(0, "@text.literal", { link = "String" })
  highlight(0, "@text.math", { link = "MoonflyCranberry" })
  highlight(0, "@text.note", { link = "MoonflyGrey246" })
  highlight(0, "@text.reference", { link = "MoonflyGreen" })
  highlight(0, "@text.strike", { strikethrough = true })
  highlight(0, "@text.strong", { link = "MoonflyOrchid" })
  highlight(0, "@text.title", { link = "MoonflyBlue" })
  highlight(0, "@text.todo", { link = "Todo" })
  highlight(0, "@text.underline", { underline = true })
  highlight(0, "@text.uri", { link = "MoonflyPurple" })
  highlight(0, "@text.warning", { link = "MoonflyYellowAlert" })
  highlight(0, "@type.qualifier", { link = "MoonflyViolet" })
  highlight(0, "@variable", { link = "MoonflyWhite" })
  highlight(0, "@variable.builtin", { link = "MoonflyLime" })
  -- Language specific overrides.
  highlight(0, "@punctuation.delimiter.astro", { link = "MoonflyCranberry" })
  highlight(0, "@text.title.astro", { link = "MoonflyViolet" })
  highlight(0, "@parameter.bash", { link = "MoonflyTurquoise" })
  highlight(0, "@punctuation.delimiter.css", { link = "MoonflyCranberry" })
  highlight(0, "@keyword.gitcommit", { link = "MoonflySky" })
  highlight(0, "@text.reference.gitcommit", { link = "MoonflyBlue" })
  highlight(0, "@text.title.gitcommit", { link = "MoonflyViolet" })
  highlight(0, "@text.uri.gitcommit", { link = "MoonflyEmerald" })
  highlight(0, "@text.title.help", { link = "MoonflySky" })
  highlight(0, "@text.title.html", { link = "MoonflyViolet" })
  highlight(0, "@punctuation.delimiter.scss", { link = "MoonflyCranberry" })
  highlight(0, "@variable.scss", { link = "MoonflyTurquoise" })
  highlight(0, "@text.title.svelte", { link = "MoonflyViolet" })
  highlight(0, "@variable.vim", { link = "MoonflyTurquoise" })
  highlight(0, "@variable.builtin.vim", { link = "MoonflyEmerald" })
  highlight(0, "@text.title.vue", { link = "MoonflyViolet" })
  highlight(0, "@field.yaml", { link = "MoonflyBlue" })
  highlight(0, "@punctuation.delimiter.yaml", { link = "MoonflyCranberry" })

  -- Neovim LSP semantic tokens.
  highlight(0, "@lsp.mod.deprecated", { link = "@constant" })
  highlight(0, "@lsp.mod.readonly", { link = "@constant" })
  highlight(0, "@lsp.mod.typeHint", { link = "@type" })
  highlight(0, "@lsp.type.builtinConstant", { link = "@constant.builtin" })
  highlight(0, "@lsp.type.class", { link = "@type" })
  highlight(0, "@lsp.type.enum", { link = "@type" })
  highlight(0, "@lsp.type.enumMember", { link = "@property" })
  highlight(0, "@lsp.type.interface", { link = "@type" })
  highlight(0, "@lsp.type.keyword", { link = "@keyword" })
  highlight(0, "@lsp.type.magicFunction", { link = "@function.builtin" })
  highlight(0, "@lsp.type.namespace", { link = "@namespace" })
  highlight(0, "@lsp.type.parameter", { link = "@parameter" })
  highlight(0, "@lsp.type.property", { link = "@property" })
  highlight(0, "@lsp.type.selfParameter", { link = "@variable.builtin" })
  highlight(0, "@lsp.type.struct", { link = "@type" })
  highlight(0, "@lsp.type.variable", { link = "@variable" })
  highlight(0, "@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
  highlight(0, "@lsp.typemod.method.defaultLibrary", { link = "@function.builtin" })
  highlight(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
  highlight(0, "@lsp.typemod.variable.global", { link = "@constant" })
  highlight(0, "@lsp.typemod.variable.readonly", { link = "@constant" })
  highlight(0, "@lsp.typemod.variable.static", { link = "@constant" })

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
  if g.moonflyVirtualTextColor then
    highlight(0, "DiagnosticVirtualTextError", { link = "MoonflyDiagnosticVirtualTextError" })
    highlight(0, "DiagnosticVirtualTextWarn", { link = "MoonflyDiagnosticVirtualTextWarn" })
    highlight(0, "DiagnosticVirtualTextInfo", { link = "MoonflyDiagnosticVirtualTextInfo" })
    highlight(0, "DiagnosticVirtualTextHint", { link = "MoonflyDiagnosticVirtualTextHint" })
  else
    highlight(0, "DiagnosticVirtualTextError", { link = "MoonflyGrey241" })
    highlight(0, "DiagnosticVirtualTextWarn", { link = "MoonflyGrey241" })
    highlight(0, "DiagnosticVirtualTextInfo", { link = "MoonflyGrey241" })
    highlight(0, "DiagnosticVirtualTextHint", { link = "MoonflyGrey241" })
  end
  highlight(0, "DiagnosticSignError", { link = "MoonflyRedAlert" })
  highlight(0, "DiagnosticSignWarn", { link = "MoonflyYellowAlert" })
  highlight(0, "DiagnosticSignInfo", { link = "MoonflySkyAlert" })
  highlight(0, "DiagnosticSignHint", { link = "MoonflyWhiteAlert" })
  highlight(0, "DiagnosticFloatingError", { link = "MoonflyRed" })
  highlight(0, "DiagnosticFloatingWarn", { link = "MoonflyYellow" })
  highlight(0, "DiagnosticFloatingInfo", { link = "MoonflySky" })
  highlight(0, "DiagnosticFloatingHint", { link = "MoonflyWhite" })

  -- Neovim LSP
  highlight(0, "LspCodeLens", { link = "MoonflyGrey241" })
  highlight(0, "LspCodeLensSeparator", { link = "MoonflyGrey241" })
  highlight(0, "LspInfoBorder", { link = "FloatBorder" })
  highlight(0, "LspReferenceText", { link = "MoonflyVisual" })
  highlight(0, "LspReferenceRead", { link = "MoonflyVisual" })
  highlight(0, "LspReferenceWrite", { link = "MoonflyVisual" })
  highlight(0, "LspSignatureActiveParameter", { bg = grey236 })
end

M.plugins = function()
  -- NvimTree plugin
  highlight(0, "NvimTreeFolderIcon", { link = "MoonflyBlue" })
  highlight(0, "NvimTreeFolderName", { link = "MoonflyBlue" })
  highlight(0, "NvimTreeIndentMarker", { link = "MoonflyGrey239" })
  highlight(0, "NvimTreeOpenedFolderName", { link = "MoonflyBlue" })
  highlight(0, "NvimTreeRootFolder", { link = "MoonflyPurple" })
  highlight(0, "NvimTreeSpecialFile", { link = "MoonflyYellow" })
  highlight(0, "NvimTreeWindowPicker", { link = "DiffChange" })
  highlight(0, "NvimTreeCursorLine", { bg = grey235 })
  highlight(0, "NvimTreeExecFile", { fg = green })
  highlight(0, "NvimTreeImageFile", { fg = violet })
  highlight(0, "NvimTreeNormal", { bg = grey233, fg = white })
  highlight(0, "NvimTreeOpenedFile", { fg = yellow })
  highlight(0, "NvimTreeSymlink", { fg = turquoise })

  -- Neo-tree plugin
  highlight(0, "NeoTreeDimText", { link = "MoonflyGrey239" })
  highlight(0, "NeoTreeDotfile", { link = "MoonflyGrey236" })
  highlight(0, "NeoTreeGitAdded", { link = "MoonflyGreen" })
  highlight(0, "NeoTreeGitConflict", { link = "MoonflyCrimson" })
  highlight(0, "NeoTreeGitModified", { link = "MoonflyYellow" })
  highlight(0, "NeoTreeGitUntracked", { link = "MoonflyGrey241" })
  highlight(0, "NeoTreeMessage", { link = "MoonflyGrey247" })
  highlight(0, "NeoTreeModified", { link = "MoonflyYellow" })
  highlight(0, "NeoTreeRootName", { link = "MoonflyPurple" })
  highlight(0, "NeoTreeCursorLine", { bg = grey235 })
  highlight(0, "NeoTreeNormal", { bg = grey233, fg = white })

  -- Telescope plugin
  highlight(0, "TelescopeBorder", { link = "FloatBorder" })
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
  --   sign column
  highlight(0, "GitSignsAdd", { link = "MoonflyEmeraldAlert" })
  highlight(0, "GitSignsChange", { link = "MoonflySkyAlert" })
  highlight(0, "GitSignsChangeDelete", { link = "MoonflyCoralAlert" })
  highlight(0, "GitSignsDelete", { link = "MoonflyRedAlert" })
  highlight(0, "GitSignsUntracked", { link = "MoonflyGrey241" })
  --   line highlights
  highlight(0, "GitSignsAddLn", { bg = grey235 })
  highlight(0, "GitSignsChangeLn", { bg = grey234 })
  --   word diff
  highlight(0, "GitSignsAddLnInline", { bg = grey1 })
  highlight(0, "GitSignsChangeLnInline", { bg = grey1 })
  --   word diff in preview
  highlight(0, "GitSignsAddInline", { bg = green, fg = black })
  highlight(0, "GitSignsChangeInline", { bg = yellow, fg = black })
  highlight(0, "GitSignsDeleteInline", { bg = red, fg = black })
  --   misc
  highlight(0, "GitSignsAddPreview", { link = "MoonflyEmeraldLine" })
  highlight(0, "GitSignsDeletePreview", { link = "MoonflyCrimsonLine" })
  highlight(0, "GitSignsDeleteVirtLn", { link = "MoonflyCrimsonLine" })

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
  highlight(0, "BufferCurrentSign", { link = "MoonflyBlueLineActive" })
  highlight(0, "BufferCurrentERROR", { link = "MoonflyRedLineActive" })
  highlight(0, "BufferCurrentWARN", { link = "MoonflyYellowLineActive" })
  highlight(0, "BufferCurrentINFO", { link = "MoonflyBlueLineActive" })
  highlight(0, "BufferCurrentHINT", { link = "MoonflyWhiteLineActive" })
  highlight(0, "BufferTabpages", { bg = grey236, fg = blue })
  highlight(0, "BufferVisible", { link = "MoonflyGrey246Line" })
  highlight(0, "BufferVisibleIndex", { link = "MoonflyGrey246Line" })
  highlight(0, "BufferVisibleMod", { link = "MoonflyYellowLine" })
  highlight(0, "BufferVisibleSign", { link = "MoonflyGrey246Line" })
  highlight(0, "BufferVisibleERROR", { bg = grey234, fg = red })
  highlight(0, "BufferVisibleWARN", { bg = grey234, fg = yellow })
  highlight(0, "BufferVisibleINFO", { bg = grey234, fg = blue })
  highlight(0, "BufferVisibleHINT", { bg = grey234, fg = white })
  highlight(0, "BufferInactive", { bg = grey236, fg = grey246 })
  highlight(0, "BufferInactiveMod", { bg = grey236, fg = yellow })
  highlight(0, "BufferInactiveSign", { bg = grey236, fg = grey247 })
  highlight(0, "BufferInactiveERROR", { bg = grey236, fg = red })
  highlight(0, "BufferInactiveWARN", { bg = grey236, fg = yellow })
  highlight(0, "BufferInactiveINFO", { bg = grey236, fg = blue })
  highlight(0, "BufferInactiveHINT", { bg = grey236, fg = white })
  highlight(0, "BufferAlternate", { link = "BufferCurrent" })
  highlight(0, "BufferAlternateIndex", { link = "BufferCurrentIndex" })
  highlight(0, "BufferAlternateMod", { link = "BufferCurrentMod" })
  highlight(0, "BufferAlternateSign", { link = "BufferCurrentSign" })
  highlight(0, "BufferAlternateERROR", { link = "BufferCurrentERROR" })
  highlight(0, "BufferAlternateWARN", { link = "BufferCurrentWARN" })
  highlight(0, "BufferAlternateINFO", { link = "BufferCurrentINFO" })
  highlight(0, "BufferAlternateHINT", { link = "BufferCurrentHINT" })

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

  -- nvim-notify plugin
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

  -- lazy.nvim plugin
  highlight(0, "LazyCommit", { link = "MoonflyEmerald" })
  highlight(0, "LazyCommitType", { link = "MoonflyViolet" })
  highlight(0, "LazyH1", { link = "MoonflyBlueMode" })
  highlight(0, "LazyProgressDone", { link = "MoonflyBlue" })
  highlight(0, "LazyProgressTodo", { link = "MoonflyGrey0" })
  highlight(0, "LazyReasonCmd", { link = "MoonflyGreen" })
  highlight(0, "LazyReasonPlugin", { link = "MoonflyOrchid" })
  highlight(0, "LazyReasonRuntime", { link = "MoonflyViolet" })
  highlight(0, "LazySpecial", { link = "MoonflyBlue" })
  highlight(0, "LazyButton", { bg = grey235, fg = white })
  highlight(0, "LazyButtonActive", { bg = grey239, fg = grey254 })
  if g.moonflyNormalFloat ~= true then
    highlight(0, "LazyNormal", { bg = grey233, fg = white })
  end

  -- mason.nvim plugin
  highlight(0, "MasonError", { link = "MoonflyRed" })
  highlight(0, "MasonHeader", { link = "MoonflyBlueMode" })
  highlight(0, "MasonHeaderSecondary", { link = "MoonflyBlueMode" })
  highlight(0, "MasonHeading", { link = "MoonflyGrey254" })
  highlight(0, "MasonHighlight", { link = "MoonflyBlue" })
  highlight(0, "MasonHighlightBlock", { link = "MoonflyBlueMode" })
  highlight(0, "MasonHighlightBlockBold", { link = "MoonflyBlueMode" })
  highlight(0, "MasonHighlightBlockBoldSecondary", { link = "MoonflyEmeraldMode" })
  highlight(0, "MasonHighlightBlockSecondary", { link = "MoonflyEmeraldMode" })
  highlight(0, "MasonHighlightSecondary", { link = "MoonflyEmerald" })
  highlight(0, "MasonLink", { link = "MoonflyPurple" })
  highlight(0, "MasonMuted", { link = "MoonflyGrey241" })
  highlight(0, "MasonMutedBlock", { bg = grey235, fg = white })
  highlight(0, "MasonMutedBlockBold", { bg = grey235, fg = grey254 })

  -- linefly plugin
  highlight(0, "LineflyNormal", { link = "MoonflyBlueMode" })
  highlight(0, "LineflyInsert", { link = "MoonflyEmeraldMode" })
  highlight(0, "LineflyVisual", { link = "MoonflyPurpleMode" })
  highlight(0, "LineflyCommand", { link = "MoonflyYellowMode" })
  highlight(0, "LineflyReplace", { link = "MoonflyCrimsonMode" })

  -- lspsaga.nvim plugin
  highlight(0, "TitleString", { link = "MoonflyBlue" })
  highlight(0, "TitleIcon", { link = "MoonflyBlue" })
  highlight(0, "TitleSymbol", { link = "MoonflyBlue" })
  highlight(0, "SagaBorder", { link = "FloatBorder" })
  highlight(0, "SagaNormal", { link = "Normal" })
  highlight(0, "SagaExpand", { link = "MoonflyCranberry" })
  highlight(0, "SagaCollapse", { link = "MoonflyCranberry" })
  highlight(0, "SagaBeacon", { link = "MoonflyPurpleMode" })
  highlight(0, "ActionPreviewTitle", { link = "MoonflyBlue" })
  highlight(0, "CodeActionText", { link = "MoonflyYellow" })
  highlight(0, "CodeActionConceal", { link = "MoonflyGreen" })
  highlight(0, "FinderSelection", { link = "MoonflyTurquoise" })
  highlight(0, "FinderFileName", { link = "MoonflyWhite" })
  highlight(0, "FinderIcon", { link = "MoonflyTurquoise" })
  highlight(0, "FinderType", { link = "MoonflyViolet" })
  highlight(0, "FinderSpinnerTitle", { link = "MoonflyPurple" })
  highlight(0, "FinderSpinner", { link = "MoonflyPurple" })
  highlight(0, "FinderVirtText", { link = "MoonflyRed" })
  highlight(0, "RenameNormal", { link = "MoonflyOrange" })
  highlight(0, "DiagnosticSource", { link = "MoonflyGrey241" })
  highlight(0, "DiagnosticPos", { link = "MoonflyBlue" })
  highlight(0, "CallHierarchyIcon", { link = "MoonflyViolet" })
  highlight(0, "CallHierarchyTitle", { link = "MoonflyCranberry" })
  highlight(0, "SagaShadow", { link = "Normal" })
  highlight(0, "OutlineIndent", { link = "MoonflyPurple" })

  -- Noice plugin
  highlight(0, "NoiceCmdlinePopup", { link = "MoonflyGrey244" })
  highlight(0, "NoiceCmdlinePopupBorder", { link = "MoonflyGrey238" })
  highlight(0, "NoiceCmdlinePopupBorderSearch", { link = "MoonflyGrey238" })
  highlight(0, "NoiceCmdlinePrompt", { link = "MoonflyBlue" })
  highlight(0, "NoiceCompletionItemKindDefault", { link = "MoonflyTurquoise" })
  highlight(0, "NoiceConfirmBorder", { link = "MoonflyBlue" })
  highlight(0, "NoiceFormatTitle", { link = "MoonflyCranberry" })

  -- nvim-navic plugin
  highlight(0, "NavicText", { bg = grey236, fg = grey249 })
  highlight(0, "NavicSeparator", { bg = grey236, fg = white })
  highlight(0, "NavicIconsOperator", { bg = grey236, fg = cranberry })
  highlight(0, "NavicIconsBoolean", { link = "NavicIconsOperator" })
  highlight(0, "NavicIconsClass", { bg = grey236, fg = emerald })
  highlight(0, "NavicIconsConstant", { bg = grey236, fg = orange })
  highlight(0, "NavicIconsConstructor", { bg = grey236, fg = sky })
  highlight(0, "NavicIconsEnum", { bg = grey236, fg = violet })
  highlight(0, "NavicIconsEnumMember", { bg = grey236, fg = turquoise })
  highlight(0, "NavicIconsEvent", { link = "NavicIconsConstant" })
  highlight(0, "NavicIconsField", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsFile", { bg = grey236, fg = blue })
  highlight(0, "NavicIconsFunction", { link = "NavicIconsConstructor" })
  highlight(0, "NavicIconsInterface", { link = "NavicIconsEnum" })
  highlight(0, "NavicIconsKey", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsMethod", { link = "NavicIconsConstructor" })
  highlight(0, "NavicIconsModule", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsNamespace", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsNull", { bg = grey236, fg = green })
  highlight(0, "NavicIconsNumber", { link = "NavicIconsConstant" })
  highlight(0, "NavicIconsObject", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsPackage", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsProperty", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsString", { bg = grey236, fg = khaki })
  highlight(0, "NavicIconsStruct", { link = "NavicIconsClass" })
  highlight(0, "NavicIconsTypeParameter", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsVariable", { link = "NavicIconsEnumMember" })
end

return M
