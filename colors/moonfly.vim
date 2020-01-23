" Dark Vim/Neovim color scheme.
"
" Note: Inspiration taken from: monokai, sunburst xoria256 and One Dark themes.
"
" URL:     github.com/bluz71/vim-moonfly-colors
" License: MIT (https://opensource.org/licenses/MIT)

highlight clear
set background=dark
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="moonfly"

" * By default do not color the cursor.
" * By default use the moonfly color palette in the `:terminal`, but not if TUI
"     Neovim can pass through terminal palette colors.
" * By default do not underline matching parentheses.
" * By default do use undercurls in GUI versions of Vim, including terminal Vim
"     with termguicolors set.
" * By default do use italics in GUI versions of Vim, including terminal Vim
"     with termguicolors set.
" * By default do not style fzf for display in floating window.
let g:moonflyCursorColor         = get(g:, "moonflyCursorColor", 0)
if has("nvim-0.5.0") && &termguicolors && nvim_list_uis()[0]['ext_termcolors']
    " Neovim 0.5.0 or later in a TUI with termguicolors set allows pass through
    " of the terminal palette, so do NOT set terminal colors since it will
    " cause certain problems.
    "
    " For reference:
    "   https://github.com/neovim/neovim/pull/10994
    "   https://github.com/neovim/neovim/issues/11335
    let g:moonflyTerminalColors  = get(g:, "moonflyTerminalColors", 0)
else
    let g:moonflyTerminalColors  = get(g:, "moonflyTerminalColors", 1)
endif
let g:moonflyUnderlineMatchParen = get(g:, "moonflyUnderlineMatchParen", 0)
let g:moonflyUndercurls          = get(g:, "moonflyUndercurls", 1)
let g:moonflyItalics             = get(g:, "moonflyItalics", 1)
let g:moonflyFloatingFZF         = get(g:, "moonflyFloatingFZF", 0)

" Background and foreground.
let s:black       = "#080808" " black       = 232
let s:white       = "#c6c6c6" " white       = 251
" Variations of charcoal-grey.
let s:grey0       = "#373c40" " grey0       = 0
let s:grey253     = "#dadada" " grey253     = 253
let s:grey249     = "#b2b2b2" " grey249     = 249
let s:grey247     = "#9e9e9e" " grey247     = 247
let s:grey246     = "#949494" " grey246     = 246
let s:grey244     = "#808080" " grey244     = 244
let s:grey241     = "#626262" " grey241     = 241
let s:grey237     = "#3a3a3a" " grey237     = 237
let s:grey236     = "#303030" " grey236     = 236
let s:grey235     = "#262626" " grey235     = 235
let s:grey234     = "#1c1c1c" " grey234     = 234
let s:grey233     = "#121212" " grey233     = 233
" Core theme colors.
let s:wheat       = "#cfcfb0" " wheat       = 11
let s:yellow      = "#e3c78a" " yellow      = 3
let s:orange      = "#de935f" " orange      = 7
let s:coral       = "#f09479" " coral       = 8
let s:lime        = "#85dc85" " lime        = 14
let s:green       = "#8cc85f" " green       = 2
let s:emerald     = "#42cf89" " emerald     = 10
let s:blue        = "#80a0ff" " blue        = 4
let s:sky         = "#78c2ff" " sky         = 12
let s:turquoise   = "#7ee0ce" " turquoise   = 6
let s:purple      = "#ae81ff" " purple      = 13
let s:cranberry   = "#e2637f" " cranberry   = 15
let s:violet      = "#d183e8" " violet      = 5
let s:crimson     = "#f74782" " crimson     = 9
let s:red         = "#ff5454" " red         = 1
" Extra colors
let s:blue111     = "#87afff" " blue111     = 111

" Specify the the colors used by the inbuilt terminal of Neovim and Vim.
if g:moonflyTerminalColors
    if has("nvim")
        let g:terminal_color_0  = "#373c40"
        let g:terminal_color_1  = "#ff5454"
        let g:terminal_color_2  = "#8cc85f"
        let g:terminal_color_3  = "#e3c78a"
        let g:terminal_color_4  = "#80a0ff"
        let g:terminal_color_5  = "#d183e8"
        let g:terminal_color_6  = "#7ee0ce"
        let g:terminal_color_7  = "#b2b2b2"
        let g:terminal_color_8  = "#949494"
        let g:terminal_color_9  = "#f74782"
        let g:terminal_color_10 = "#42cf89"
        let g:terminal_color_11 = "#cfcfb0"
        let g:terminal_color_12 = "#78c2ff"
        let g:terminal_color_13 = "#ae81ff"
        let g:terminal_color_14 = "#85dc85"
        let g:terminal_color_15 = "#dadada"
    else
        let g:terminal_ansi_colors = [
                    \ "#373c40", "#ff5454", "#8cc85f", "#e3c78a",
                    \ "#80a0ff", "#d183e8", "#7ee0ce", "#b2b2b2",
                    \ "#949494", "#f74782", "#42cf89", "#cfcfb0",
                    \ "#78c2ff", "#ae81ff", "#85dc85", "#dadada"
                    \]
    endif
endif

" Background and text.
exec "highlight Normal ctermbg=232 ctermfg=251 guibg=" . s:black . " guifg=" . s:white

" Color of mode text, -- INSERT --
exec "highlight ModeMsg ctermfg=247 guifg=" . s:grey247 . " gui=none"

" Comments.
if g:moonflyItalics
    exec "highlight Comment ctermfg=246 guifg=" . s:grey246 . " gui=italic"
else
    exec "highlight Comment ctermfg=246 guifg=" . s:grey246
endif

" Functions.
exec "highlight Function ctermfg=12 guifg=" . s:sky

" Strings.
exec "highlight String ctermfg=11 guifg=" . s:wheat

" Booleans.
exec "highlight Boolean ctermfg=6 guifg=" . s:turquoise

" Identifiers.
exec "highlight Identifier ctermfg=6 cterm=none guifg=" . s:turquoise

