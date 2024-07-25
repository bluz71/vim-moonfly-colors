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
local grey89 = "#e4e4e4"
local grey70 = "#b2b2b2"
local grey62 = "#9e9e9e"
local grey58 = "#949494"
local grey50 = "#808080"
local grey39 = "#626262"
local grey30 = "#4e4e4e"
local grey27 = "#444444"
local grey23 = "#3a3a3a"
local grey18 = "#2e2e2e"
local grey15 = "#262626"
local grey11 = "#1c1c1c"
local grey7 = "#121212"
-- Core theme colors
local khaki = "#c6c684"
local yellow = "#e3c78a"
local orange = "#de935f"
local coral = "#f09479"
local orchid = "#e196a2"
local lime = "#85dc85"
local green = "#8cc85f"
local emerald = "#36c692"
local turquoise = "#79dac8"
local blue = "#80a0ff"
local sky = "#74b2ff"
local lavender = "#adadf3"
local purple = "#ae81ff"
local violet = "#cf87e8"
local cranberry = "#e65e72"
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
  grey89 = grey89,
  grey70 = grey70,
  grey62 = grey62,
  grey58 = grey58,
  grey50 = grey50,
  grey39 = grey39,
  grey30 = grey30,
  grey27 = grey27,
  grey23 = grey23,
  grey18 = grey18,
  grey15 = grey15,
  grey11 = grey11,
  grey7 = grey7,
  khaki = khaki,
  yellow = yellow,
  orange = orange,
  coral = coral,
  orchid = orchid,
  lime = lime,
  green = green,
  emerald = emerald,
  turquoise = turquoise,
  blue = blue,
  sky = sky,
  lavender = lavender,
  purple = purple,
  violet = violet,
  cranberry = cranberry,
  crimson = crimson,
  red = red,
  spring = spring,
  mineral = mineral,
  bay = bay,
}

