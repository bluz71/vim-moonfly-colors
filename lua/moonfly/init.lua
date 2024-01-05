local g = vim.g
local highlight = vim.api.nvim_set_hl

local none = "NONE"
-- Background and foreground
local black = "#080808"
local white = "#c6c6c6"
local bg = black
if g.moonflyTransparent then
  bg = none
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
local mineral = "#314940"
local bay = "#4d5d8d"

local M = {}

M.palette = {
  black = black,
  white = white,
  bg = bg,
  grey0 = grey0,
  grey1 = grey1,
  grey254 = grey254,
  grey249 = grey249,
  grey247 = grey247,
  grey246 = grey246,
  grey244 = grey244,
  grey241 = grey241,
  grey239 = grey239,
  grey238 = grey238,
  grey237 = grey237,
  grey236 = grey236,
  grey235 = grey235,
  grey234 = grey234,
  grey233 = grey233,
  khaki = khaki,
  yellow = yellow,
  orange = orange,
  coral = coral,
  orchid = orchid,
  lime = lime,
  green = green,
  emerald = emerald,
  blue = blue,
  sky = sky,
  turquoise = turquoise,
  purple = purple,
  cranberry = cranberry,
  violet = violet,
  crimson = crimson,
  red = red,
  spring = spring,
}