" Color of titles, e.g in HTML files and Tagbar.
exec "highlight Title ctermfg=7 guifg=" . s:orange . " gui=none"

" const, static.
exec "highlight StorageClass ctermfg=8 guifg=" . s:coral

" void, intptr_t.
exec "highlight Type ctermfg=10 guifg=" . s:emerald . " gui=none"

" Numbers.
exec "highlight Constant ctermfg=13 guifg=" . s:purple

" Exceptions.
exec "highlight Exception ctermfg=9 guifg=" . s:crimson

" ifdef/endif.
exec "highlight PreProc ctermfg=15 guifg=" . s:cranberry

" Status, split and tab lines.
exec "highlight StatusLine ctermbg=236  ctermfg=251 cterm=none guibg=" . s:grey236 . " guifg=" . s:white . " gui=none"
exec "highlight StatusLineNC ctermbg=236 ctermfg=247 cterm=none guibg=" . s:grey236 . " guifg=" . s:grey247 . " gui=none"
exec "highlight VertSplit ctermbg=236 ctermfg=236 guibg=" . s:grey236 . " guifg=" . s:grey236
exec "highlight Tabline ctermbg=236 ctermfg=247 cterm=none guibg=" . s:grey236 . " guifg=" . s:grey247 . " gui=none"
exec "highlight TablineSel ctermbg=236 ctermfg=4 cterm=none guibg=" . s:grey236 . " guifg=" . s:blue . " gui=none"
exec "highlight TablineFill ctermbg=236 ctermfg=236 guibg=" . s:grey236 . " guifg=" . s:grey236
exec "highlight StatusLineTerm ctermbg=236 ctermfg=251 cterm=none guibg=" . s:grey236 . " guifg=" . s:white . " gui=none"
exec "highlight StatusLineTermNC ctermbg=236 ctermfg=247 cterm=none guibg=" . s:grey236 . " guifg=" . s:grey247 . " gui=none"

" case in switch statement.
exec "highlight Label ctermfg=6 guifg=" . s:turquoise

" end-of-line '$', end-of-file '~'
exec "highlight NonText ctermfg=7 guifg=" . s:orange . " gui=none"

" sizeof
exec "highlight Operator ctermfg=15 guifg=" . s:cranberry

" for, while.
exec "highlight Repeat ctermfg=5 guifg=" . s:violet

" Search.
exec "highlight Search ctermbg=bg ctermfg=8 cterm=reverse guibg=bg guifg=" . s:coral . " gui=reverse"
exec "highlight IncSearch ctermbg=bg ctermfg=3 guibg=bg guifg=" . s:yellow

" '\n' sequences.
exec "highlight Special ctermfg=15 guifg=" . s:cranberry

" if, else.
exec "highlight Statement ctermfg=5 guifg=" . s:violet . " gui=none"

" Visual selection.
exec "highlight Visual ctermbg=0 guibg=" . s:grey0
exec "highlight VisualNOS ctermbg=0 ctermfg=fg cterm=none guibg=" . s:grey0 . " guifg=fg gui=none"
exec "highlight VisualInDiff ctermbg=0 ctermfg=251 guibg=" . s:grey0 . " guifg=" . s:white

" Errors, warnings and whitespace-eol.
exec "highlight Error ctermbg=bg ctermfg=1 guibg=bg guifg=" . s:red
exec "highlight ErrorMsg ctermbg=bg ctermfg=1 guibg=bg guifg=" . s:red
exec "highlight WarningMsg ctermbg=bg ctermfg=7 guibg=bg guifg=" . s:orange

" struct, union, enum, typedef.
exec "highlight Structure ctermfg=4 guifg=" . s:blue

" Auto-text-completion menu.
exec "highlight Pmenu ctermbg=235 ctermfg=fg guibg=" . s:grey235 . " guifg=fg"
exec "highlight PmenuSel ctermbg=2 ctermfg=236 guibg=" . s:green . " guifg=" . s:grey236
exec "highlight PmenuSbar ctermbg=235 guibg=" . s:grey235
exec "highlight PmenuThumb ctermbg=244 guibg=" . s:grey244
exec "highlight WildMenu ctermbg=2 ctermfg=236 guibg=" . s:green . " guifg=" . s:grey236

" Spelling errors.
if g:moonflyUndercurls
    exec "highlight SpellBad ctermbg=bg ctermfg=1 cterm=underline guibg=bg gui=undercurl guisp=" . s:red
    exec "highlight SpellCap ctermbg=bg ctermfg=4 cterm=underline guibg=bg gui=undercurl guisp=" . s:blue
    exec "highlight SpellRare ctermbg=bg ctermfg=3 cterm=underline guibg=bg gui=undercurl guisp=" . s:yellow
    exec "highlight SpellLocal ctermbg=bg ctermfg=12 cterm=underline guibg=bg gui=undercurl guisp=" . s:sky
else
    exec "highlight SpellBad ctermbg=bg ctermfg=1 cterm=underline guibg=bg guifg=" . s:red . " gui=underline guisp=" . s:red
    exec "highlight SpellCap ctermbg=bg ctermfg=4 cterm=underline guibg=bg guifg=" . s:blue . " gui=underline guisp=" . s:blue
    exec "highlight SpellRare ctermbg=bg ctermfg=3 cterm=underline guibg=bg guifg=" . s:yellow . " gui=underline guisp=" . s:yellow
    exec "highlight SpellLocal ctermbg=bg ctermfg=12 cterm=underline guibg=bg guifg=" . s:sky . " gui=underline guisp=" . s:sky
endif

" Misc.
exec "highlight Question ctermfg=14 guifg=" . s:lime . " gui=none"
exec "highlight MoreMsg ctermfg=1 guifg=" . s:red . " gui=none"
exec "highlight LineNr ctermbg=bg ctermfg=241 guibg=bg guifg=" . s:grey241
if g:moonflyCursorColor
    exec "highlight Cursor ctermfg=bg ctermbg=4 guifg=bg guibg=" . s:blue
else
    exec "highlight Cursor ctermfg=bg ctermbg=247 guifg=bg guibg=" . s:grey247