M.style = function()
  -------------------------------------------------------------------------
  -- Custom styling groups
  -------------------------------------------------------------------------

  highlight(0, "MoonflyVisual", { bg = grey0 })
  highlight(0, "MoonflyWhite", { fg = white })
  highlight(0, "MoonflyGrey0", { fg = grey0 })
  highlight(0, "MoonflyGrey89", { fg = grey89 })
  highlight(0, "MoonflyGrey70", { fg = grey70 })
  highlight(0, "MoonflyGrey62", { fg = grey62 })
  highlight(0, "MoonflyGrey58", { fg = grey58 })
  highlight(0, "MoonflyGrey39", { fg = grey39 })
  highlight(0, "MoonflyGrey30", { fg = grey30 })
  highlight(0, "MoonflyGrey27", { fg = grey27 })
  highlight(0, "MoonflyGrey23", { fg = grey23 })
  highlight(0, "MoonflyGrey18", { fg = grey18 })
  highlight(0, "MoonflyGrey15", { fg = grey15 })
  highlight(0, "MoonflyKhaki", { fg = khaki })
  highlight(0, "MoonflyYellow", { fg = yellow })
  highlight(0, "MoonflyOrange", { fg = orange })
  highlight(0, "MoonflyCoral", { fg = coral })
  highlight(0, "MoonflyOrchid", { fg = orchid })
  highlight(0, "MoonflyLime", { fg = lime })
  highlight(0, "MoonflyGreen", { fg = green })
  highlight(0, "MoonflyEmerald", { fg = emerald })
  highlight(0, "MoonflyTurquoise", { fg = turquoise })
  highlight(0, "MoonflyBlue", { fg = blue })
  highlight(0, "MoonflySky", { fg = sky })
  highlight(0, "MoonflyLavender", { fg = lavender })
  highlight(0, "MoonflyPurple", { fg = purple })
  highlight(0, "MoonflyViolet", { fg = violet })
  highlight(0, "MoonflyCranberry", { fg = cranberry })
  highlight(0, "MoonflyCrimson", { fg = crimson })
  highlight(0, "MoonflyRed", { fg = red })
  -- Misc helpers
  highlight(0, "MoonflyUnderline", { underline = true })
  highlight(0, "MoonflyNoCombine", { nocombine = true })
  -- Statusline helper colors
  highlight(0, "MoonflyBlueMode", { bg = blue, fg = grey11 })
  highlight(0, "MoonflyEmeraldMode", { bg = emerald, fg = grey11 })
  highlight(0, "MoonflyPurpleMode", { bg = purple, fg = grey11 })
  highlight(0, "MoonflyCrimsonMode", { bg = crimson, fg = grey11 })
  highlight(0, "MoonflyYellowMode", { bg = yellow, fg = grey11 })
  highlight(0, "MoonflyTurquoiseMode", { bg = turquoise, fg = grey11 })
  -- Generic line helper colors
  highlight(0, "MoonflyCurrentLine", { bg = grey15 })
  highlight(0, "MoonflyCrimsonLine", { bg = grey18, fg = crimson })
  highlight(0, "MoonflyEmeraldLine", { bg = grey18, fg = emerald })
  highlight(0, "MoonflyGrey58Line", { bg = grey11, fg = grey58 })
  highlight(0, "MoonflyYellowLine", { bg = grey11, fg = yellow })
  highlight(0, "MoonflyBlueLineActive", { bg = grey27, fg = blue })
  highlight(0, "MoonflyRedLineActive", { bg = grey27, fg = red })
  highlight(0, "MoonflyTurquoiseLineActive", { bg = grey27, fg = turquoise })
  highlight(0, "MoonflyWhiteLineActive", { bg = grey27, fg = grey89 })
  highlight(0, "MoonflyYellowLineActive", { bg = grey27, fg = yellow })

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
    g.terminal_color_8 = grey58
    g.terminal_color_9 = crimson
    g.terminal_color_10 = emerald
    g.terminal_color_11 = khaki
    g.terminal_color_12 = sky
    g.terminal_color_13 = purple
    g.terminal_color_14 = lime
    g.terminal_color_15 = grey89
  end

  -- Background and text
  highlight(0, "Normal", { bg = bg, fg = white })

  -- Color of mode text, -- INSERT --
  highlight(0, "ModeMsg", { fg = grey62 })

  -- Comments
  if g.moonflyItalics then
    highlight(0, "Comment", { fg = grey58, italic = true })
  else
    highlight(0, "Comment", { link = "MoonflyGrey58" })
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
  highlight(0, "StorageClass", { link = "MoonflyViolet" })

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
  highlight(0, "NonText", { fg = grey39 })

  -- sizeof
  highlight(0, "Operator", { link = "MoonflyCranberry" })

  -- for, while
  highlight(0, "Repeat", { link = "MoonflyViolet" })

  -- Search
  highlight(0, "Search", { bg = grey1, fg = grey89 })
  highlight(0, "CurSearch", { bg = coral, fg = black })
  highlight(0, "IncSearch", { bg = yellow, fg = black })

  -- '\n' sequences
  highlight(0, "Special", { link = "MoonflyCranberry" })

  -- if, else
  highlight(0, "Statement", { fg = violet })

  -- struct, union, enum, typedef
  highlight(0, "Structure", { link = "MoonflyBlue" })

  -- Status, split and tab lines
  highlight(0, "StatusLine", { bg = grey18, fg = white })
  highlight(0, "StatusLineNC", { bg = grey18, fg = grey62 })
  highlight(0, "Tabline", { bg = grey18, fg = grey62 })
  highlight(0, "TablineSel", { bg = grey11, fg = blue })
  highlight(0, "TablineSelSymbol", { bg = grey11, fg = emerald })
  highlight(0, "TablineFill", { bg = grey18, fg = grey18 })
  highlight(0, "StatusLineTerm", { bg = grey18, fg = white })
  highlight(0, "StatusLineTermNC", { bg = grey18, fg = grey62 })
  if g.moonflyWinSeparator == 0 then
    highlight(0, "VertSplit", { bg = black, fg = black })
  elseif g.moonflyWinSeparator == 1 then
    highlight(0, "VertSplit", { bg = grey18, fg = grey18 })
  else
    highlight(0, "VertSplit", { bg = none, fg = grey18 })
  end

  -- Visual selection
  highlight(0, "Visual", { link = "MoonflyVisual" })
  highlight(0, "VisualNOS", { bg = grey0, fg = white })

  -- Errors, warnings and whitespace-eol
  highlight(0, "Error", { bg = bg, fg = red })
  highlight(0, "ErrorMsg", { bg = bg, fg = red })
  highlight(0, "WarningMsg", { bg = bg, fg = orange })

  -- Auto-text-completion menu
  highlight(0, "Pmenu", { bg = grey15, fg = white })
  highlight(0, "PmenuSel", { bg = spring, fg = grey89 })
  highlight(0, "PmenuSbar", { link = "MoonflyCurrentLine" })
  highlight(0, "PmenuThumb", { bg = grey50 })
  highlight(0, "WildMenu", { bg = spring, fg = grey89 })

  -- Spelling errors
  if g.moonflyUndercurls then
    highlight(0, "SpellBad", { bg = none, undercurl = true, sp = red })
    highlight(0, "SpellCap", { bg = none, undercurl = true, sp = yellow })
    highlight(0, "SpellRare", { bg = none, undercurl = true, sp = green })
    highlight(0, "SpellLocal", { bg = none, undercurl = true, sp = sky })
  else
    highlight(0, "SpellBad", { bg = none, fg = red, underline = true, sp = red })
    highlight(0, "SpellCap", { bg = none, fg = yellow, underline = true, sp = yellow })
    highlight(0, "SpellRare", { bg = none, fg = green, underline = true, sp = green })
    highlight(0, "SpellLocal", { bg = none, fg = sky, underline = true, sp = sky })
  end

  -- Misc
  highlight(0, "Question", { fg = lime })
  highlight(0, "MoreMsg", { fg = red })
  highlight(0, "LineNr", { bg = bg, fg = grey39 })
  if g.moonflyCursorColor then
    highlight(0, "Cursor", { fg = bg, bg = blue })
  else
    highlight(0, "Cursor", { fg = bg, bg = grey62 })
  end
  highlight(0, "lCursor", { fg = bg, bg = grey62 })
  highlight(0, "CursorLineNr", { bg = grey11, fg = blue })
  highlight(0, "CursorColumn", { bg = grey11 })
  highlight(0, "CursorLine", { bg = grey11 })
  highlight(0, "Folded", { bg = grey11, fg = lime })
  highlight(0, "FoldColumn", { bg = grey18, fg = lime })
  highlight(0, "SignColumn", { bg = bg, fg = lime })
  highlight(0, "Todo", { bg = grey15, fg = yellow })
  highlight(0, "SpecialKey", { bg = bg, fg = sky })
  if g.moonflyUnderlineMatchParen then
    highlight(0, "MatchParen", { bg = bg, underline = true })
  else
    highlight(0, "MatchParen", { link = "MoonflyVisual" })
  end
  highlight(0, "Ignore", { link = "MoonflySky" })
  highlight(0, "Underlined", { fg = emerald })
  highlight(0, "QuickFixLine", { link = "MoonflyCurrentLine" })
  highlight(0, "Delimiter", { link = "MoonflyWhite" })
  highlight(0, "qfFileName", { link = "MoonflyEmerald" })

  -- Color column (after line 80)
  highlight(0, "ColorColumn", { bg = grey7 })

  -- Conceal color
  highlight(0, "Conceal", { bg = none, fg = grey70 })

  -- nvim -d
  highlight(0, "DiffAdd", { bg = mineral })
  highlight(0, "DiffChange", { bg = grey18 })
  highlight(0, "DiffDelete", { bg = grey18, fg = grey39 })
  highlight(0, "DiffText", { bg = bay })

  -------------------------------------------------------------------------
  -- Neovim standard styling
  -------------------------------------------------------------------------

  highlight(0, "Whitespace", { fg = grey0 })
  highlight(0, "TermCursor", { bg = grey62, fg = black })
  if g.moonflyNormalFloat then
    highlight(0, "NormalFloat", { bg = bg, fg = grey70 })
  else
    highlight(0, "NormalFloat", { bg = grey11, fg = white })
  end
  highlight(0, "FloatBorder", { bg = bg, fg = grey18 })
  highlight(0, "FloatTitle", { bg = grey23, fg = white })
  highlight(0, "WinBar", { bg = grey15, fg = white })
  highlight(0, "WinBarNC", { bg = grey15, fg = grey62 })
  highlight(0, "WinSeparator", { link = "VertSplit" })

  -- Neovim check-health
  highlight(0, "healthSuccess", { link = "DiffAdd" })
  highlight(0, "healthHeadingChar", { link = "MoonflyBlue" })
  highlight(0, "helpHeader", { link = "MoonflyTurquoise" })

  -- Neovim Tree-sitter
  highlight(0, "@attribute", { link = "MoonflySky" })
  highlight(0, "@comment.error", { link = "MoonflyRed" })
  highlight(0, "@comment.note", { link = "MoonflyGrey58" })
  highlight(0, "@comment.ok", { link = "MoonflyGreen" })
  highlight(0, "@comment.todo", { link = "Todo" })
  highlight(0, "@comment.warning", { link = "MoonflyYellow" })
  highlight(0, "@constant", { link = "MoonflyTurquoise" })
  highlight(0, "@constant.builtin", { link = "MoonflyGreen" })
  highlight(0, "@constant.macro", { link = "MoonflyViolet" })
  highlight(0, "@constructor", { link = "MoonflyEmerald" })
  highlight(0, "@diff.delta", { link = "DiffChange" })
  highlight(0, "@diff.minus", { link = "DiffDelete" })
  highlight(0, "@diff.plus", { link = "DiffAdd" })
  highlight(0, "@function.builtin", { link = "Function" })
  highlight(0, "@function.call", { link = "Function" })
  highlight(0, "@function.macro", { link = "MoonflyTurquoise" })
  highlight(0, "@function.method", { link = "Function" })
  highlight(0, "@function.method.call", { link = "Function" })
  highlight(0, "@keyword.conditional", { link = "Conditional" })
  highlight(0, "@keyword.directive", { link = "PreProc" })
  highlight(0, "@keyword.directive.define", { link = "Define" })
  highlight(0, "@keyword.exception", { link = "MoonflyViolet" })
  highlight(0, "@keyword.import", { link = "Include" })
  highlight(0, "@keyword.operator", { link = "MoonflyViolet" })
  highlight(0, "@keyword.repeat", { link = "Repeat" })
  highlight(0, "@keyword.storage", { link = "StorageClass" })
  highlight(0, "@markup.environment", { link = "MoonflyViolet" })
  highlight(0, "@markup.environment.name", { link = "MoonflyEmerald" })
  highlight(0, "@markup.heading", { link = "MoonflyViolet" })
  highlight(0, "@markup.italic", { fg = orchid, italic = true })
  highlight(0, "@markup.link", { link = "MoonflyGreen" })
  highlight(0, "@markup.link.label", { link = "MoonflyGreen" })
  highlight(0, "@markup.link.url", { fg = purple, underline = true, sp = grey50 })
  highlight(0, "@markup.list", { link = "MoonflyCranberry" })
  highlight(0, "@markup.list.checked", { link = "MoonflyTurquoise" })
  highlight(0, "@markup.list.unchecked", { link = "MoonflyBlue" })
  highlight(0, "@markup.math", { link = "MoonflySky" })
  highlight(0, "@markup.quote", { link = "MoonflyGrey58" })
  highlight(0, "@markup.raw", { link = "String" })
  highlight(0, "@markup.strikethrough", { strikethrough = true })
  highlight(0, "@markup.strong", { link = "MoonflyOrchid" })
  highlight(0, "@markup.underline", { underline = true })
  highlight(0, "@module", { link = "MoonflyTurquoise" })
  highlight(0, "@module.builtin", { link = "MoonflyGreen" })
  highlight(0, "@none", {})
  highlight(0, "@parameter.builtin", { link = "MoonflyOrchid" })
  highlight(0, "@property", { link = "MoonflyLavender" })
  highlight(0, "@string.documentation", { link = "MoonflyTurquoise" })
  highlight(0, "@string.regexp", { link = "MoonflyTurquoise" })
  highlight(0, "@string.special.path", { link = "MoonflyOrchid" })
  highlight(0, "@string.special.symbol", { link = "MoonflyPurple" })
  highlight(0, "@string.special.url", { link = "MoonflyPurple" })
  highlight(0, "@tag", { link = "MoonflyBlue" })
  highlight(0, "@tag.attribute", { link = "MoonflyTurquoise" })
  highlight(0, "@tag.builtin", { link = "MoonflyBlue" })
  highlight(0, "@tag.delimiter", { link = "MoonflyGreen" })
  highlight(0, "@type.builtin", { link = "MoonflyEmerald" })
  highlight(0, "@type.qualifier", { link = "MoonflyViolet" })
  highlight(0, "@variable", { link = "MoonflyWhite" })
  highlight(0, "@variable.builtin", { link = "MoonflyGreen" })
  highlight(0, "@variable.member", { link = "MoonflyLavender" })
  highlight(0, "@variable.parameter", { link = "MoonflyOrchid" })

  -- Neovim LEGACY Tree-sitter (Neovim 0.9)
  highlight(0, "@conditional", { link = "@keyword.conditional" })
  highlight(0, "@define", { link = "@keyword.directive.define" })
  highlight(0, "@error", { link = "MoonflyRed" })
  highlight(0, "@exception", { link = "@keyword.exception" })
  highlight(0, "@field", { link = "@variable.member" })
  highlight(0, "@include", { link = "@keyword.import" })
  highlight(0, "@method", { link = "@function.method" })
  highlight(0, "@namespace", { link = "@module" })
  highlight(0, "@namespace.builtin", { link = "@module.builtin" })
  highlight(0, "@parameter", { link = "@variable.parameter" })
  highlight(0, "@preproc", { link = "@keyword.directive" })
  highlight(0, "@punctuation.special", { link = "@markup.list" })
  highlight(0, "@repeat", { link = "@keyword.repeat" })
  highlight(0, "@string.regex", { link = "@string.regexp" })
  highlight(0, "@storageclass", { link = "@keyword.storage" })
  highlight(0, "@symbol", { link = "@string.special.symbol" })
  highlight(0, "@text.danger", { link = "@comment.error" })
  highlight(0, "@text.diff.add", { link = "@diff.plus" })
  highlight(0, "@text.diff.change", { link = "@diff.delta" })
  highlight(0, "@text.diff.delete", { link = "@diff.minus" })
  highlight(0, "@text.emphasis", { link = "@markup.italic" })
  highlight(0, "@text.environment", { link = "@markup.environment" })
  highlight(0, "@text.environment.name", { link = "@markup.environment.name" })
  highlight(0, "@text.literal", { link = "@markup.raw" })
  highlight(0, "@text.math", { link = "@markup.math" })
  highlight(0, "@text.note", { link = "@comment.note" })
  highlight(0, "@text.reference", { link = "@markup.link" })
  highlight(0, "@text.strike", { link = "@markup.strikethrough" })
  highlight(0, "@text.strong", { link = "@markup.strong" })
  highlight(0, "@text.title", { link = "@markup.heading" })
  highlight(0, "@text.todo", { link = "@comment.todo" })
  highlight(0, "@text.underline", { link = "@markup.underline" })
  highlight(0, "@text.uri", { link = "@markup.link.url" })
  highlight(0, "@text.warning", { link = "@comment.warning" })

  -- Language specific Tree-sitter overrides.
  highlight(0, "@attribute.zig", { link = "MoonflyViolet" })
  highlight(0, "@character.special.vim", { link = "MoonflySky" })
  highlight(0, "@function.macro.vim", { link = "MoonflySky" })
  highlight(0, "@keyword.gitcommit", { link = "MoonflySky" })
  highlight(0, "@keyword.import.bash", { link = "@keyword" })
  highlight(0, "@keyword.import.rust", { link = "@keyword" })
  highlight(0, "@keyword.storage.rust", { link = "MoonflyViolet" })
  highlight(0, "@markup.heading.1.markdown", { link = "MoonflyEmerald" })
  highlight(0, "@markup.heading.1.vimdoc", { link = "MoonflyBlue" })
  highlight(0, "@markup.heading.2.markdown", { link = "MoonflyLavender" })
  highlight(0, "@markup.heading.2.vimdoc", { link = "MoonflyBlue" })
  highlight(0, "@markup.heading.3.markdown", { link = "MoonflyTurquoise" })
  highlight(0, "@markup.heading.4.markdown", { link = "MoonflyOrange" })
  highlight(0, "@markup.heading.5.markdown", { link = "MoonflySky" })
  highlight(0, "@markup.heading.6.markdown", { link = "MoonflyViolet" })
  highlight(0, "@markup.heading.help", { link = "MoonflySky" })
  highlight(0, "@markup.heading.markdown", { link = "MoonflySky" })
  highlight(0, "@markup.link.gitcommit", { link = "MoonflyBlue" })
  highlight(0, "@markup.link.markdown_inline", {})
  highlight(0, "@markup.link.url.gitcommit", { link = "MoonflyEmerald" })
  if g.moonflyItalics then
    highlight(0, "@markup.link.url.astro", { fg = violet, italic = true })
    highlight(0, "@markup.link.url.html", { fg = violet, italic = true })
    highlight(0, "@markup.link.url.svelte", { fg = violet, italic = true })
    highlight(0, "@markup.link.url.vue", { fg = violet, italic = true })
  else
    highlight(0, "@markup.link.url.astro", { link = "MoonflyViolet" })
    highlight(0, "@markup.link.url.html", { link = "MoonflyViolet" })
    highlight(0, "@markup.link.url.svelte", { link = "MoonflyViolet" })
    highlight(0, "@markup.link.url.vue", { link = "MoonflyViolet" })
  end
  highlight(0, "@markup.list.latex", { link = "MoonflyPurple" })
  highlight(0, "@markup.raw.vimdoc", { link = "MoonflyOrchid" })
  highlight(0, "@namespace.latex", { link = "MoonflyLavender" })
  highlight(0, "@punctuation.delimiter.astro", { link = "MoonflyCranberry" })
  highlight(0, "@punctuation.delimiter.css", { link = "MoonflyCranberry" })
  highlight(0, "@punctuation.delimiter.rust", { link = "MoonflyCranberry" })
  highlight(0, "@punctuation.delimiter.scss", { link = "MoonflyCranberry" })
  highlight(0, "@punctuation.delimiter.yaml", { link = "MoonflyCranberry" })
  highlight(0, "@variable.builtin.vim", { link = "MoonflyEmerald" })
  highlight(0, "@variable.member.yaml", { link = "MoonflyBlue" })
  highlight(0, "@variable.parameter.bash", { link = "MoonflyTurquoise" })
  highlight(0, "@variable.scss", { link = "MoonflyTurquoise" })
  highlight(0, "@variable.vim", { link = "MoonflyTurquoise" })

  -- Language specific LEGACY Tree-sitter overrides (Neovim 0.9).
  highlight(0, "@field.yaml", { link = "@variable.member.yaml" })
  highlight(0, "@include.rust", { link = "@keyword.import.rust" })
  highlight(0, "@parameter.bash", { link = "@variable.parameter.bash" })
  highlight(0, "@storageclass.rust", { link = "@keyword.storage.rust" })
  highlight(0, "@text.literal.block.vimdoc", { link = "@markup.raw.block.vimdoc" })
  highlight(0, "@text.literal.vimdoc", { link = "@markup.raw.vimdoc" })
  highlight(0, "@text.reference.gitcommit", { link = "@markup.link.gitcommit" })
  highlight(0, "@text.reference.markdown_inline", { link = "@markup.link.label" })
  highlight(0, "@text.title.1.markdown", { link = "@markup.heading.1.markdown" })
  highlight(0, "@text.title.1.marker.markdown", { link = "@markup.list" })
  highlight(0, "@text.title.1.vimdoc", { link = "@markup.heading.1.vimdoc" })
  highlight(0, "@text.title.2.markdown", { link = "@markup.heading.2.markdown" })
  highlight(0, "@text.title.2.marker.markdown", { link = "@markup.list" })
  highlight(0, "@text.title.2.vimdoc", { link = "@markup.heading.2.vimdoc" })
  highlight(0, "@text.title.3.markdown", { link = "@markup.heading.3.markdown" })
  highlight(0, "@text.title.3.marker.markdown", { link = "@markup.list" })
  highlight(0, "@text.title.4.markdown", { link = "@markup.heading.4.markdown" })
  highlight(0, "@text.title.4.marker.markdown", { link = "@markup.list" })
  highlight(0, "@text.title.5.markdown", { link = "@markup.heading.5.markdown" })
  highlight(0, "@text.title.5.marker.markdown", { link = "@markup.list" })
  highlight(0, "@text.title.6.markdown", { link = "@markup.heading.6.markdown" })
  highlight(0, "@text.title.6.marker.markdown", { link = "@markup.list" })
  highlight(0, "@text.title.help", { link = "@markup.heading.help" })
  highlight(0, "@text.title.markdown", { link = "@markup.heading.markdown" })
  highlight(0, "@text.uri.astro", { link = "@markup.link.url.astro" })
  highlight(0, "@text.uri.gitcommit", { link = "@markup.link.url.gitcommit" })
  highlight(0, "@text.uri.html", { link = "@markup.link.url.html" })
  highlight(0, "@text.uri.svelte", { link = "@markup.link.url.svelte" })
  highlight(0, "@text.uri.vue", { link = "@markup.link.url.vue" })

  -- Neovim LSP semantic highlights.
  highlight(0, "@lsp.type.boolean", { link = "@boolean" })
  highlight(0, "@lsp.type.builtinConstant", { link = "@constant.builtin" })
  highlight(0, "@lsp.type.builtinType", { link = "@type.builtin" })
  highlight(0, "@lsp.type.class", { link = "@type" })
  highlight(0, "@lsp.type.enum", { link = "@type" })
  highlight(0, "@lsp.type.enumMember", { link = "@constant" })
  highlight(0, "@lsp.type.escapeSequence", { link = "@string.escape" })
  highlight(0, "@lsp.type.formatSpecifier", { link = "@punctuation.special" })
  highlight(0, "@lsp.type.generic", { link = "@variable" })
  highlight(0, "@lsp.type.interface", { link = "@type" })
  highlight(0, "@lsp.type.keyword", { link = "@keyword" })
  highlight(0, "@lsp.type.lifetime", { link = "@storageclass" })
  highlight(0, "@lsp.type.macro", {}) -- Use fallback Tree-sitter style for this Semantic Token
  highlight(0, "@lsp.type.magicFunction", { link = "@function" })
  highlight(0, "@lsp.type.namespace", { link = "@namespace" })
  highlight(0, "@lsp.type.number", { link = "@number" })
  highlight(0, "@lsp.type.operator", {}) -- Use fallback Tree-sitter style for this Semantic Token
  highlight(0, "@lsp.type.parameter", { link = "@parameter" })
  highlight(0, "@lsp.type.property", { link = "@property" })
  highlight(0, "@lsp.type.selfKeyword", { link = "@variable.builtin" })
  highlight(0, "@lsp.type.selfParameter", { link = "@variable.builtin" })
  highlight(0, "@lsp.type.string", { link = "@string" })
  highlight(0, "@lsp.type.struct", { link = "@type" })
  highlight(0, "@lsp.type.typeAlias", { link = "@type.definition" })
  if g.moonflyUndercurls then
    highlight(0, "@lsp.type.unresolvedReference", { undercurl = true, sp = red })
  else
    highlight(0, "@lsp.type.unresolvedReference", { underline = true, sp = red })
  end
  highlight(0, "@lsp.type.variable", {}) -- Use fallback Tree-sitter style for this Semantic Token
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
  highlight(0, "@lsp.typemod.variable.injected", { link = "@variable" })
  highlight(0, "@lsp.typemod.variable.static", { link = "@constant" })
  -- Language specific LSP semantic overrides.
  highlight(0, "@lsp.type.decorator.rust", { link = "@function.macro" })
  highlight(0, "@lsp.type.namespace.ruby", {})
  highlight(0, "@lsp.type.parameter.dockerfile", { link = "@property" })
  highlight(0, "@lsp.type.variable.dockerfile", { link = "@function" })

  -- Neovim Diagnostic
  highlight(0, "DiagnosticError", { link = "MoonflyRed" })
  highlight(0, "DiagnosticWarn", { link = "MoonflyYellow" })
  highlight(0, "DiagnosticInfo", { link = "MoonflySky" })
  highlight(0, "DiagnosticHint", { link = "MoonflyTurquoise" })
  highlight(0, "DiagnosticOk", { link = "MoonflyEmerald" })
  if g.moonflyUndercurls then
    highlight(0, "DiagnosticUnderlineError", { undercurl = true, sp = red })
    highlight(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = yellow })
    highlight(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = sky })
    highlight(0, "DiagnosticUnderlineHint", { undercurl = true, sp = turquoise })
    highlight(0, "DiagnosticUnderlineOk", { undercurl = true, sp = emerald })
  else
    highlight(0, "DiagnosticUnderlineError", { underline = true, sp = red })
    highlight(0, "DiagnosticUnderlineWarn", { underline = true, sp = yellow })
    highlight(0, "DiagnosticUnderlineInfo", { underline = true, sp = sky })
    highlight(0, "DiagnosticUnderlineHint", { underline = true, sp = turquoise })
    highlight(0, "DiagnosticUnderlineOk", { underline = true, sp = emerald })
  end
  if g.moonflyVirtualTextColor then
    highlight(0, "DiagnosticVirtualTextError", { bg = grey11, fg = red })
    highlight(0, "DiagnosticVirtualTextWarn", { bg = grey11, fg = yellow })
    highlight(0, "DiagnosticVirtualTextInfo", { bg = grey11, fg = sky })
    highlight(0, "DiagnosticVirtualTextHint", { bg = grey11, fg = turquoise })
    highlight(0, "DiagnosticVirtualTextOk", { bg = grey11, fg = emerald })
  else
    highlight(0, "DiagnosticVirtualTextError", { link = "MoonflyGrey39" })
    highlight(0, "DiagnosticVirtualTextWarn", { link = "MoonflyGrey39" })
    highlight(0, "DiagnosticVirtualTextInfo", { link = "MoonflyGrey39" })
    highlight(0, "DiagnosticVirtualTextHint", { link = "MoonflyGrey39" })
    highlight(0, "DiagnosticVirtualTextOk", { link = "MoonflyGrey39" })
  end
  highlight(0, "DiagnosticSignError", { link = "MoonflyRed" })
  highlight(0, "DiagnosticSignWarn", { link = "MoonflyYellow" })
  highlight(0, "DiagnosticSignInfo", { link = "MoonflySky" })
  highlight(0, "DiagnosticSignHint", { link = "MoonflyTurquoise" })
  highlight(0, "DiagnosticSignOk", { link = "MoonflyEmerald" })
  highlight(0, "DiagnosticFloatingError", { link = "MoonflyRed" })
  highlight(0, "DiagnosticFloatingWarn", { link = "MoonflyYellow" })
  highlight(0, "DiagnosticFloatingInfo", { link = "MoonflySky" })
  highlight(0, "DiagnosticFloatingHint", { link = "MoonflyTurquoise" })
  highlight(0, "DiagnosticFloatingOk", { link = "MoonflyEmerald" })

  -- Neovim LSP
  highlight(0, "LspCodeLens", { link = "MoonflyGrey39" })
  highlight(0, "LspCodeLensSeparator", { link = "MoonflyGrey39" })
  highlight(0, "LspInfoBorder", { link = "FloatBorder" })
  highlight(0, "LspInlayHint", { bg = grey11, fg = grey58 })
  highlight(0, "LspReferenceText", { link = "MoonflyVisual" })
  highlight(0, "LspReferenceRead", { link = "MoonflyVisual" })
  highlight(0, "LspReferenceWrite", { link = "MoonflyVisual" })
  highlight(0, "LspSignatureActiveParameter", { bg = grey18 })

  -------------------------------------------------------------------------
  -- Legacy language styling
  -------------------------------------------------------------------------

  -- CSV
  highlight(0, "csvCol0", { link = "MoonflyRed" })
  highlight(0, "csvCol1", { link = "MoonflyOrange" })
  highlight(0, "csvCol2", { link = "MoonflyYellow" })
  highlight(0, "csvCol3", { link = "MoonflyGreen" })
  highlight(0, "csvCol4", { link = "MoonflyTurquoise" })
  highlight(0, "csvCol5", { link = "MoonflyBlue" })
  highlight(0, "csvCol6", { link = "MoonflyPurple" })
  highlight(0, "csvCol7", { link = "MoonflyViolet" })
  highlight(0, "csvCol8", { link = "MoonflyLavender" })

  -- Help
  highlight(0, "helpCommand", { link = "MoonflyOrchid" })
  highlight(0, "helpExample", { link = "MoonflyGreen" })
  highlight(0, "helpHeadline", { link = "MoonflyBlue" })
  highlight(0, "helpHyperTextEntry", { link = "MoonflyTurquoise" })
  highlight(0, "helpSectionDelim", { link = "MoonflyBlue" })

  -- LaTeX
  highlight(0, "texBeginEndName", { link = "MoonflyEmerald" })
  highlight(0, "texCite", { link = "MoonflyGreen" })
  highlight(0, "texDocType", { link = "MoonflyCranberry" })
  highlight(0, "texDocTypeArgs", { link = "MoonflyOrchid" })
  highlight(0, "texInputFile", { link = "String" })
  highlight(0, "texMathZoneC", { link = "MoonflySky" })
  highlight(0, "texMathZoneX", { link = "MoonflySky" })
  highlight(0, "texRefZone", { link = "MoonflyGreen" })
  highlight(0, "texSection", { link = "MoonflyLavender" })
  highlight(0, "texTypeStyle", { link = "MoonflyYellow" })
  highlight(0, "texZone", { link = "MoonflyLavender" })

  -- Man
  highlight(0, "manHeader", { link = "MoonflyEmerald" })
  highlight(0, "manOptionDesc", { link = "MoonflyOrchid" })
  highlight(0, "manReference", { link = "MoonflyGreen" })
  highlight(0, "manSectionHeading", { link = "MoonflyBlue" })
  highlight(0, "manSubHeading", { link = "MoonflyTurquoise" })

  -- Markdown, 'tpope/vim-markdown' plugin
  highlight(0, "markdownBold", { link = "MoonflyYellow" })
  highlight(0, "markdownCode", { link = "MoonflyKhaki" })
  highlight(0, "markdownCodeDelimiter", { link = "MoonflyKhaki" })
  highlight(0, "markdownError", { link = "NormalNC" })
  highlight(0, "markdownH1", { link = "MoonflyEmerald" })
  highlight(0, "markdownH2", { link = "MoonflyBlue" })
  highlight(0, "markdownH3", { link = "MoonflyTurquoise" })
  highlight(0, "markdownHeadingRule", { link = "MoonflyCranberry" })
  if g.moonflyItalics then
    highlight(0, "markdownItalic", { fg = orchid, italic = true })
  else
    highlight(0, "markdownItalic", { link = "MoonflyOrchid" })
  end
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
  highlight(0, "TagbarFoldIcon", { link = "MoonflyGrey62" })
  highlight(0, "TagbarVisibilityPublic", { link = "MoonflyLime" })
  highlight(0, "TagbarVisibilityProtected", { link = "MoonflyLime" })
  highlight(0, "TagbarVisibilityPrivate", { link = "MoonflyLime" })
  highlight(0, "TagbarKind", { link = "MoonflyEmerald" })

  -- fern.vim plugin
  highlight(0, "FernBranchSymbol", { link = "MoonflyGrey58" })
  highlight(0, "FernLeafSymbol", { link = "MoonflyBlue" })
  highlight(0, "FernLeaderSymbol", { link = "MoonflyGrey23" })
  highlight(0, "FernBranchText", { link = "MoonflyBlue" })
  highlight(0, "FernMarkedLine", { link = "MoonflyVisual" })
  highlight(0, "FernMarkedText", { link = "MoonflyCrimson" })
  highlight(0, "FernRootSymbol", { link = "MoonflyPurple" })
  highlight(0, "FernRootText", { link = "MoonflyPurple" })

  -- fern-git-status.vim plugin
  highlight(0, "FernGitStatusBracket", { link = "MoonflyGrey58" })
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
  highlight(0, "bufExplorerHelp", { link = "MoonflyGrey62" })
  highlight(0, "bufExplorerSortBy", { link = "MoonflyGrey62" })
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
  highlight(0, "fishInnerVariable", { link = "MoonflyTurquoise" })
  highlight(0, "fishParameter", { link = "MoonflyTurquoise" })
  highlight(0, "fishVariable", { link = "MoonflyTurquoise" })

  -- FZF plugin
  highlight(0, "FzfBorder", { fg = grey18 })
  highlight(0, "FzfFgPlus", { fg = grey89 })
  highlight(0, "FzfNormal", { fg = grey70 })
  highlight(0, "FzfPrompt", { fg = blue, bg = grey18 })
  highlight(0, "FzfSubstring", { fg = coral })
  g.fzf_colors = {
    ["fg"] = { "fg", "FzfNormal" },
    ["bg"] = { "bg", "Normal" },
    ["hl"] = { "fg", "FzfSubstring" },
    ["fg+"] = { "fg", "FzfFgPlus" },
    ["bg+"] = { "bg", "Pmenu" },
    ["hl+"] = { "fg", "FzfSubstring" },
    ["info"] = { "fg", "String" },
    ["border"] = { "fg", "FzfBorder" },
    ["prompt"] = { "fg", "FzfPrompt" },
    ["pointer"] = { "fg", "Exception" },
    ["marker"] = { "fg", "FzfSubstring" },
    ["spinner"] = { "fg", "Type" },
    ["header"] = { "fg", "CursorLineNr" },
    ["gutter"] = { "bg", "Normal" },
  }

  -- mistfly-statusline plugin
  highlight(0, "MistflyNormal", { link = "MoonflyBlueMode" })
  highlight(0, "MistflyInsert", { link = "MoonflyEmeraldMode" })
  highlight(0, "MistflyVisual", { link = "MoonflyPurpleMode" })
  highlight(0, "MistflyCommand", { link = "MoonflyYellowMode" })
  highlight(0, "MistflyReplace", { link = "MoonflyCrimsonMode" })

  -- Coc plugin
  highlight(0, "CocInlayHint", { link = "LspInlayHint" })
  highlight(0, "CocSemTypeBuiltin", { link = "MoonflyCranberry" })
  highlight(0, "CocSemTypeClass", { link = "MoonflyEmerald" })
  highlight(0, "CocSemTypeEnumMember", { link = "MoonflyTurquoise" })
  highlight(0, "CocSemTypeNamespace", { link = "MoonflyTurquoise" })
  highlight(0, "CocSemTypeParameter", { link = "MoonflyOrchid" })
  highlight(0, "CocSemTypeProperty", { link = "MoonflyLavender" })
  highlight(0, "CocSemTypeRegexp", { link = "MoonflyTurquoise" })
  highlight(0, "CocSemTypeStruct", { link = "MoonflyEmerald" })
  highlight(0, "CocSemTypeTypeParameter", { link = "MoonflyOrchid" })
  highlight(0, "CocUnusedHighlight", { link = "MoonflyGrey70" })

  -------------------------------------------------------------------------
  -- Neovim plugin styling
  -------------------------------------------------------------------------

  -- nvim-treesitter-context
  highlight(0, "TreesitterContext", { bg = grey7 })
  highlight(0, "TreesitterContextBottom", { underline = true, sp = grey18 })

  -- NvimTree plugin
  highlight(0, "NvimTreeFolderIcon", { link = "MoonflyGrey58" })
  highlight(0, "NvimTreeFolderName", { link = "MoonflyBlue" })
  highlight(0, "NvimTreeIndentMarker", { link = "MoonflyGrey23" })
  highlight(0, "NvimTreeOpenedFolderName", { link = "MoonflyBlue" })
  highlight(0, "NvimTreeRootFolder", { link = "MoonflyPurple" })
  highlight(0, "NvimTreeSpecialFile", { link = "MoonflyYellow" })
  highlight(0, "NvimTreeWindowPicker", { link = "DiffChange" })
  highlight(0, "NvimTreeCursorLine", { link = "MoonflyCurrentLine" })
  highlight(0, "NvimTreeExecFile", { fg = green })
  highlight(0, "NvimTreeImageFile", { fg = violet })
  if g.moonflyTransparent ~= true and g.moonflyNormalFloat ~= true then
    highlight(0, "NvimTreeNormalFloat", { bg = bg, fg = grey70 })
  end
  highlight(0, "NvimTreeOpenedFile", { fg = yellow })
  highlight(0, "NvimTreeSymlink", { fg = turquoise })

  -- Neo-tree plugin
  highlight(0, "NeoTreeCursorLine", { link = "MoonflyCurrentLine" })
  highlight(0, "NeoTreeDimText", { link = "MoonflyGrey30" })
  highlight(0, "NeoTreeDirectoryIcon", { link = "MoonflyGrey58" })
  highlight(0, "NeoTreeDotfile", { link = "MoonflyGrey58" })
  highlight(0, "NeoTreeFloatTitle", { link = "FloatTitle" })
  highlight(0, "NeoTreeFilterTerm", { link = "MoonflyBlue" })
  highlight(0, "NeoTreeGitAdded", { link = "MoonflyGreen" })
  highlight(0, "NeoTreeGitConflict", { link = "MoonflyCrimson" })
  highlight(0, "NeoTreeGitModified", { link = "MoonflyTurquoise" })
  highlight(0, "NeoTreeGitUntracked", { link = "MoonflyOrchid" })
  highlight(0, "NeoTreeIndentMarker", { link = "MoonflyGrey23" })
  highlight(0, "NeoTreeMessage", { link = "MoonflyGrey62" })
  highlight(0, "NeoTreeModified", { link = "MoonflyYellow" })
  highlight(0, "NeoTreeRootName", { link = "MoonflyPurple" })
  highlight(0, "NeoTreeTitleBar", { bg = grey18, fg = white })

  -- Telescope plugin
  highlight(0, "TelescopeBorder", { link = "FloatBorder" })
  highlight(0, "TelescopeMatching", { link = "MoonflyCoral" })
  highlight(0, "TelescopeMultiIcon", { link = "MoonflyCrimson" })
  highlight(0, "TelescopeMultiSelection", { link = "MoonflyEmerald" })
  highlight(0, "TelescopeNormal", { link = "MoonflyGrey70" })
  highlight(0, "TelescopePreviewDate", { link = "MoonflyGrey58" })
  highlight(0, "TelescopePreviewGroup", { link = "MoonflyGrey58" })
  highlight(0, "TelescopePreviewLink", { link = "MoonflyTurquoise" })
  highlight(0, "TelescopePreviewMatch", { link = "MoonflyVisual" })
  highlight(0, "TelescopePreviewRead", { link = "MoonflyOrange" })
  highlight(0, "TelescopePreviewSize", { link = "MoonflyEmerald" })
  highlight(0, "TelescopePreviewUser", { link = "MoonflyGrey58" })
  highlight(0, "TelescopePromptPrefix", { link = "MoonflyBlue" })
  highlight(0, "TelescopeResultsDiffAdd", { link = "MoonflyGreen" })
  highlight(0, "TelescopeResultsDiffChange", { link = "MoonflyRed" })
  highlight(0, "TelescopeResultsDiffDelete", { link = "MoonflyCrimsonLine" })
  highlight(0, "TelescopeResultsSpecialComment", { link = "MoonflyGrey39" })
  highlight(0, "TelescopeSelectionCaret", { link = "MoonflyCrimson" })
  highlight(0, "TelescopeTitle", { link = "MoonflyGrey39" })
  highlight(0, "TelescopeSelection", { bg = grey0, fg = grey89 })

  -- gitsigns.nvim plugin
  --   sign column
  highlight(0, "GitSignsAdd", { link = "MoonflyEmerald" })
  highlight(0, "GitSignsAddCul", { link = "TablineSelSymbol" })
  highlight(0, "GitSignsChange", { link = "MoonflySky" })
  highlight(0, "GitSignsChangeCul", { bg = grey11, fg = sky })
  highlight(0, "GitSignsChangedelete", { link = "MoonflyCoral" })
  highlight(0, "GitSignsChangedeleteCul", { bg = grey11, fg = coral })
  highlight(0, "GitSignsDelete", { link = "MoonflyRed" })
  highlight(0, "GitSignsDeleteCul", { bg = grey11, fg = red })
  highlight(0, "GitSignsTopdelete", { link = "MoonflyRed" })
  highlight(0, "GitSignsTopdeleteCul", { link = "GitSignsDeleteCul" })
  highlight(0, "GitSignsUntracked", { link = "MoonflyGrey39" })
  highlight(0, "GitSignsUntrackedCul", { bg = grey11, fg = grey39 })
  --   line highlights
  highlight(0, "GitSignsAddLn", { link = "MoonflyCurrentLine" })
  highlight(0, "GitSignsChangeLn", { bg = grey11 })
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
  highlight(0, "HopUnmatched", { link = "MoonflyGrey62" })

  -- Barbar plugin
  highlight(0, "BufferCurrent", { link = "MoonflyWhiteLineActive" })
  highlight(0, "BufferCurrentIndex", { link = "MoonflyWhiteLineActive" })
  highlight(0, "BufferCurrentMod", { link = "MoonflyYellowLineActive" })
  highlight(0, "BufferCurrentSign", { link = "MoonflyBlueLineActive" })
  highlight(0, "BufferCurrentERROR", { link = "MoonflyRedLineActive" })
  highlight(0, "BufferCurrentWARN", { link = "MoonflyYellowLineActive" })
  highlight(0, "BufferCurrentINFO", { link = "MoonflyBlueLineActive" })
  highlight(0, "BufferCurrentHINT", { link = "MoonflyTurquoiseLineActive" })
  highlight(0, "BufferTabpages", { bg = grey18, fg = blue })
  highlight(0, "BufferVisible", { link = "MoonflyGrey58Line" })
  highlight(0, "BufferVisibleIndex", { link = "MoonflyGrey58Line" })
  highlight(0, "BufferVisibleMod", { link = "MoonflyYellowLine" })
  highlight(0, "BufferVisibleSign", { link = "MoonflyGrey58Line" })
  highlight(0, "BufferVisibleERROR", { link = "GitSignsDeleteCul" })
  highlight(0, "BufferVisibleWARN", { bg = grey11, fg = yellow })
  highlight(0, "BufferVisibleINFO", { bg = grey11, fg = blue })
  highlight(0, "BufferVisibleHINT", { bg = grey11, fg = turquoise })
  highlight(0, "BufferInactive", { bg = grey18, fg = grey58 })
  highlight(0, "BufferInactiveMod", { bg = grey18, fg = yellow })
  highlight(0, "BufferInactiveSign", { bg = grey18, fg = grey62 })
  highlight(0, "BufferInactiveERROR", { bg = grey18, fg = red })
  highlight(0, "BufferInactiveWARN", { bg = grey18, fg = yellow })
  highlight(0, "BufferInactiveINFO", { link = "BufferTabpages" })
  highlight(0, "BufferInactiveHINT", { bg = grey18, fg = turquoise })
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
  highlight(0, "CmpItemKindText", { link = "MoonflyGrey70" })
  highlight(0, "CmpItemKindTypeParameter", { link = "MoonflyEmerald" })
  highlight(0, "CmpItemKindUnit", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemKindValue", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemKindVariable", { link = "MoonflyTurquoise" })
  highlight(0, "CmpItemMenu", { link = "MoonflyGrey62" })

  -- Indent Blankline plugin v3 & later
  highlight(0, "IblIndent", { fg = grey15, nocombine = true })
  highlight(0, "IblScope", { fg = violet, nocombine = true })
  highlight(0, "IblWhitespace", { fg = grey15, nocombine = true })
  -- Indent Blankline plugin v2 & earlier
  highlight(0, "IndentBlanklineChar", { link = "IblIndent" })
  highlight(0, "IndentBlanklineSpaceChar", { link = "IblWhitespace" })
  highlight(0, "IndentBlanklineSpaceCharBlankline", { link = "IblWhitespace" })

  -- Mini.nvim plugin
  highlight(0, "MiniAnimateNormalFloat", { link = "NormalFloat" })
  highlight(0, "MiniClueBorder", { link = "FloatBorder" })
  highlight(0, "MiniClueDescGroup", { link = "DiagnosticFloatingWarn" })
  highlight(0, "MiniClueDescSingle", { link = "NormalFloat" })
  highlight(0, "MiniClueNextKey", { link = "DiagnosticFloatingHint" })
  highlight(0, "MiniClueNextKeyWithPostkeys", { link = "DiagnosticFloatingError" })
  highlight(0, "MiniClueSeparator", { link = "DiagnosticFloatingInfo" })
  highlight(0, "MiniClueTitle", { link = "FloatTitle" })
  highlight(0, "MiniCompletionActiveParameter", { link = "MoonflyVisual" })
  highlight(0, "MiniCursorword", { link = "MoonflyUnderline" })
  highlight(0, "MiniCursorwordCurrent", { link = "MoonflyUnderline" })
  highlight(0, "MiniDepsChangeAdded", { link = "diffAdded" })
  highlight(0, "MiniDepsChangeRemoved", { link = "diffRemoved" })
  highlight(0, "MiniDepsHint", { link = "DiagnosticHint" })
  highlight(0, "MiniDepsInfo", { link = "DiagnosticInfo" })
  highlight(0, "MiniDepsMsgBreaking", { link = "DiagnosticWarn" })
  highlight(0, "MiniDepsPlaceholder", { link = "Comment" })
  highlight(0, "MiniDepsTitle", { link = "Title" })
  highlight(0, "MiniDepsTitleError", { link = "MoonflyCrimsonLine" })
  highlight(0, "MiniDepsTitleSame", { link = "DiffText" })
  highlight(0, "MiniDepsTitleUpdate", { link = "DiffAdd" })
  highlight(0, "MiniDiffOverAdd", { link = "DiffAdd" })
  highlight(0, "MiniDiffOverChange", { link = "DiffText" })
  highlight(0, "MiniDiffOverContext", { link = "DiffChange" })
  highlight(0, "MiniDiffOverDelete", { link = "MoonflyCrimsonLine" })
  highlight(0, "MiniDiffSignAdd", { link = "MoonflyEmerald" })
  highlight(0, "MiniDiffSignChange", { link = "MoonflySky" })
  highlight(0, "MiniDiffSignDelete", { link = "MoonflyRed" })
  highlight(0, "MiniFilesBorder", { link = "FloatBorder" })
  highlight(0, "MiniFilesBorderModified", { link = "DiagnosticFloatingWarn" })
  highlight(0, "MiniFilesCursorLine", { link = "MoonflyCurrentLine" })
  highlight(0, "MiniFilesDirectory", { link = "Directory" })
  highlight(0, "MiniFilesFile", { link = "MoonflyWhite" })
  highlight(0, "MiniFilesNormal", { link = "NormalFloat" })
  highlight(0, "MiniFilesTitle", { link = "FloatTitle" })
  highlight(0, "MiniFilesTitleFocused", { link = "MoonflyEmeraldLine" })
  highlight(0, "MiniIconsAzure", { link = "MoonflySky" })
  highlight(0, "MiniIconsBlue", { link = "MoonflyBlue" })
  highlight(0, "MiniIconsCyan", { link = "MoonflyTurquoise" })
  highlight(0, "MiniIconsGreen", { link = "MoonflyGreen" })
  highlight(0, "MiniIconsGrey", { link = "MoonflyGrey89" })
  highlight(0, "MiniIconsOrange", { link = "MoonflyOrange" })
  highlight(0, "MiniIconsPurple", { link = "MoonflyPurple" })
  highlight(0, "MiniIconsRed", { link = "MoonflyCrimson" })
  highlight(0, "MiniIconsYellow", { link = "MoonflyYellow" })
  highlight(0, "MiniIndentscopePrefix", { link = "MoonflyNoCombine" })
  highlight(0, "MiniIndentscopeSymbol", { link = "MoonflyWhite" })
  highlight(0, "MiniJump", { link = "SpellRare" })
  highlight(0, "MiniJump2dDim", { link = "MoonflyGrey58" })
  highlight(0, "MiniMapNormal", { link = "NormalFloat" })
  highlight(0, "MiniMapSymbolCount", { link = "Special" })
  highlight(0, "MiniMapSymbolLine", { link = "Title" })
  highlight(0, "MiniMapSymbolView", { link = "Delimiter" })
  highlight(0, "MiniNotifyBorder", { link = "FloatBorder" })
  highlight(0, "MiniNotifyNormal", { link = "NormalFloat" })
  highlight(0, "MiniNotifyTitle", { link = "FloatTitle" })
  highlight(0, "MiniOperatorsExchangeFrom", { link = "IncSearch" })
  highlight(0, "MiniPickBorder", { link = "FloatBorder" })
  highlight(0, "MiniPickBorderBusy", { link = "DiagnosticFloatingWarn" })
  highlight(0, "MiniPickBorderText", { link = "FloatTitle" })
  highlight(0, "MiniPickHeader", { link = "DiagnosticFloatingHint" })
  highlight(0, "MiniPickIconDirectory", { link = "Directory" })
  highlight(0, "MiniPickIconFile", { link = "MiniPickNormal" })
  highlight(0, "MiniPickMatchCurrent", { link = "MoonflyCurrentLine" })
  highlight(0, "MiniPickMatchMarked", { link = "DiffAdd" })
  highlight(0, "MiniPickMatchRanges", { link = "DiagnosticFloatingHint" })
  highlight(0, "MiniPickNormal", { link = "NormalFloat" })
  highlight(0, "MiniPickPreviewLine", { link = "CursorLine" })
  highlight(0, "MiniPickPreviewRegion", { link = "IncSearch" })
  highlight(0, "MiniPickPrompt", { link = "DiagnosticFloatingInfo" })
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
  highlight(0, "MiniTablineVisible", { link = "MoonflyGrey58Line" })
  highlight(0, "MiniTestEmphasis", { link = "MoonflyUnderline" })
  highlight(0, "MiniTestFail", { link = "MoonflyRed" })
  highlight(0, "MiniTestPass", { link = "MoonflyGreen" })
  highlight(0, "MiniTrailspace", { link = "MoonflyCrimsonMode" })
  highlight(0, "MiniAnimateCursor", { reverse = true, nocombine = true })
  highlight(0, "MiniHipatternsFixme", { fg = bg, bg = red })
  highlight(0, "MiniHipatternsHack", { fg = bg, bg = yellow })
  highlight(0, "MiniHipatternsNote", { fg = bg, bg = sky })
  highlight(0, "MiniHipatternsTodo", { fg = bg, bg = turquoise })
  highlight(0, "MiniJump2dSpot", { fg = yellow, underline = true, nocombine = true })
  highlight(0, "MiniJump2dSpotAhead", { fg = blue, bg = grey15, nocombine = true })
  highlight(0, "MiniJump2dSpotUnique", { fg = emerald, underline = true, nocombine = true })
  highlight(0, "MiniStatuslineDevinfo", { bg = grey39, fg = white })
  highlight(0, "MiniStatuslineFileinfo", { bg = grey39, fg = white })
  highlight(0, "MiniStatuslineFilename", { bg = grey18, fg = grey62 })
  highlight(0, "MiniStatuslineInactive", { bg = grey18, fg = grey62 })
  highlight(0, "MiniTablineHidden", { bg = grey18, fg = grey58 })
  highlight(0, "MiniTablineModifiedHidden", { bg = grey18, fg = yellow })

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
  highlight(0, "NotifyDEBUGIcon", { link = "MoonflyGrey58" })
  highlight(0, "NotifyTRACEIcon", { link = "MoonflyPurple" })
  highlight(0, "NotifyERRORTitle", { link = "MoonflyRed" })
  highlight(0, "NotifyWARNTitle", { link = "MoonflyYellow" })
  highlight(0, "NotifyINFOTitle", { link = "MoonflyBlue" })
  highlight(0, "NotifyDEBUGTitle", { link = "MoonflyGrey58" })
  highlight(0, "NotifyTRACETitle", { link = "MoonflyPurple" })

  -- lazy.nvim plugin
  highlight(0, "LazyCommit", { link = "MoonflyEmerald" })
  highlight(0, "LazyCommitType", { link = "MoonflyViolet" })
  highlight(0, "LazyDimmed", { fg = grey58 })
  highlight(0, "LazyH1", { link = "MoonflyBlueMode" })
  highlight(0, "LazyProgressDone", { link = "MoonflyBlue" })
  highlight(0, "LazyProgressTodo", { link = "MoonflyGrey0" })
  highlight(0, "LazyReasonCmd", { link = "MoonflyGreen" })
  highlight(0, "LazyReasonPlugin", { link = "MoonflyOrchid" })
  highlight(0, "LazyReasonRuntime", { link = "MoonflyViolet" })
  highlight(0, "LazySpecial", { link = "MoonflyBlue" })
  highlight(0, "LazyButton", { bg = grey15, fg = white })
  highlight(0, "LazyButtonActive", { bg = grey30, fg = grey89 })
  if g.moonflyNormalFloat ~= true then
    highlight(0, "LazyNormal", { bg = grey7, fg = white })
  end

  -- mason.nvim plugin
  highlight(0, "MasonError", { link = "MoonflyRed" })
  highlight(0, "MasonHeader", { link = "MoonflyBlueMode" })
  highlight(0, "MasonHeaderSecondary", { link = "MoonflyBlueMode" })
  highlight(0, "MasonHeading", { link = "MoonflyGrey89" })
  highlight(0, "MasonHighlight", { link = "MoonflyBlue" })
  highlight(0, "MasonHighlightBlock", { link = "MoonflyBlueMode" })
  highlight(0, "MasonHighlightBlockBold", { link = "MoonflyBlueMode" })
  highlight(0, "MasonHighlightBlockBoldSecondary", { link = "MoonflyEmeraldMode" })
  highlight(0, "MasonHighlightBlockSecondary", { link = "MoonflyEmeraldMode" })
  highlight(0, "MasonHighlightSecondary", { link = "MoonflyEmerald" })
  highlight(0, "MasonLink", { link = "MoonflyPurple" })
  highlight(0, "MasonMuted", { link = "MoonflyGrey39" })
  highlight(0, "MasonMutedBlock", { bg = grey15, fg = white })
  highlight(0, "MasonMutedBlockBold", { bg = grey15, fg = grey89 })

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
  highlight(0, "DiagnosticSource", { link = "MoonflyGrey39" })
  highlight(0, "DiagnosticText", { link = "MoonflyRed" })
  highlight(0, "CallHierarchyIcon", { link = "MoonflyViolet" })
  highlight(0, "CallHierarchyTitle", { link = "MoonflyCranberry" })
  highlight(0, "SagaShadow", { link = "Normal" })
  highlight(0, "OutlineIndent", { link = "MoonflyPurple" })

  -- Noice plugin
  highlight(0, "NoiceCmdlinePopup", { link = "MoonflyGrey50" })
  highlight(0, "NoiceCmdlinePopupBorder", { link = "MoonflyGrey27" })
  highlight(0, "NoiceCmdlinePopupBorderSearch", { link = "MoonflyGrey27" })
  highlight(0, "NoiceCmdlinePrompt", { link = "MoonflyBlue" })
  highlight(0, "NoiceCompletionItemKindDefault", { link = "MoonflyTurquoise" })
  highlight(0, "NoiceConfirmBorder", { link = "MoonflyBlue" })
  highlight(0, "NoiceFormatTitle", { link = "MoonflyCranberry" })

  -- nvim-navic plugin
  highlight(0, "NavicText", { bg = grey18, fg = grey70 })
  highlight(0, "NavicSeparator", { bg = grey18, fg = white })
  highlight(0, "NavicIconsOperator", { bg = grey18, fg = cranberry })
  highlight(0, "NavicIconsBoolean", { link = "NavicIconsOperator" })
  highlight(0, "NavicIconsClass", { bg = grey18, fg = emerald })
  highlight(0, "NavicIconsConstant", { bg = grey18, fg = orange })
  highlight(0, "NavicIconsConstructor", { bg = grey18, fg = sky })
  highlight(0, "NavicIconsEnum", { bg = grey18, fg = violet })
  highlight(0, "NavicIconsEnumMember", { bg = grey18, fg = turquoise })
  highlight(0, "NavicIconsEvent", { link = "NavicIconsConstant" })
  highlight(0, "NavicIconsField", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsFile", { bg = grey18, fg = blue })
  highlight(0, "NavicIconsFunction", { link = "NavicIconsConstructor" })
  highlight(0, "NavicIconsInterface", { link = "NavicIconsEnum" })
  highlight(0, "NavicIconsKey", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsMethod", { link = "NavicIconsConstructor" })
  highlight(0, "NavicIconsModule", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsNamespace", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsNull", { bg = grey18, fg = green })
  highlight(0, "NavicIconsNumber", { link = "NavicIconsConstant" })
  highlight(0, "NavicIconsObject", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsPackage", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsProperty", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsString", { bg = grey18, fg = khaki })
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
  highlight(0, "NeogitDiffContextHighlight", { bg = grey11 })
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
  highlight(0, "DapUIBreakpointsCurrentLine", { bg = grey11, fg = green })
  highlight(0, "DapUIBreakpointsDisabledLine", { link = "Comment" })
  highlight(0, "DapUIBreakpointsInfo", { link = "MoonflySky" })
  highlight(0, "DapUIBreakpointsPath", { link = "MoonflyTurquoise" })
  highlight(0, "DapUIDecoration", { link = "MoonflyBlue" })
  highlight(0, "DapUIFloatBorder", { link = "FloatBorder" })
  highlight(0, "DapUILineNumber", { link = "Number" })
  highlight(0, "DapUIModifiedValue", { fg = white, underline = true })
  highlight(0, "DapUIPlayPause", { bg = grey15, fg = green })
  highlight(0, "DapUIRestart", { link = "DapUIPlayPause" })
  highlight(0, "DapUIScope", { link = "MoonflySky" })
  highlight(0, "DapUISource", { link = "MoonflyViolet" })
  highlight(0, "DapUIStepBack", { bg = grey15, fg = turquoise })
  highlight(0, "DapUIStepInto", { link = "DapUIStepBack" })
  highlight(0, "DapUIStepOut", { link = "DapUIStepBack" })
  highlight(0, "DapUIStepOver", { link = "DapUIStepBack" })
  highlight(0, "DapUIStop", { bg = grey15, fg = red })
  highlight(0, "DapUIStoppedThread", { link = "MoonflyTurquoise" })
  highlight(0, "DapUIThread", { link = "MoonflyGreen" })
  highlight(0, "DapUIType", { link = "Type" })
  highlight(0, "DapUIUnavailable", { bg = grey15, fg = grey39 })
  highlight(0, "DapUIWatchesEmpty", { link = "MoonflyRed" })
  highlight(0, "DapUIWatchesError", { link = "MoonflyRed" })
  highlight(0, "DapUIWatchesValue", { link = "MoonflyGreen" })
  highlight(0, "DapUIWinSelect", { link = "MoonflyBlue" })

  -- arrow.nvim
  highlight(0, "ArrowCurrentFile", { link = "MoonflyEmerald" })

  -- NvCheatsheet.nvim
  highlight(0, "NvChSection", { link = "Pmenu" })
  highlight(0, "NvChAsciiHeader", { link = "Directory" })
  highlight(0, "NvCheatsheetWhite", { bg = white, fg = grey11 })
  highlight(0, "NvCheatsheetGray", { bg = orchid, fg = grey11 })
  highlight(0, "NvCheatsheetBlue", { link = "MoonflyBlueMode" })
  highlight(0, "NvCheatsheetCyan", { link = "MoonflyTurquoiseMode" })
  highlight(0, "NvCheatsheetRed", { link = "MoonflyCrimsonMode" })
  highlight(0, "NvCheatsheetGreen", { link = "MoonflyEmeraldMode" })
  highlight(0, "NvCheatsheetYellow", { link = "MoonflyYellowMode" })
  highlight(0, "NvCheatsheetOrange", { bg = coral, fg = grey11 })
  highlight(0, "NvCheatsheetPurple", { link = "MoonflyPurpleMode" })
  highlight(0, "NvCheatsheetMagenta", { bg = violet, fg = grey11 })

  -- fzf-lua
  highlight(0, "FzfLuaBorder", { link = "FloatBorder" })
  highlight(0, "FzfLuaBufFlagAlt", { link = "MoonflyTurquoise" })
  highlight(0, "FzfLuaBufFlagCur", { link = "MoonflyOrange" })
  highlight(0, "FzfLuaBufNr", { link = "MoonflyKhaki" })
  highlight(0, "FzfLuaFzfHeader", { link = "MoonflyBlue" })
  highlight(0, "FzfLuaFzfInfo", { link = "String" })
  highlight(0, "FzfLuaFzfMarker", { link = "MoonflyCoral" })
  highlight(0, "FzfLuaFzfPointer", { link = "MoonflyCrimson" })
  highlight(0, "FzfLuaFzfPrompt", { link = "MoonflyBlue" })
  highlight(0, "FzfLuaFzfSpinner", { link = "MoonflyEmerald" })
  highlight(0, "FzfLuaHeaderBind", { link = "MoonflyGreen" })
  highlight(0, "FzfLuaHeaderText", { link = "MoonflyTurquoise" })
  highlight(0, "FzfLuaLiveSym", { link = "MoonflyGreen" })
  highlight(0, "FzfLuaPathColNr", { link = "MoonflySky" })
  highlight(0, "FzfLuaTabMarker", { link = "MoonflyKhaki" })
  highlight(0, "FzfLuaTabTitle", { link = "MoonflySky" })
  highlight(0, "FzfLuaTitle", { link = "FloatTitle" })
end

-- User customization of theme colors.
--
M.custom_colors = function(colors)
  black = colors.black and colors.black or M.palette.black
  white = colors.white and colors.white or M.palette.white
  bg = colors.bg and colors.bg or M.palette.bg
  grey0 = colors.grey0 and colors.grey0 or M.palette.grey0
  grey1 = colors.grey1 and colors.grey1 or M.palette.grey1
  grey89 = colors.grey89 and colors.grey89 or M.palette.grey89
  grey70 = colors.grey70 and colors.grey70 or M.palette.grey70
  grey62 = colors.grey62 and colors.grey62 or M.palette.grey62
  grey58 = colors.grey58 and colors.grey58 or M.palette.grey58
  grey50 = colors.grey50 and colors.grey50 or M.palette.grey50
  grey39 = colors.grey39 and colors.grey39 or M.palette.grey39
  grey30 = colors.grey30 and colors.grey30 or M.palette.grey30
  grey27 = colors.grey27 and colors.grey27 or M.palette.grey27
  grey23 = colors.grey23 and colors.grey23 or M.palette.grey23
  grey18 = colors.grey18 and colors.grey18 or M.palette.grey18
  grey15 = colors.grey15 and colors.grey15 or M.palette.grey15
  grey11 = colors.grey11 and colors.grey11 or M.palette.grey11
  grey7 = colors.grey7 and colors.grey7 or M.palette.grey7
  khaki = colors.khaki and colors.khaki or M.palette.khaki
  yellow = colors.yellow and colors.yellow or M.palette.yellow
  orange = colors.orange and colors.orange or M.palette.orange
  coral = colors.coral and colors.coral or M.palette.coral
  orchid = colors.orchid and colors.orchid or M.palette.orchid
  lime = colors.lime and colors.lime or M.palette.lime
  green = colors.green and colors.green or M.palette.green
  emerald = colors.emerald and colors.emerald or M.palette.emerald
  turquoise = colors.turquoise and colors.turquoise or M.palette.turquoise
  blue = colors.blue and colors.blue or M.palette.blue
  sky = colors.sky and colors.sky or M.palette.sky
  lavender = colors.lavender and colors.lavender or M.palette.lavender
  purple = colors.purple and colors.purple or M.palette.purple
  violet = colors.violet and colors.violet or M.palette.violet
  cranberry = colors.cranberry and colors.cranberry or M.palette.cranberry
  crimson = colors.crimson and colors.crimson or M.palette.crimson
  red = colors.red and colors.red or M.palette.red
  spring = colors.spring and colors.spring or M.palette.spring
  mineral = colors.mineral and colors.mineral or M.palette.mineral
  bay = colors.bay and colors.bay or M.palette.bay
end

return M