M.style = function()
  -------------------------------------------------------------------------
  -- Custom styling groups
  -------------------------------------------------------------------------

  highlight(0, "MoonflyVisual", { bg = grey0 })
  highlight(0, "MoonflyWhite", { fg = white })
  highlight(0, "MoonflyGrey0", { fg = grey0 })
  highlight(0, "MoonflyGrey254", { fg = grey254 })
  highlight(0, "MoonflyGrey249", { fg = grey249 })
  highlight(0, "MoonflyGrey247", { fg = grey247 })
  highlight(0, "MoonflyGrey246", { fg = grey246 })
  highlight(0, "MoonflyGrey241", { fg = grey241 })
  highlight(0, "MoonflyGrey239", { fg = grey239 })
  highlight(0, "MoonflyGrey238", { fg = grey238 })
  highlight(0, "MoonflyGrey237", { fg = grey237 })
  highlight(0, "MoonflyGrey236", { fg = grey236 })
  highlight(0, "MoonflyGrey235", { fg = grey235 })
  highlight(0, "MoonflyKhaki", { fg = khaki })
  highlight(0, "MoonflyYellow", { fg = yellow })
  highlight(0, "MoonflyOrange", { fg = orange })
  highlight(0, "MoonflyCoral", { fg = coral })
  highlight(0, "MoonflyOrchid", { fg = orchid })
  highlight(0, "MoonflyLime", { fg = lime })
  highlight(0, "MoonflyGreen", { fg = green })
  highlight(0, "MoonflyEmerald", { fg = emerald })
  highlight(0, "MoonflyBlue", { fg = blue })
  highlight(0, "MoonflySky", { fg = sky })
  highlight(0, "MoonflyTurquoise", { fg = turquoise })
  highlight(0, "MoonflyPurple", { fg = purple })
  highlight(0, "MoonflyCranberry", { fg = cranberry })
  highlight(0, "MoonflyViolet", { fg = violet })
  highlight(0, "MoonflyCrimson", { fg = crimson })
  highlight(0, "MoonflyRed", { fg = red })
  -- Misc helpers
  highlight(0, "MoonflyUnderline", { underline = true })
  highlight(0, "MoonflyNoCombine", { nocombine = true })
  -- Statusline helper colors
  highlight(0, "MoonflyBlueMode", { bg = blue, fg = grey234 })
  highlight(0, "MoonflyEmeraldMode", { bg = emerald, fg = grey234 })
  highlight(0, "MoonflyPurpleMode", { bg = purple, fg = grey234 })
  highlight(0, "MoonflyCrimsonMode", { bg = crimson, fg = grey234 })
  highlight(0, "MoonflyYellowMode", { bg = yellow, fg = grey234 })
  highlight(0, "MoonflyTurquoiseMode", { bg = turquoise, fg = grey234 })
  -- Generic line helper colors
  highlight(0, "MoonflyCrimsonLine", { bg = grey236, fg = crimson })
  highlight(0, "MoonflyEmeraldLine", { bg = grey236, fg = emerald })
  highlight(0, "MoonflyGrey246Line", { bg = grey234, fg = grey246 })
  highlight(0, "MoonflyYellowLine", { bg = grey234, fg = yellow })
  highlight(0, "MoonflyBlueLineActive", { bg = grey238, fg = blue })
  highlight(0, "MoonflyRedLineActive", { bg = grey238, fg = red })
  highlight(0, "MoonflyWhiteLineActive", { bg = grey238, fg = grey254 })
  highlight(0, "MoonflyYellowLineActive", { bg = grey238, fg = yellow })

  -------------------------------------------------------------------------
  -- Standard styling
  -------------------------------------------------------------------------

  -- Specify the colors used by the inbuilt terminal
  if g.moonflyTerminalColors then
    g.terminal_color_0 = grey0
    g.terminal_color_1 = red
    g.terminal_color_2 = green
    g.terminal_color_3 = yellow
    g.terminal_color_4 = blue
    g.terminal_color_5 = violet
    g.terminal_color_6 = turquoise
    g.terminal_color_7 = white
    g.terminal_color_8 = grey246
    g.terminal_color_9 = crimson
    g.terminal_color_10 = emerald
    g.terminal_color_11 = khaki
    g.terminal_color_12 = sky
    g.terminal_color_13 = purple
    g.terminal_color_14 = lime
    g.terminal_color_15 = grey254
  end

  -- Background and text
  highlight(0, "Normal", { bg = bg, fg = white })

  -- Color of mode text, -- INSERT --
  highlight(0, "ModeMsg", { fg = grey247 })

  -- Comments
  if g.moonflyItalics then
    highlight(0, "Comment", { fg = grey246, italic = true })
  else
    highlight(0, "Comment", { link = "MoonflyGrey246" })
  end

  -- Functions
  highlight(0, "Function", { link = "MoonflySky" })

  -- Strings
  highlight(0, "String", { link = "MoonflyKhaki" })

  -- Booleans
  highlight(0, "Boolean", { link = "MoonflyCranberry" })

  -- Identifiers
  highlight(0, "Identifier", { link = "MoonflyTurquoise" })

  -- Color of titles
  highlight(0, "Title", { fg = orange })

  -- const, static
  highlight(0, "StorageClass", { link = "MoonflyCoral" })

  -- void, intptr_t
  highlight(0, "Type", { fg = emerald })

  -- Numbers
  highlight(0, "Constant", { link = "MoonflyOrange" })

  -- Character constants
  highlight(0, "Character", { link = "MoonflyPurple" })

  -- Exceptions
  highlight(0, "Exception", { link = "MoonflyCrimson" })

  -- ifdef/endif
  highlight(0, "PreProc", { link = "MoonflyCranberry" })

  -- case in switch statement
  highlight(0, "Label", { link = "MoonflyTurquoise" })

  -- end-of-line '$', end-of-file '~'
  highlight(0, "NonText", { fg = grey241 })

  -- sizeof
  highlight(0, "Operator", { link = "MoonflyCranberry" })

  -- for, while
  highlight(0, "Repeat", { link = "MoonflyViolet" })

  -- Search
  highlight(0, "Search", { bg = grey1, fg = grey254 })
  highlight(0, "CurSearch", { bg = coral, fg = black })
  highlight(0, "IncSearch", { bg = yellow, fg = black })

  -- '\n' sequences
  highlight(0, "Special", { link = "MoonflyCranberry" })

  -- if, else
  highlight(0, "Statement", { fg = violet })

  -- struct, union, enum, typedef
  highlight(0, "Structure", { link = "MoonflyBlue" })

  -- Status, split and tab lines
  highlight(0, "StatusLine", { bg = grey236, fg = white })
  highlight(0, "StatusLineNC", { bg = grey236, fg = grey247 })
  highlight(0, "Tabline", { bg = grey236, fg = grey247 })
  highlight(0, "TablineSel", { bg = grey234, fg = blue })
  highlight(0, "TablineSelSymbol", { bg = grey234, fg = emerald })
  highlight(0, "TablineFill", { bg = grey236, fg = grey236 })
  highlight(0, "StatusLineTerm", { bg = grey236, fg = white })
  highlight(0, "StatusLineTermNC", { bg = grey236, fg = grey247 })
  if g.moonflyWinSeparator == 0 then
    highlight(0, "VertSplit", { bg = black, fg = black })
  elseif g.moonflyWinSeparator == 1 then
    highlight(0, "VertSplit", { bg = grey236, fg = grey236 })
  else
    highlight(0, "VertSplit", { bg = none, fg = grey236 })
  end

  -- Visual selection
  highlight(0, "Visual", { link = "MoonflyVisual" })
  highlight(0, "VisualNOS", { bg = grey0, fg = white })

  -- Errors, warnings and whitespace-eol
  highlight(0, "Error", { bg = bg, fg = red })
  highlight(0, "ErrorMsg", { bg = bg, fg = red })
  highlight(0, "WarningMsg", { bg = bg, fg = orange })

  -- Auto-text-completion menu
  highlight(0, "Pmenu", { bg = grey235, fg = white })
  highlight(0, "PmenuSel", { bg = spring, fg = grey254 })
  highlight(0, "PmenuSbar", { bg = grey235 })
  highlight(0, "PmenuThumb", { bg = grey244 })
  highlight(0, "WildMenu", { bg = spring, fg = grey254 })

  -- Spelling errors
  if g.moonflyUndercurls then
    highlight(0, "SpellBad", { bg = none, undercurl = true, sp = red })
    highlight(0, "SpellCap", { bg = none, undercurl = true, sp = blue })
    highlight(0, "SpellRare", { bg = none, undercurl = true, sp = yellow })
    highlight(0, "SpellLocal", { bg = none, undercurl = true, sp = sky })
  else
    highlight(0, "SpellBad", { bg = none, fg = red, underline = true, sp = red })
    highlight(0, "SpellCap", { bg = none, fg = blue, underline = true, sp = blue })
    highlight(0, "SpellRare", { bg = none, fg = yellow, underline = true, sp = yellow })
    highlight(0, "SpellLocal", { bg = none, fg = sky, underline = true, sp = sky })
  end

  -- Misc
  highlight(0, "Question", { fg = lime })
  highlight(0, "MoreMsg", { fg = red })
  highlight(0, "LineNr", { bg = bg, fg = grey241 })
  if g.moonflyCursorColor then
    highlight(0, "Cursor", { fg = bg, bg = blue })
  else
    highlight(0, "Cursor", { fg = bg, bg = grey247 })
  end
  highlight(0, "lCursor", { fg = bg, bg = grey247 })
  highlight(0, "CursorLineNr", { bg = grey234, fg = blue })
  highlight(0, "CursorColumn", { bg = grey234 })
  highlight(0, "CursorLine", { bg = grey234 })
  highlight(0, "Folded", { bg = grey234, fg = lime })
  highlight(0, "FoldColumn", { bg = grey236, fg = lime })
  highlight(0, "SignColumn", { bg = bg, fg = lime })
  highlight(0, "Todo", { bg = grey235, fg = yellow })
  highlight(0, "SpecialKey", { bg = bg, fg = sky })
  if g.moonflyUnderlineMatchParen then
    highlight(0, "MatchParen", { bg = bg, underline = true })
  else
    highlight(0, "MatchParen", { link = "MoonflyVisual" })
  end
  highlight(0, "Ignore", { link = "MoonflySky" })
  highlight(0, "Underlined", { fg = emerald })
  highlight(0, "QuickFixLine", { bg = grey237 })
  highlight(0, "Delimiter", { link = "MoonflyWhite" })
  highlight(0, "qfFileName", { link = "MoonflyEmerald" })

  -- Color column (after line 80)
  highlight(0, "ColorColumn", { bg = grey233 })

  -- Conceal color
  highlight(0, "Conceal", { bg = none, fg = grey249 })

  -- nvim -d
  highlight(0, "DiffAdd", { bg = mineral })
  highlight(0, "DiffChange", { bg = grey236 })
  highlight(0, "DiffDelete", { bg = grey236, fg = grey241 })
  highlight(0, "DiffText", { bg = bay })

  -------------------------------------------------------------------------
  -- Neovim standard styling
  -------------------------------------------------------------------------

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

  -- Neovim Tree-sitter
  highlight(0, "@annotation", { link = "MoonflyViolet" })
  highlight(0, "@attribute", { link = "MoonflySky" })
  highlight(0, "@constant", { link = "MoonflyTurquoise" })
  highlight(0, "@constant.builtin", { link = "MoonflyGreen" })
  highlight(0, "@constant.macro", { link = "MoonflyViolet" })
  highlight(0, "@constructor", { link = "MoonflyEmerald" })
  highlight(0, "@danger", { link = "Todo" })
  highlight(0, "@error", { link = "MoonflyRed" })
  highlight(0, "@exception", { link = "MoonflyViolet" })
  highlight(0, "@function.builtin", { link = "MoonflySky" })
  highlight(0, "@function.call", { link = "MoonflySky" })
  highlight(0, "@function.macro", { link = "MoonflySky" })
  highlight(0, "@include", { link = "MoonflyCranberry" })
  highlight(0, "@keyword.operator", { link = "MoonflyViolet" })
  highlight(0, "@namespace", { link = "MoonflyTurquoise" })
  highlight(0, "@namespace.builtin", { link = "MoonflyLime" })
  highlight(0, "@none", {})
  highlight(0, "@parameter", { link = "MoonflyOrchid" })
  highlight(0, "@parameter.builtin", { link = "MoonflyOrchid" })
  highlight(0, "@property", { link = "MoonflyTurquoise" })
  highlight(0, "@punctuation.special", { link = "MoonflyCranberry" })
  highlight(0, "@string.regex", { link = "MoonflyTurquoise" })
  highlight(0, "@symbol", { link = "MoonflyPurple" })
  highlight(0, "@tag", { link = "MoonflyBlue" })
  highlight(0, "@tag.attribute", { link = "MoonflyTurquoise" })
  highlight(0, "@tag.delimiter", { link = "MoonflyLime" })
  highlight(0, "@text.danger", { link = "MoonflyRed" })
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
  highlight(0, "@text.title", { link = "MoonflyViolet" })
  highlight(0, "@text.todo", { link = "Todo" })
  highlight(0, "@text.underline", { underline = true })
  highlight(0, "@text.uri", { link = "MoonflyPurple" })
  highlight(0, "@text.warning", { link = "MoonflyYellow" })
  highlight(0, "@type.builtin", { link = "MoonflyEmerald" })
  highlight(0, "@type.qualifier", { link = "MoonflyViolet" })
  highlight(0, "@variable", { link = "MoonflyWhite" })
  highlight(0, "@variable.builtin", { link = "MoonflyLime" })
  -- Language specific Tree-sitter overrides.
  highlight(0, "@field.yaml", { link = "MoonflyBlue" })
  highlight(0, "@keyword.gitcommit", { link = "MoonflySky" })
  highlight(0, "@parameter.bash", { link = "MoonflyTurquoise" })
  highlight(0, "@punctuation.delimiter.astro", { link = "MoonflyCranberry" })
  highlight(0, "@punctuation.delimiter.css", { link = "MoonflyCranberry" })
  highlight(0, "@punctuation.delimiter.rust", { link = "MoonflyCranberry" })
  highlight(0, "@punctuation.delimiter.scss", { link = "MoonflyCranberry" })
  highlight(0, "@punctuation.delimiter.yaml", { link = "MoonflyCranberry" })
  highlight(0, "@storageclass.rust", { link = "MoonflyViolet" })
  highlight(0, "@text.literal.vimdoc", { link = "MoonflyOrchid" })
  highlight(0, "@text.literal.block.vimdoc", { link = "MoonflyGreen" })
  highlight(0, "@text.reference.gitcommit", { link = "MoonflyBlue" })
  highlight(0, "@text.title.1.markdown", { link = "MoonflyEmerald" })
  highlight(0, "@text.title.1.marker.markdown", { link = "MoonflyCrimson" })
  highlight(0, "@text.title.1.vimdoc", { link = "MoonflyBlue" })
  highlight(0, "@text.title.2.markdown", { link = "MoonflyBlue" })
  highlight(0, "@text.title.2.marker.markdown", { link = "MoonflyCrimson" })
  highlight(0, "@text.title.2.vimdoc", { link = "MoonflyBlue" })
  highlight(0, "@text.title.3.markdown", { link = "MoonflyTurquoise" })
  highlight(0, "@text.title.3.marker.markdown", { link = "MoonflyCrimson" })
  highlight(0, "@text.title.4.markdown", { link = "MoonflyOrange" })
  highlight(0, "@text.title.4.marker.markdown", { link = "MoonflyCrimson" })
  highlight(0, "@text.title.5.markdown", { link = "MoonflySky" })
  highlight(0, "@text.title.5.marker.markdown", { link = "MoonflyCrimson" })
  highlight(0, "@text.title.6.markdown", { link = "MoonflyViolet" })
  highlight(0, "@text.title.6.marker.markdown", { link = "MoonflyCrimson" })
  highlight(0, "@text.title.help", { link = "MoonflySky" })
  highlight(0, "@text.title.markdown", { link = "MoonflySky" })
  highlight(0, "@text.uri.gitcommit", { link = "MoonflyEmerald" })
  if g.moonflyItalics then
    highlight(0, "@text.uri.astro", { fg = violet, italic = true })
    highlight(0, "@text.uri.html", { fg = violet, italic = true })
    highlight(0, "@text.uri.svelte", { fg = violet, italic = true })
    highlight(0, "@text.uri.vue", { fg = violet, italic = true })
  else
    highlight(0, "@text.uri.astro", { link = "MoonflyViolet" })
    highlight(0, "@text.uri.html", { link = "MoonflyViolet" })
    highlight(0, "@text.uri.svelte", { link = "MoonflyViolet" })
    highlight(0, "@text.uri.vue", { link = "MoonflyViolet" })
  end
  highlight(0, "@variable.scss", { link = "MoonflyTurquoise" })
  highlight(0, "@variable.vim", { link = "MoonflyTurquoise" })
  highlight(0, "@variable.builtin.vim", { link = "MoonflyEmerald" })

  -- Neovim LSP semantic highlights.
  highlight(0, "@lsp.mod.deprecated", { link = "@constant" })
  highlight(0, "@lsp.mod.readonly", { link = "@constant" })
  highlight(0, "@lsp.mod.typeHint", { link = "@type" })
  highlight(0, "@lsp.type.boolean", { link = "@boolean" })
  highlight(0, "@lsp.type.builtinConstant", { link = "@constant.builtin" })
  highlight(0, "@lsp.type.builtinType", { link = "@type" })
  highlight(0, "@lsp.type.class", { link = "@type" })
  highlight(0, "@lsp.type.enum", { link = "@type" })
  highlight(0, "@lsp.type.enumMember", { link = "@property" })
  highlight(0, "@lsp.type.escapeSequence", { link = "@string.escape" })
  highlight(0, "@lsp.type.formatSpecifier", { link = "@punctuation.special" })
  highlight(0, "@lsp.type.generic", { link = "@variable" })
  highlight(0, "@lsp.type.interface", { link = "@type" })
  highlight(0, "@lsp.type.keyword", { link = "@keyword" })
  highlight(0, "@lsp.type.lifetime", { link = "@storageclass" })
  highlight(0, "@lsp.type.magicFunction", { link = "@function" })
  highlight(0, "@lsp.type.namespace", { link = "@namespace" })
  highlight(0, "@lsp.type.number", { link = "@number" })
  highlight(0, "@lsp.type.operator", { link = "@operator" })
  highlight(0, "@lsp.type.parameter", { link = "@parameter" })
  highlight(0, "@lsp.type.property", { link = "@property" })
  highlight(0, "@lsp.type.selfKeyword", { link = "@variable.builtin" })
  highlight(0, "@lsp.type.selfParameter", { link = "@variable.builtin" })
  highlight(0, "@lsp.type.string", { link = "@string" })
  highlight(0, "@lsp.type.struct", { link = "@type" })
  highlight(0, "@lsp.type.typeAlias", { link = "@type.definition" })
  highlight(0, "@lsp.type.unresolvedReference", { link = "@error" })
  highlight(0, "@lsp.type.variable", { link = "@variable" })
  highlight(0, "@lsp.typemod.class.defaultLibrary", { link = "@type" })
  highlight(0, "@lsp.typemod.enum.defaultLibrary", { link = "@type" })
  highlight(0, "@lsp.typemod.enumMember.defaultLibrary", { link = "@constant.builtin" })
  highlight(0, "@lsp.typemod.function.defaultLibrary", { link = "@function" })
  highlight(0, "@lsp.typemod.keyword.async", { link = "@keyword" })
  highlight(0, "@lsp.typemod.keyword.injected", { link = "@keyword" })
  highlight(0, "@lsp.typemod.method.defaultLibrary", { link = "@function" })
  highlight(0, "@lsp.typemod.operator.injected", { link = "@operator" })
  highlight(0, "@lsp.typemod.string.injected", { link = "@string" })
  highlight(0, "@lsp.typemod.struct.defaultLibrary", { link = "@type" })
  highlight(0, "@lsp.typemod.variable.callable", { link = "@function" })
  highlight(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
  highlight(0, "@lsp.typemod.variable.global", { link = "@constant" })
  highlight(0, "@lsp.typemod.variable.injected", { link = "@variable" })
  highlight(0, "@lsp.typemod.variable.readonly", { link = "@constant" })
  highlight(0, "@lsp.typemod.variable.static", { link = "@constant" })
  -- Language specific LSP semantic overrides.
  highlight(0, "@lsp.type.macro.rust", { link = "@function" })
  highlight(0, "@lsp.type.parameter.dockerfile", { link = "@property" })
  highlight(0, "@lsp.type.variable.dockerfile", { link = "@function" })

  -- Neovim Diagnostic
  highlight(0, "DiagnosticError", { link = "MoonflyRed" })
  highlight(0, "DiagnosticWarn", { link = "MoonflyYellow" })
  highlight(0, "DiagnosticInfo", { link = "MoonflySky" })
  highlight(0, "DiagnosticHint", { link = "MoonflyWhite" })
  highlight(0, "DiagnosticOk", { link = "MoonflyEmerald" })
  if g.moonflyUndercurls then
    highlight(0, "DiagnosticUnderlineError", { undercurl = true, sp = red })
    highlight(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = yellow })
    highlight(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = sky })
    highlight(0, "DiagnosticUnderlineHint", { undercurl = true, sp = white })
    highlight(0, "DiagnosticUnderlineOk", { undercurl = true, sp = emerald })
  else
    highlight(0, "DiagnosticUnderlineError", { underline = true, sp = red })
    highlight(0, "DiagnosticUnderlineWarn", { underline = true, sp = yellow })
    highlight(0, "DiagnosticUnderlineInfo", { underline = true, sp = sky })
    highlight(0, "DiagnosticUnderlineHint", { underline = true, sp = white })
    highlight(0, "DiagnosticUnderlineOk", { underline = true, sp = emerald })
  end
  if g.moonflyVirtualTextColor then
    highlight(0, "DiagnosticVirtualTextError", { bg = grey234, fg = red })
    highlight(0, "DiagnosticVirtualTextWarn", { bg = grey234, fg = yellow })
    highlight(0, "DiagnosticVirtualTextInfo", { bg = grey234, fg = sky })
    highlight(0, "DiagnosticVirtualTextHint", { bg = grey234, fg = white })
    highlight(0, "DiagnosticVirtualTextOk", { bg = grey234, fg = emerald })
  else
    highlight(0, "DiagnosticVirtualTextError", { link = "MoonflyGrey241" })
    highlight(0, "DiagnosticVirtualTextWarn", { link = "MoonflyGrey241" })
    highlight(0, "DiagnosticVirtualTextInfo", { link = "MoonflyGrey241" })
    highlight(0, "DiagnosticVirtualTextHint", { link = "MoonflyGrey241" })
    highlight(0, "DiagnosticVirtualTextOk", { link = "MoonflyGrey241" })
  end
  highlight(0, "DiagnosticSignError", { link = "MoonflyRed" })
  highlight(0, "DiagnosticSignWarn", { link = "MoonflyYellow" })
  highlight(0, "DiagnosticSignInfo", { link = "MoonflySky" })
  highlight(0, "DiagnosticSignHint", { link = "MoonflyWhite" })
  highlight(0, "DiagnosticSignOk", { link = "MoonflyEmerald" })
  highlight(0, "DiagnosticFloatingError", { link = "MoonflyRed" })
  highlight(0, "DiagnosticFloatingWarn", { link = "MoonflyYellow" })
  highlight(0, "DiagnosticFloatingInfo", { link = "MoonflySky" })
  highlight(0, "DiagnosticFloatingHint", { link = "MoonflyWhite" })
  highlight(0, "DiagnosticFloatingOk", { link = "MoonflyEmerald" })

  -- Neovim LSP
  highlight(0, "LspCodeLens", { link = "MoonflyGrey241" })
  highlight(0, "LspCodeLensSeparator", { link = "MoonflyGrey241" })
  highlight(0, "LspInfoBorder", { link = "FloatBorder" })
  highlight(0, "LspInlayHint", { bg = grey234, fg = grey246 })
  highlight(0, "LspReferenceText", { link = "MoonflyVisual" })
  highlight(0, "LspReferenceRead", { link = "MoonflyVisual" })
  highlight(0, "LspReferenceWrite", { link = "MoonflyVisual" })
  highlight(0, "LspSignatureActiveParameter", { bg = grey236 })

  -------------------------------------------------------------------------
  -- Legacy language styling
  -------------------------------------------------------------------------

  -- Help
  highlight(0, "helpCommand", { link = "MoonflyOrchid" })
  highlight(0, "helpExample", { link = "MoonflyGreen" })
  highlight(0, "helpHeadline", { link = "MoonflyBlue" })
  highlight(0, "helpHyperTextEntry", { link = "MoonflyTurquoise" })
  highlight(0, "helpSectionDelim", { link = "MoonflyBlue" })

  -- Markdown, 'tpope/vim-markdown' plugin
  highlight(0, "markdownBold", { link = "MoonflyYellow" })
  highlight(0, "markdownCode", { link = "MoonflyKhaki" })
  highlight(0, "markdownCodeDelimiter", { link = "MoonflyKhaki" })
  highlight(0, "markdownError", { link = "NormalNC" })
  highlight(0, "markdownH1", { link = "MoonflyBlue" })
  highlight(0, "markdownH2", { link = "MoonflyBlue" })
  highlight(0, "markdownHeadingRule", { link = "MoonflyCranberry" })
  highlight(0, "markdownItalic", { link = "MoonflyOrchid" })
  highlight(0, "markdownUrl", { link = "MoonflyPurple" })

  -- Markdown, 'plasticboy/vim-markdown' plugin
  highlight(0, "mkdDelimiter", { link = "MoonflyWhite" })
  highlight(0, "mkdLineBreak", { link = "NormalNC" })
  highlight(0, "mkdListItem", { link = "MoonflyBlue" })
  highlight(0, "mkdURL", { link = "MoonflyPurple" })

  -- Shell
  highlight(0, "shAlias", { link = "MoonflyTurquoise" })
  highlight(0, "shCommandSub", { link = "MoonflyWhite" })
  highlight(0, "shCtrlSeq", { link = "MoonflyKhaki" })
  highlight(0, "shLoop", { link = "MoonflyViolet" })
  highlight(0, "shRange", { link = "MoonflyWhite" })
  highlight(0, "shSetList", { link = "MoonflyTurquoise" })
  highlight(0, "shShellVariables", { link = "MoonflyTurquoise" })
  highlight(0, "shVariable", { link = "MoonflyTurquoise" })

  -- XML
  highlight(0, "xmlAttrib", { link = "MoonflyLime" })
  highlight(0, "xmlEndTag", { link = "MoonflyBlue" })
  highlight(0, "xmlTag", { link = "MoonflyLime" })
  highlight(0, "xmlTagName", { link = "MoonflyBlue" })

  -------------------------------------------------------------------------
  -- Legacy plugin styling
  -------------------------------------------------------------------------

  -- Git commits
  highlight(0, "gitCommitBranch", { link = "MoonflySky" })
  highlight(0, "gitCommitDiscardedFile", { link = "MoonflyCrimson" })
  highlight(0, "gitCommitDiscardedType", { link = "MoonflySky" })
  highlight(0, "gitCommitHeader", { link = "MoonflyPurple" })
  highlight(0, "gitCommitSelectedFile", { link = "MoonflyEmerald" })
  highlight(0, "gitCommitSelectedType", { link = "MoonflySky" })
  highlight(0, "gitCommitUntrackedFile", { link = "MoonflyCranberry" })
  highlight(0, "gitEmail", { link = "MoonflyBlue" })

  -- Git commit diffs
  highlight(0, "diffAdded", { link = "MoonflyGreen" })
  highlight(0, "diffChanged", { link = "MoonflyCrimson" })
  highlight(0, "diffIndexLine", { link = "MoonflyCrimson" })
  highlight(0, "diffLine", { link = "MoonflySky" })
  highlight(0, "diffRemoved", { link = "MoonflyRed" })
  highlight(0, "diffSubname", { link = "MoonflySky" })

  -- Tagbar plugin
  highlight(0, "TagbarFoldIcon", { link = "MoonflyGrey247" })
  highlight(0, "TagbarVisibilityPublic", { link = "MoonflyLime" })
  highlight(0, "TagbarVisibilityProtected", { link = "MoonflyLime" })
  highlight(0, "TagbarVisibilityPrivate", { link = "MoonflyLime" })
  highlight(0, "TagbarKind", { link = "MoonflyEmerald" })

  -- fern.vim plugin
  highlight(0, "FernBranchSymbol", { link = "MoonflyGrey246" })
  highlight(0, "FernLeafSymbol", { link = "MoonflyBlue" })
  highlight(0, "FernLeaderSymbol", { link = "MoonflyGrey237" })
  highlight(0, "FernBranchText", { link = "MoonflyBlue" })
  highlight(0, "FernMarkedLine", { link = "MoonflyVisual" })
  highlight(0, "FernMarkedText", { link = "MoonflyCrimson" })
  highlight(0, "FernRootSymbol", { link = "MoonflyPurple" })
  highlight(0, "FernRootText", { link = "MoonflyPurple" })

  -- fern-git-status.vim plugin
  highlight(0, "FernGitStatusBracket", { link = "MoonflyGrey246" })
  highlight(0, "FernGitStatusIndex", { link = "MoonflyEmerald" })
  highlight(0, "FernGitStatusWorktree", { link = "MoonflyCrimson" })

  -- Glyph palette
  highlight(0, "GlyphPalette1", { link = "MoonflyCranberry" })
  highlight(0, "GlyphPalette2", { link = "MoonflyEmerald" })
  highlight(0, "GlyphPalette3", { link = "MoonflyYellow" })
  highlight(0, "GlyphPalette4", { link = "MoonflyBlue" })
  highlight(0, "GlyphPalette6", { link = "MoonflyTurquoise" })
  highlight(0, "GlyphPalette7", { link = "MoonflyWhite" })
  highlight(0, "GlyphPalette9", { link = "MoonflyCrimson" })

  -- Misc items
  highlight(0, "bufExplorerHelp", { link = "MoonflyGrey247" })
  highlight(0, "bufExplorerSortBy", { link = "MoonflyGrey247" })
  highlight(0, "CleverFDefaultLabel", { link = "MoonflyCrimson" })
  highlight(0, "CtrlPMatch", { link = "MoonflyCoral" })
  highlight(0, "Directory", { link = "MoonflyBlue" })
  highlight(0, "erubyDelimiter", { link = "MoonflyCrimson" })
  highlight(0, "jsonKeyword", { link = "MoonflySky" })
  highlight(0, "jsonQuote", { link = "MoonflyWhite" })
  highlight(0, "netrwClassify", { link = "MoonflyCranberry" })
  highlight(0, "netrwDir", { link = "MoonflySky" })
  highlight(0, "netrwExe", { link = "MoonflyKhaki" })
  highlight(0, "tagName", { link = "MoonflyTurquoise" })
  highlight(0, "Cheat40Header", { link = "MoonflyBlue" })
  highlight(0, "yamlBlockMappingKey", { link = "MoonflySky" })
  highlight(0, "yamlFlowMappingKey", { link = "MoonflySky" })
  if g.moonflyUnderlineMatchParen then
    highlight(0, "MatchWord", { underline = true, sp = coral })
  else
    highlight(0, "MatchWord", { link = "MoonflyCoral" })
  end
  highlight(0, "snipLeadingSpaces", { bg = bg, fg = white })
  highlight(0, "MatchWordCur", { bg = bg })
  highlight(0, "fishVariable", { link = "MoonflyTurquoise" })
  highlight(0, "fishInnerVariable", { link = "MoonflyTurquoise" })

  -- FZF plugin
  highlight(0, "fzf1", { fg = crimson, bg = grey236 })
  highlight(0, "fzf2", { fg = blue, bg = grey236 })
  highlight(0, "fzf3", { fg = emerald, bg = grey236 })
  highlight(0, "fzfNormal", { fg = grey249 })
  highlight(0, "fzfFgPlus", { fg = grey254 })
  highlight(0, "fzfBorder", { fg = grey236 })
  highlight(0, "fzfSubstring", { fg = coral })
  g.fzf_colors = {
    ["fg"] = { "fg", "fzfNormal" },
    ["bg"] = { "bg", "Normal" },
    ["hl"] = { "fg", "fzfSubstring" },
    ["fg+"] = { "fg", "fzfFgPlus" },
    ["bg+"] = { "bg", "Pmenu" },
    ["hl+"] = { "fg", "fzfSubstring" },
    ["info"] = { "fg", "String" },
    ["border"] = { "fg", "fzfBorder" },
    ["prompt"] = { "fg", "fzf2" },
    ["pointer"] = { "fg", "Exception" },
    ["marker"] = { "fg", "StorageClass" },
    ["spinner"] = { "fg", "Type" },
    ["header"] = { "fg", "CursorLineNr" },
  }

  -- mistfly-statusline plugin
  highlight(0, "MistflyNormal", { link = "MoonflyBlueMode" })
  highlight(0, "MistflyInsert", { link = "MoonflyEmeraldMode" })
  highlight(0, "MistflyVisual", { link = "MoonflyPurpleMode" })
  highlight(0, "MistflyCommand", { link = "MoonflyYellowMode" })
  highlight(0, "MistflyReplace", { link = "MoonflyCrimsonMode" })

  -- Coc plugin
  highlight(0, "CocUnusedHighlight", { link = "MoonflyGrey249" })
  highlight(0, "CocInlayHint", { link = "LspInlayHint" })

  -------------------------------------------------------------------------
  -- Neovim plugin styling
  -------------------------------------------------------------------------

  -- NvimTree plugin
  highlight(0, "NvimTreeFolderIcon", { link = "MoonflyGrey246" })
  highlight(0, "NvimTreeFolderName", { link = "MoonflyBlue" })
  highlight(0, "NvimTreeIndentMarker", { link = "MoonflyGrey237" })
  highlight(0, "NvimTreeOpenedFolderName", { link = "MoonflyBlue" })
  highlight(0, "NvimTreeRootFolder", { link = "MoonflyPurple" })
  highlight(0, "NvimTreeSpecialFile", { link = "MoonflyYellow" })
  highlight(0, "NvimTreeWindowPicker", { link = "DiffChange" })
  highlight(0, "NvimTreeCursorLine", { bg = grey235 })
  highlight(0, "NvimTreeExecFile", { fg = green })
  highlight(0, "NvimTreeImageFile", { fg = violet })
  if g.moonflyTransparent ~= true and g.moonflyNormalFloat ~= true then
    highlight(0, "NormalFloat", { bg = bg, fg = grey249 })
  end
  highlight(0, "NvimTreeOpenedFile", { fg = yellow })
  highlight(0, "NvimTreeSymlink", { fg = turquoise })

  -- Neo-tree plugin
  highlight(0, "NeoTreeCursorLine", { bg = grey235 })
  highlight(0, "NeoTreeDimText", { link = "MoonflyGrey239" })
  highlight(0, "NeoTreeDirectoryIcon", { link = "MoonflyGrey246" })
  highlight(0, "NeoTreeDotfile", { link = "MoonflyGrey246" })
  highlight(0, "NeoTreeFloatTitle", { bg = grey236, fg = white })
  highlight(0, "NeoTreeFilterTerm", { link = "MoonflyBlue" })
  highlight(0, "NeoTreeGitAdded", { link = "MoonflyGreen" })
  highlight(0, "NeoTreeGitConflict", { link = "MoonflyCrimson" })
  highlight(0, "NeoTreeGitModified", { link = "MoonflyTurquoise" })
  highlight(0, "NeoTreeGitUntracked", { link = "MoonflyOrchid" })
  highlight(0, "NeoTreeIndentMarker", { link = "MoonflyGrey237" })
  highlight(0, "NeoTreeMessage", { link = "MoonflyGrey247" })
  highlight(0, "NeoTreeModified", { link = "MoonflyYellow" })
  highlight(0, "NeoTreeRootName", { link = "MoonflyPurple" })
  highlight(0, "NeoTreeTitleBar", { bg = grey236, fg = white })

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
  highlight(0, "GitSignsAdd", { link = "MoonflyEmerald" })
  highlight(0, "GitSignsChange", { link = "MoonflySky" })
  highlight(0, "GitSignsChangeDelete", { link = "MoonflyCoral" })
  highlight(0, "GitSignsDelete", { link = "MoonflyRed" })
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

  -- Indent Blankline plugin v3 & later
  highlight(0, "IblIndent", { fg = grey235, nocombine = true })
  highlight(0, "IblScope", { fg = violet, nocombine = true })
  highlight(0, "IblWhitespace", { fg = grey235, nocombine = true })
  -- Indent Blankline plugin v2 & earlier
  highlight(0, "IndentBlanklineChar", { link = "IblIndent" })
  highlight(0, "IndentBlanklineSpaceChar", { link = "IblWhitespace" })
  highlight(0, "IndentBlanklineSpaceCharBlankline", { link = "IblWhitespace" })

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
  highlight(0, "FinderFName", { link = "MoonflyWhite" })
  highlight(0, "FinderCode", { link = "MoonflyWhite" })
  highlight(0, "FinderIcon", { link = "MoonflyTurquoise" })
  highlight(0, "FinderType", { link = "MoonflyViolet" })
  highlight(0, "FinderSpinnerTitle", { link = "MoonflyPurple" })
  highlight(0, "FinderSpinner", { link = "MoonflyPurple" })
  highlight(0, "RenameNormal", { link = "MoonflyOrange" })
  highlight(0, "DiagnosticSource", { link = "MoonflyGrey241" })
  highlight(0, "DiagnosticText", { link = "MoonflyRed" })
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

  -- Rainbow Delimiters plugin
  highlight(0, "RainbowDelimiterRed", { link = "MoonflyRed" })
  highlight(0, "RainbowDelimiterYellow", { link = "MoonflyYellow" })
  highlight(0, "RainbowDelimiterBlue", { link = "MoonflyBlue" })
  highlight(0, "RainbowDelimiterOrange", { link = "MoonflyOrange" })
  highlight(0, "RainbowDelimiterGreen", { link = "MoonflyGreen" })
  highlight(0, "RainbowDelimiterViolet", { link = "MoonflyViolet" })
  highlight(0, "RainbowDelimiterCyan", { link = "MoonflyTurquoise" })

  -- Neogit plugin
  highlight(0, "NeogitBranch", { link = "MoonflySky" })
  highlight(0, "NeogitDiffAddHighlight", { link = "MoonflyEmeraldLine" })
  highlight(0, "NeogitDiffContextHighlight", { bg = grey234 })
  highlight(0, "NeogitDiffDeleteHighlight", { link = "MoonflyCrimsonLine" })
  highlight(0, "NeogitHunkHeader", { link = "Pmenu" })
  highlight(0, "NeogitHunkHeaderHighlight", { link = "MoonflyBlueLineActive" })
  highlight(0, "NeogitRemote", { link = "MoonflyPurple" })

  -- nvim-window-picker plugin
  highlight(0, "WindowPickerStatusLine", { link = "WinBar" })
  highlight(0, "WindowPickerStatusLineNC", { link = "WinBar" })
  highlight(0, "WindowPickerWinBar", { link = "WinBar" })
  highlight(0, "WindowPickerWinBarNC", { link = "WinBar" })

  -- nvim-dap-ui
  highlight(0, "DapUIBreakpointsCurrentLine", { bg = grey234, fg = green })
  highlight(0, "DapUIBreakpointsDisabledLine", { link = "Comment" })
  highlight(0, "DapUIBreakpointsInfo", { link = "MoonflySky" })
  highlight(0, "DapUIBreakpointsPath", { link = "MoonflyTurquoise" })
  highlight(0, "DapUIDecoration", { link = "MoonflyBlue" })
  highlight(0, "DapUIFloatBorder", { link = "FloatBorder" })
  highlight(0, "DapUILineNumber", { link = "Number" })
  highlight(0, "DapUIModifiedValue", { fg = white, underline = true })
  highlight(0, "DapUIPlayPause", { bg = grey235, fg = green })
  highlight(0, "DapUIRestart", { link = "DapUIPlayPause" })
  highlight(0, "DapUIScope", { link = "MoonflySky" })
  highlight(0, "DapUISource", { link = "MoonflyViolet" })
  highlight(0, "DapUIStepBack", { bg = grey235, fg = turquoise })
  highlight(0, "DapUIStepInto", { link = "DapUIStepBack" })
  highlight(0, "DapUIStepOut", { link = "DapUIStepBack" })
  highlight(0, "DapUIStepOver", { link = "DapUIStepBack" })
  highlight(0, "DapUIStop", { bg = grey235, fg = red })
  highlight(0, "DapUIStoppedThread", { link = "MoonflyTurquoise" })
  highlight(0, "DapUIThread", { link = "MoonflyGreen" })
  highlight(0, "DapUIType", { link = "Type" })
  highlight(0, "DapUIUnavailable", { bg = grey235, fg = grey241 })
  highlight(0, "DapUIWatchesEmpty", { link = "MoonflyRed" })
  highlight(0, "DapUIWatchesError", { link = "MoonflyRed" })
  highlight(0, "DapUIWatchesValue", { link = "MoonflyGreen" })
  highlight(0, "DapUIWinSelect", { link = "MoonflyBlue" })
end

return M