endif
exec "highlight lCursor ctermfg=bg ctermbg=247 guifg=bg guibg=" . s:grey247
exec "highlight CursorLineNr ctermbg=234 ctermfg=4 cterm=none guibg=" . s:grey234 . " guifg=" . s:blue . " gui=none"
exec "highlight CursorColumn ctermbg=234 cterm=none guibg=" . s:grey234
exec "highlight CursorLine ctermbg=234 cterm=none guibg=" . s:grey234
exec "highlight Folded ctermbg=234 ctermfg=14 guibg=" . s:grey234 . " guifg=". s:lime
exec "highlight FoldColumn ctermbg=236 ctermfg=14 guibg=" . s:grey236 . " guifg=" . s:lime
exec "highlight SignColumn ctermbg=bg ctermfg=14 guibg=bg guifg=" . s:lime
exec "highlight Todo ctermbg=3 ctermfg=bg guibg=" . s:yellow . " guifg=bg"
exec "highlight SpecialKey ctermbg=bg ctermfg=12 guibg=bg guifg=" . s:sky
if g:moonflyUnderlineMatchParen
    exec "highlight MatchParen ctermbg=bg ctermfg=8 cterm=underline guibg=bg guifg=" . s:coral . " gui=underline"
else
    exec "highlight MatchParen ctermbg=bg ctermfg=8 guibg=bg guifg=" . s:coral
endif
exec "highlight Ignore ctermfg=12 guifg=" . s:sky
exec "highlight Underlined ctermfg=10 cterm=none guifg=" . s:emerald . " gui=none"
exec "highlight QuickFixLine ctermbg=237 cterm=none guibg=" . s:grey237
exec "highlight Delimiter ctermfg=11 guifg=" . s:wheat

" Neovim only highlight groups.
exec "highlight Whitespace ctermfg=235 guifg=" . s:grey235
exec "highlight TermCursor ctermbg=247 ctermfg=bg cterm=none guibg=" . s:grey247 . " guifg=bg gui=none"

" Color column (after line 80).
exec "highlight ColorColumn ctermbg=233 guibg=" . s:grey233

" Conceal color, as used by indentLine plugin.
exec "highlight Conceal ctermbg=bg ctermfg=235 guibg=bg guifg=" . s:grey235

" C/C++
exec "highlight cDefine ctermfg=5 guifg=" . s:violet
exec "highlight cPreCondit ctermfg=5 guifg=" . s:violet
exec "highlight cStatement ctermfg=5 guifg=" . s:violet
exec "highlight cStructure ctermfg=8 guifg=" . s:coral
exec "highlight cppAccess ctermfg=14 guifg=" . s:lime
exec "highlight cppBoolean ctermfg=3 guifg=" . s:yellow
exec "highlight cppCast ctermfg=6 guifg=" . s:turquoise
exec "highlight cppCustomClass ctermfg=6 guifg=" . s:turquoise
exec "highlight cppExceptions ctermfg=14 guifg=" . s:lime
exec "highlight cppModifier ctermfg=5 guifg=" . s:violet
exec "highlight cppOperator ctermfg=2 guifg=" . s:green
exec "highlight cppStatement ctermfg=6 guifg=" . s:turquoise
exec "highlight cppSTLconstant ctermfg=12 guifg=" . s:sky
exec "highlight cppStructure ctermfg=5 guifg=" . s:violet

" C#
exec "highlight csModifier ctermfg=14 guifg=" . s:lime
exec "highlight csPrecondit ctermfg=5 guifg=" . s:violet
exec "highlight csStorage ctermfg=5 guifg=" . s:violet
exec "highlight csXmlTag ctermfg=4 guifg=" . s:blue

" Clojure
exec "highlight clojureDefine ctermfg=5 guifg=" . s:violet
exec "highlight clojureKeyword ctermfg=13 guifg=" . s:purple
exec "highlight clojureMacro ctermfg=7 guifg=" . s:orange
exec "highlight clojureParen ctermfg=4 guifg=" . s:blue
exec "highlight clojureSpecial ctermfg=12 guifg=" . s:sky

" CoffeeScript
exec "highlight coffeeConstant ctermfg=10 guifg=" . s:emerald
exec "highlight coffeeGlobal ctermfg=6 guifg=" . s:turquoise
exec "highlight coffeeKeyword ctermfg=7 guifg=" . s:orange
exec "highlight coffeeObjAssign ctermfg=12 guifg=" . s:sky
exec "highlight coffeeSpecialIdent ctermfg=14 guifg=" . s:lime
exec "highlight coffeeSpecialVar ctermfg=4 guifg=" . s:blue
exec "highlight coffeeStatement ctermfg=8 guifg=" . s:coral

" Crystal
exec "highlight crystalAccess ctermfg=3 guifg=" . s:yellow
exec "highlight crystalAttribute ctermfg=12 guifg=" . s:sky
exec "highlight crystalBlockParameter ctermfg=2 guifg=" . s:green
exec "highlight crystalClass ctermfg=7 guifg=" . s:orange
exec "highlight crystalDefine ctermfg=5 guifg=" . s:violet
exec "highlight crystalExceptional ctermfg=8 guifg=" . s:coral
exec "highlight crystalInstanceVariable ctermfg=14 guifg=" . s:lime
exec "highlight crystalModule ctermfg=4 guifg=" . s:blue
exec "highlight crystalPseudoVariable ctermfg=2 guifg=" . s:green
exec "highlight crystalSharpBang ctermfg=247 guifg=" . s:grey247
exec "highlight crystalStringDelimiter ctermfg=11 guifg=" . s:wheat

" CSS
exec "highlight cssIdentifier ctermfg=3 guifg=" . s:yellow

" Dart
exec "highlight dartMetadata ctermfg=14 guifg=" . s:lime
exec "highlight dartStorageClass ctermfg=5 guifg=" . s:violet
exec "highlight dartTypedef ctermfg=5 guifg=" . s:violet
exec "highlight dartUserType ctermfg=4 guifg=" . s:blue

" Elixir
exec "highlight eelixirDelimiter ctermfg=9 guifg=" . s:crimson
exec "highlight elixirBlockDefinition ctermfg=5 guifg=" . s:violet
exec "highlight elixirDefine ctermfg=5 guifg=" . s:violet
exec "highlight elixirDocTest ctermfg=247 guifg=" . s:grey247
exec "highlight elixirExUnitAssert ctermfg=14 guifg=" . s:lime
exec "highlight elixirExUnitMacro ctermfg=12 guifg=" . s:sky
exec "highlight elixirKernelFunction ctermfg=2 guifg=" . s:green
exec "highlight elixirKeyword ctermfg=7 guifg=" . s:orange
exec "highlight elixirModuleDefine ctermfg=4 guifg=" . s:blue
exec "highlight elixirPrivateDefine ctermfg=5 guifg=" . s:violet
exec "highlight elixirStringDelimiter ctermfg=11 guifg=" . s:wheat
exec "highlight elixirVariable ctermfg=6 guifg=" . s:turquoise

" Elm
exec "highlight elmLetBlockDefinition ctermfg=14 guifg=" . s:lime
exec "highlight elmTopLevelDecl ctermfg=8 guifg=" . s:coral
exec "highlight elmType ctermfg=12 guifg=" . s:sky

" Go
exec "highlight goBuiltins ctermfg=9 guifg=" . s:crimson
exec "highlight goConditional ctermfg=5 guifg=" . s:violet
exec "highlight goDeclType ctermfg=2 guifg=" . s:green
exec "highlight goDirective ctermfg=15 guifg=" . s:cranberry
exec "highlight goFloats ctermfg=13 guifg=" . s:purple
exec "highlight goFunction ctermfg=4 guifg=" . s:blue
exec "highlight goFunctionCall ctermfg=12 guifg=" . s:sky
exec "highlight goImport ctermfg=15 guifg=" . s:cranberry
exec "highlight goLabel ctermfg=3 guifg=" . s:yellow
exec "highlight goMethod ctermfg=12 guifg=" . s:sky
exec "highlight goMethodCall ctermfg=12 guifg=" . s:sky
exec "highlight goPackage ctermfg=5 guifg=" . s:violet
exec "highlight goRepeat ctermfg=7 guifg=" . s:orange
exec "highlight goSignedInts ctermfg=10 guifg=" . s:emerald
exec "highlight goStruct ctermfg=8 guifg=" . s:coral
exec "highlight goStructDef ctermfg=8 guifg=" . s:coral
exec "highlight goUnsignedInts ctermfg=13 guifg=" . s:purple

" Haskell
exec "highlight haskellDecl ctermfg=7 guifg=" . s:orange
exec "highlight haskellDeclKeyword ctermfg=7 guifg=" . s:orange
exec "highlight haskellIdentifier ctermfg=6 guifg=" . s:turquoise
exec "highlight haskellLet ctermfg=12 guifg=" . s:sky
exec "highlight haskellOperators ctermfg=15 guifg=" . s:cranberry
exec "highlight haskellType ctermfg=12 guifg=" . s:sky
exec "highlight haskellWhere ctermfg=5 guifg=" . s:violet

" HTML
exec "highlight htmlArg ctermfg=12 guifg=" . s:sky
exec "highlight htmlLink ctermfg=2 guifg=" . s:green
exec "highlight htmlEndTag ctermfg=13 guifg=" . s:purple
exec "highlight htmlTag ctermfg=14 guifg=" . s:lime
exec "highlight htmlTagN ctermfg=4 guifg=" . s:blue
exec "highlight htmlTagName ctermfg=4 guifg=" . s:blue
if g:moonflyItalics
    exec "highlight htmlBoldItalic ctermbg=232 ctermfg=8 guibg=" . s:black . " guifg=" . s:coral . " gui=italic"
    exec "highlight htmlBoldUnderlineItalic ctermbg=232 ctermfg=8 guibg=" . s:black . " guifg=" . s:coral . " gui=italic"
    exec "highlight htmlItalic ctermfg=247 guifg=" . s:grey247 . " gui=italic"
    exec "highlight htmlUnderlineItalic ctermbg=232 ctermfg=247 guibg=" . s:black . " guifg=" . s:grey247 . " gui=italic"
else
    exec "highlight htmlBoldItalic ctermbg=232 ctermfg=8 cterm=none guibg=" . s:black . " guifg=" . s:coral " gui=none"
    exec "highlight htmlBoldUnderlineItalic ctermbg=232 ctermfg=8 guibg=" . s:black . " guifg=" . s:coral
    exec "highlight htmlItalic ctermfg=247 cterm=none guifg=" . s:grey247 " gui=none"
    exec "highlight htmlUnderlineItalic ctermbg=232 ctermfg=247 guibg=" . s:black . " guifg=" . s:grey247
endif

" Java
exec "highlight javaAnnotation ctermfg=14 guifg=" . s:lime
exec "highlight javaBraces ctermfg=251 guifg=" . s:white
exec "highlight javaClassDecl ctermfg=3 guifg=" . s:yellow
exec "highlight javaCommentTitle ctermfg=247 guifg=" . s:grey247
exec "highlight javaConstant ctermfg=12 guifg=" . s:sky
exec "highlight javaDebug ctermfg=12 guifg=" . s:sky
exec "highlight javaMethodDecl ctermfg=3 guifg=" . s:yellow
exec "highlight javaOperator ctermfg=9 guifg=" . s:crimson
exec "highlight javaScopeDecl ctermfg=5 guifg=" . s:violet
exec "highlight javaStatement ctermfg=6 guifg=" . s:turquoise

" JavaScript, 'pangloss/vim-javascript' plugin
exec "highlight jsClassDefinition ctermfg=10 guifg=" . s:emerald
exec "highlight jsClassKeyword ctermfg=7 guifg=" . s:orange
exec "highlight jsFrom ctermfg=8 guifg=" . s:coral
exec "highlight jsFuncBlock ctermfg=6 guifg=" . s:turquoise
exec "highlight jsFuncCall ctermfg=12 guifg=" . s:sky
exec "highlight jsFunction ctermfg=14 guifg=" . s:lime
exec "highlight jsGlobalObjects ctermfg=10 guifg=" . s:emerald
exec "highlight jsModuleAs ctermfg=8 guifg=" . s:coral
exec "highlight jsObjectKey ctermfg=12 guifg=" . s:sky
exec "highlight jsObjectValue ctermfg=10 guifg=" . s:emerald
exec "highlight jsOperator ctermfg=5 guifg=" . s:violet
exec "highlight jsStorageClass ctermfg=14 guifg=" . s:lime
exec "highlight jsTemplateBraces ctermfg=15 guifg=" . s:cranberry
exec "highlight jsTemplateExpression ctermfg=6 guifg=" . s:turquoise
exec "highlight jsThis ctermfg=2 guifg=" . s:green

" JSX, 'MaxMEllon/vim-jsx-pretty' plugin
exec "highlight jsxAttrib ctermfg=14 guifg=" . s:lime
exec "highlight jsxClosePunct ctermfg=13 guifg=" . s:purple
exec "highlight jsxComponentName ctermfg=4 guifg=" . s:blue
exec "highlight jsxOpenPunct ctermfg=14 guifg=" . s:lime
exec "highlight jsxTagName ctermfg=12 guifg=" . s:sky

" Lua
exec "highlight luaBraces ctermfg=15 guifg=" . s:cranberry
exec "highlight luaBuiltin ctermfg=2 guifg=" . s:green
exec "highlight luaFuncCall ctermfg=12 guifg=" . s:sky
exec "highlight luaSpecialTable ctermfg=12 guifg=" . s:sky

" Markdown, 'plasticboy/vim-markdown' plugin
highlight link mkdLineBreak NormalNC
exec "highlight mkdListItem ctermfg=4 guifg=" . s:blue
exec "highlight mkdURL ctermfg=13 guifg=" . s:purple

" PHP
exec "highlight phpClass ctermfg=10 guifg=" . s:emerald
exec "highlight phpClasses ctermfg=4 guifg=" . s:blue
exec "highlight phpFunction ctermfg=12 guifg=" . s:sky
exec "highlight phpParent ctermfg=fg guifg=fg"
exec "highlight phpType ctermfg=3 guifg=" . s:yellow

" PureScript
exec "highlight purescriptClass ctermfg=7 guifg=" . s:orange
exec "highlight purescriptModuleParams ctermfg=8 guifg=" . s:coral

" Python
exec "highlight pythonBuiltin ctermfg=4 guifg=" . s:blue
exec "highlight pythonClassVar ctermfg=2 guifg=" . s:green
exec "highlight pythonCoding ctermfg=12 guifg=" . s:sky
exec "highlight pythonImport ctermfg=15 guifg=" . s:cranberry
exec "highlight pythonOperator ctermfg=5 guifg=" . s:violet
exec "highlight pythonRun ctermfg=12 guifg=" . s:sky
exec "highlight pythonStatement ctermfg=5 guifg=" s:violet

" Ruby
exec "highlight erubyDelimiter ctermfg=9 guifg=" . s:crimson
exec "highlight rspecGroupMethods ctermfg=4 guifg=" . s:blue
exec "highlight rubyAccess ctermfg=3 guifg=" . s:yellow
exec "highlight rubyAssertion ctermfg=12 guifg=" . s:sky
exec "highlight rubyAttribute ctermfg=12 guifg=" . s:sky
exec "highlight rubyBlockParameter ctermfg=2 guifg=" . s:green
exec "highlight rubyCallback ctermfg=12 guifg=" . s:sky
exec "highlight rubyClass ctermfg=7 guifg=" . s:orange
exec "highlight rubyDefine ctermfg=5 guifg=" . s:violet
exec "highlight rubyEntities ctermfg=12 guifg=" . s:sky
exec "highlight rubyExceptional ctermfg=8 guifg=" . s:coral
exec "highlight rubyGemfileMethod ctermfg=12 guifg=" . s:sky
exec "highlight rubyInstanceVariable ctermfg=14 guifg=" . s:lime
exec "highlight rubyInterpolationDelimiter ctermfg=15 guifg=" . s:cranberry
exec "highlight rubyMacro ctermfg=12 guifg=" . s:sky
exec "highlight rubyModule ctermfg=4 guifg=" . s:blue
exec "highlight rubyPseudoVariable ctermfg=2 guifg=" . s:green
exec "highlight rubyResponse ctermfg=6 guifg=" . s:turquoise
exec "highlight rubyRoute ctermfg=12 guifg=" . s:sky
exec "highlight rubySharpBang ctermfg=247 guifg=" . s:grey247
exec "highlight rubyStringDelimiter ctermfg=11 guifg=" . s:wheat
augroup MoonflyRubyAutocmds
    autocmd!
    " Use different colors when in Ruby and eRuby files for 'rubyConstant'.
    autocmd FileType eruby exec "highlight rubyConstant ctermfg=6 guifg=" . s:turquoise
    autocmd FileType ruby exec "highlight rubyConstant ctermfg=10 guifg=" . s:emerald
augroup END

" Rust
exec "highlight rustAssert ctermfg=2 guifg=" . s:green
exec "highlight rustAttribute guifg=fg"
exec "highlight rustCharacterInvalid ctermfg=15 guifg=" . s:cranberry
exec "highlight rustCharacterInvalidUnicode ctermfg=15 guifg=" . s:cranberry
exec "highlight rustCommentBlockDoc ctermfg=247 guifg=" . s:grey247
exec "highlight rustCommentBlockDocError ctermfg=247 guifg=" . s:grey247
exec "highlight rustCommentLineDoc ctermfg=247 guifg=" . s:grey247
exec "highlight rustCommentLineDocError ctermfg=247 guifg=" . s:grey247
exec "highlight rustConstant ctermfg=7 guifg=" . s:orange
exec "highlight rustDerive ctermfg=2 guifg=" . s:green
exec "highlight rustEscapeError ctermfg=15 guifg=" . s:cranberry
exec "highlight rustFuncName ctermfg=4 guifg=" . s:blue
exec "highlight rustIdentifier ctermfg=4 guifg=" . s:blue
exec "highlight rustInvalidBareKeyword ctermfg=15 guifg=" . s:cranberry
exec "highlight rustKeyword ctermfg=5 guifg=" . s:violet
exec "highlight rustLifetime ctermfg=5 guifg=" . s:violet
exec "highlight rustMacro ctermfg=2 guifg=" . s:green
exec "highlight rustMacroVariable ctermfg=5 guifg=" . s:violet
exec "highlight rustModPath ctermfg=12 guifg=" . s:sky
exec "highlight rustObsoleteExternMod ctermfg=15 guifg=" . s:cranberry
exec "highlight rustObsoleteStorage ctermfg=15 guifg=" . s:cranberry
exec "highlight rustReservedKeyword ctermfg=15 guifg=" . s:cranberry
exec "highlight rustSelf ctermfg=6 guifg=" . s:turquoise
exec "highlight rustSigil ctermfg=6 guifg=" . s:turquoise
exec "highlight rustStorage ctermfg=5 guifg=" . s:violet
exec "highlight rustStructure ctermfg=5 guifg=" . s:violet
exec "highlight rustTrait ctermfg=10 guifg=" . s:emerald
exec "highlight rustType ctermfg=10 guifg=" . s:emerald

" Scala
exec "highlight scalaCapitalWord ctermfg=4 guifg=" . s:blue
exec "highlight scalaCommentCodeBlock ctermfg=247 guifg=" . s:grey247
exec "highlight scalaInstanceDeclaration ctermfg=6 guifg=" . s:turquoise
exec "highlight scalaKeywordModifier ctermfg=14 guifg=" . s:lime
exec "highlight scalaSpecial ctermfg=9 guifg=" . s:crimson

" Shell scripts
exec "highlight shStatement ctermfg=fg guifg=fg"
exec "highlight shCommandSub ctermfg=fg guifg=fg"
exec "highlight shShellVariables ctermfg=8 guifg=" . s:coral
exec "highlight shVariable ctermfg=6 guifg=" . s:turquoise
exec "highlight shAlias ctermfg=6 guifg=" . s:turquoise
exec "highlight shSetList ctermfg=6 guifg=" . s:turquoise

" TypeScript (leafgarland/typescript-vim)
exec "highlight typescriptDOMObjects ctermfg=4 guifg=" . s:blue
exec "highlight typescriptFuncComma ctermfg=251 guifg=" . s:white
exec "highlight typescriptFuncKeyword ctermfg=14 guifg=" . s:lime
exec "highlight typescriptGlobalObjects ctermfg=4 guifg=" . s:blue
exec "highlight typescriptIdentifier ctermfg=2 guifg=" . s:green
exec "highlight typescriptNull ctermfg=2 guifg=" . s:green
exec "highlight typescriptOpSymbols ctermfg=5 guifg=" . s:violet
exec "highlight typescriptOperator ctermfg=9 guifg=" . s:crimson
exec "highlight typescriptParens ctermfg=251 guifg=" . s:white
exec "highlight typescriptReserved ctermfg=5 guifg=" . s:violet
exec "highlight typescriptStorageClass ctermfg=14 guifg=" . s:lime

" TypeScript (HerringtonDarkholme/yats.vim)
exec "highlight typeScriptModule ctermfg=4 guifg=" . s:blue
exec "highlight typescriptAbstract ctermfg=8 guifg=" . s:coral
exec "highlight typescriptArrayMethod ctermfg=12 guifg=" . s:sky
exec "highlight typescriptArrowFuncArg ctermfg=251 guifg=" . s:white
exec "highlight typescriptBOM ctermfg=10 guifg=" . s:emerald
exec "highlight typescriptBOMHistoryMethod ctermfg=12 guifg=" . s:sky
exec "highlight typescriptBOMLocationMethod ctermfg=12 guifg=" . s:sky
exec "highlight typescriptBOMWindowProp ctermfg=2 guifg=" . s:green
exec "highlight typescriptBraces ctermfg=251 guifg=" . s:white
exec "highlight typescriptCall ctermfg=251 guifg=" . s:white
exec "highlight typescriptClassHeritage ctermfg=10 guifg=" . s:emerald
exec "highlight typescriptClassKeyword ctermfg=7 guifg=" . s:orange
exec "highlight typescriptClassName ctermfg=10 guifg=" . s:emerald
exec "highlight typescriptDecorator ctermfg=14 guifg=" . s:lime
exec "highlight typescriptDOMDocMethod ctermfg=12 guifg=" . s:sky
exec "highlight typescriptDOMEventTargetMethod ctermfg=12 guifg=" . s:sky
exec "highlight typescriptDOMNodeMethod ctermfg=12 guifg=" . s:sky
exec "highlight typescriptExceptions ctermfg=9 guifg=" . s:crimson
exec "highlight typescriptFuncType ctermfg=251 guifg=" . s:white
exec "highlight typescriptMathStaticMethod ctermfg=12 guifg=" . s:sky
exec "highlight typescriptMethodAccessor ctermfg=5 guifg=" . s:violet
exec "highlight typescriptObjectLabel ctermfg=12 guifg=" . s:sky
exec "highlight typescriptParamImpl ctermfg=251 guifg=" . s:white
exec "highlight typescriptStringMethod ctermfg=12 guifg=" . s:sky
exec "highlight typescriptTry ctermfg=9 guifg=" . s:crimson
exec "highlight typescriptVariable ctermfg=14 guifg=" . s:lime
exec "highlight typescriptXHRMethod ctermfg=12 guifg=" . s:sky

" Vimscript
exec "highlight vimBracket ctermfg=12 guifg=" . s:sky
exec "highlight vimCommand ctermfg=7 guifg=" . s:orange
exec "highlight vimCommentTitle ctermfg=5 guifg=" . s:violet
exec "highlight vimEnvvar ctermfg=9 guifg=" . s:crimson
exec "highlight vimFuncName ctermfg=12 guifg=" . s:sky
exec "highlight vimFuncSID ctermfg=12 guifg=" . s:sky
exec "highlight vimFunction ctermfg=12 guifg=" . s:sky
exec "highlight vimNotation ctermfg=12 guifg=" . s:sky
exec "highlight vimOption ctermfg=10 guifg=" . s:emerald
exec "highlight vimParenSep ctermfg=251 guifg=" . s:white
exec "highlight vimSep ctermfg=251 guifg=" . s:white
exec "highlight vimUserFunc ctermfg=12 guifg=" . s:sky

" XML
exec "highlight xmlAttrib ctermfg=14 guifg=" . s:lime
exec "highlight xmlEndTag ctermfg=4 guifg=" . s:blue
exec "highlight xmlTag ctermfg=14 guifg=" . s:lime
exec "highlight xmlTagName ctermfg=4 guifg=" . s:blue

" vimdiff/nvim -d
exec "highlight DiffAdd ctermbg=10 ctermfg=bg guibg=" . s:emerald . " guifg=bg"
exec "highlight DiffChange ctermbg=236 guibg=" . s:grey236
exec "highlight DiffDelete ctermbg=236 ctermfg=9 guibg=" . s:grey236 . " guifg=" . s:crimson " gui=none"
exec "highlight DiffText ctermbg=4 ctermfg=bg guibg=" . s:blue . " guifg=bg gui=none"

" Git commits
exec "highlight gitCommitBranch ctermfg=12 guifg=" . s:sky
exec "highlight gitCommitDiscardedFile ctermfg=9 guifg=" . s:crimson
exec "highlight gitCommitDiscardedType ctermfg=12 guifg=" . s:sky
exec "highlight gitCommitHeader ctermfg=13 guifg=" . s:purple
exec "highlight gitCommitSelectedFile ctermfg=10 guifg=" . s:emerald
exec "highlight gitCommitSelectedType ctermfg=12 guifg=" . s:sky
exec "highlight gitCommitUntrackedFile ctermfg=15 guifg=" . s:cranberry

" Tagbar plugin
exec "highlight TagbarFoldIcon ctermfg=247 guifg=" . s:grey247
exec "highlight TagbarVisibilityPublic ctermfg=14 guifg=" . s:lime
exec "highlight TagbarVisibilityProtected ctermfg=14 guifg=" . s:lime
exec "highlight TagbarVisibilityPrivate ctermfg=14 guifg=" . s:lime
exec "highlight TagbarKind ctermfg=10 guifg=" . s:emerald

" NERDTree plugin
exec "highlight NERDTreeClosable ctermfg=2 guifg=" . s:green
exec "highlight NERDTreeCWD ctermfg=13 guifg=" . s:purple
exec "highlight NERDTreeDir ctermfg=12 guifg=" . s:sky
exec "highlight NERDTreeDirSlash ctermfg=15 guifg=" . s:cranberry
exec "highlight NERDTreeExecFile ctermfg=11 guifg=" . s:wheat
exec "highlight NERDTreeFile ctermfg=251 guifg=" . s:white
exec "highlight NERDTreeHelp ctermfg=247 guifg=" . s:grey247
exec "highlight NERDTreeLinkDir ctermfg=4 guifg=" . s:blue
exec "highlight NERDTreeLinkFile ctermfg=4 guifg=" . s:blue
exec "highlight NERDTreeLinkTarget ctermfg=6 guifg=" . s:turquoise
exec "highlight NERDTreeOpenable ctermfg=2 guifg=" . s:green
exec "highlight NERDTreePart ctermfg=0 guifg=" . s:grey0
exec "highlight NERDTreePartFile ctermfg=0 guifg=" . s:grey0
exec "highlight NERDTreeUp ctermfg=4 guifg=" . s:blue

" NERDTree Git plugin
exec "highlight NERDTreeGitStatusDirDirty ctermfg=11 guifg=" . s:wheat
exec "highlight NERDTreeGitStatusModified ctermfg=9 guifg=" . s:crimson
exec "highlight NERDTreeGitStatusRenamed ctermfg=12 guifg=" . s:sky
exec "highlight NERDTreeGitStatusStaged ctermfg=12 guifg=" . s:sky
exec "highlight NERDTreeGitStatusUntracked ctermfg=1 guifg=" . s:red

" Neomake plugin
if g:moonflyUndercurls
    exec "highlight NeomakeError ctermbg=bg guibg=bg gui=undercurl guisp=" . s:red
    exec "highlight NeomakeWarning ctermbg=bg guibg=bg gui=undercurl guisp=" . s:yellow
    exec "highlight NeomakeInfo ctermbg=bg guibg=bg gui=undercurl guisp=" . s:sky
    exec "highlight NeomakeMessage ctermbg=bg guibg=bg gui=undercurl guisp=" . s:white
else
    exec "highlight NeomakeError ctermbg=bg guibg=bg"
    exec "highlight NeomakeWarning ctermbg=bg guibg=bg"
    exec "highlight NeomakeInfo ctermbg=bg guibg=bg"
    exec "highlight NeomakeMessage ctermbg=bg guibg=bg"
endif
exec "highlight NeomakeErrorSign ctermbg=bg ctermfg=1 guibg=bg guifg=" . s:red
exec "highlight NeomakeWarningSign ctermbg=bg ctermfg=3 guibg=bg guifg=" . s:yellow
exec "highlight NeomakeInfoSign ctermbg=bg ctermfg=12 guibg=bg guifg=" . s:sky
exec "highlight NeomakeMessageSign ctermbg=bg ctermfg=251 guibg=bg guifg=" . s:white

" ALE plugin
if g:moonflyUndercurls
     exec "highlight ALEError ctermbg=bg guibg=bg gui=undercurl guisp=" . s:red
     exec "highlight ALEWarning ctermbg=bg guibg=bg gui=undercurl guisp=" . s:yellow
     exec "highlight ALEInfo ctermbg=bg guibg=bg gui=undercurl guisp=" . s:sky
else
    exec "highlight ALEError ctermbg=bg guibg=bg"
    exec "highlight ALEWarning ctermbg=bg guibg=bg"
    exec "highlight ALEInfo ctermbg=bg guibg=bg"
endif
exec "highlight ALEVirtualTextError ctermbg=235 ctermfg=1 guibg=" . s:grey235 . " guifg=" . s:red
exec "highlight ALEErrorSign ctermbg=bg ctermfg=1 guibg=bg guifg=" . s:red
exec "highlight ALEVirtualTextWarning ctermbg=235 ctermfg=3 guibg=" . s:grey235 . " guifg=" . s:yellow
exec "highlight ALEWarningSign ctermbg=bg ctermfg=3 guibg=bg guifg=" . s:yellow
exec "highlight ALEVirtualTextInfo ctermbg=235 ctermfg=12 guibg=" . s:grey235 . " guifg=" . s:sky
exec "highlight ALEInfoSign ctermbg=bg ctermfg=12 guibg=bg guifg=" . s:sky

" GitGutter plugin
exec "highlight GitGutterAdd ctermbg=bg ctermfg=14 guibg=bg guifg=" . s:lime
exec "highlight GitGutterChange ctermbg=bg ctermfg=13 guibg=bg guifg=" . s:purple
exec "highlight GitGutterChangeDelete ctermbg=bg ctermfg=8 guibg=bg guifg=" . s:coral
exec "highlight GitGutterDelete ctermbg=bg ctermfg=1 guibg=bg guifg=" . s:red

" FZF plugin
exec "highlight fzf1 ctermfg=9 ctermbg=236 guifg=" . s:crimson . " guibg=" . s:grey236
exec "highlight fzf2 ctermfg=111 ctermbg=236 guifg=" . s:blue111 . " guibg=" . s:grey236
exec "highlight fzf3 ctermfg=10 ctermbg=236 guifg=" . s:emerald . " guibg=" . s:grey236
exec "highlight fzfNormal ctermfg=249 guifg=" . s:grey249
exec "highlight fzfFgPlus ctermfg=253 guifg=" . s:grey253
let g:fzf_colors = {
  \  'fg':      ['fg', 'fzfNormal'],
  \  'bg':      ['bg', 'Normal'],
  \  'hl':      ['fg', 'Number'],
  \  'fg+':     ['fg', 'fzfFgPlus'],
  \  'bg+':     ['bg', 'CursorLine'],
  \  'hl+':     ['fg', 'Number'],
  \  'info':    ['fg', 'String'],
  \  'border':  ['fg', 'QuickFixLine'],
  \  'prompt':  ['fg', 'fzf2'],
  \  'pointer': ['fg', 'Exception'],
  \  'marker':  ['fg', 'StorageClass'],
  \  'spinner': ['fg', 'Type'],
  \  'header':  ['fg', 'CursorLineNr']
  \}
if g:moonflyFloatingFZF
    let g:fzf_colors['bg']  = ['bg', 'Pmenu']
    let g:fzf_colors['bg+'] = ['bg', 'QuickFixLine']
    let g:fzf_colors['hl']  = ['fg', 'Search']
    let g:fzf_colors['hl+'] = ['fg', 'Search']
endif

" moonfly-statusline plugin
exec "highlight User1 ctermbg=4   ctermfg=234 guibg=" . s:blue    . " guifg=" . s:grey234
exec "highlight User2 ctermbg=251 ctermfg=234 guibg=" . s:white   . " guifg=" . s:grey234
exec "highlight User3 ctermbg=13  ctermfg=234 guibg=" . s:purple  . " guifg=" . s:grey234
exec "highlight User4 ctermbg=9   ctermfg=234 guibg=" . s:crimson . " guifg=" . s:grey234
exec "highlight User5 ctermbg=236 ctermfg=10  guibg=" . s:grey236 . " guifg=" . s:emerald . " gui=none"
exec "highlight User6 ctermbg=236 ctermfg=251 guibg=" . s:grey236 . " guifg=" . s:white   . " gui=none"
exec "highlight User7 ctermbg=236 ctermfg=4   guibg=" . s:grey236 . " guifg=" . s:blue    . " gui=none"
exec "highlight User8 ctermbg=236 ctermfg=9   guibg=" . s:grey236 . " guifg=" . s:crimson . " gui=none"

" Misc
exec "highlight bufExplorerHelp ctermfg=247 guifg=" . s:grey247
exec "highlight bufExplorerSortBy ctermfg=247 guifg=" . s:grey247
exec "highlight CleverFDefaultLabel ctermfg=9 guifg=" . s:crimson
exec "highlight CtrlPMatch ctermfg=13 guifg=" . s:purple
exec "highlight Directory ctermfg=10 guifg=" . s:emerald
exec "highlight HighlightedyankRegion ctermbg=0 guibg=" . s:grey0
exec "highlight jsonKeyword ctermfg=12 guifg=" . s:sky
exec "highlight netrwClassify ctermfg=15 guifg=" . s:cranberry
exec "highlight netrwDir ctermfg=12 guifg=" . s:sky
exec "highlight snipLeadingSpaces ctermbg=bg ctermfg=fg guibg=bg guifg=fg"
exec "highlight tagName ctermfg=6 guifg=" . s:turquoise
exec "highlight diffAdded ctermfg=2 guifg=" . s:green
exec "highlight diffChanged ctermfg=9 guifg=" . s:crimson
exec "highlight diffIndexLine ctermfg=9 guifg=" . s:crimson
exec "highlight diffLine ctermfg=12 guifg=" . s:sky
exec "highlight diffRemoved ctermfg=1 guifg=" . s:red
exec "highlight diffSubname ctermfg=12 guifg=" . s:sky
exec "highlight MatchWord ctermfg=8 guifg=" . s:coral
exec "highlight MatchWordCur ctermbg=bg guibg=bg"
