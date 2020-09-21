" Dark Vim/Neovim color scheme.
"
" Note: Inspiration taken from: monokai, sunburst xoria256 and One Dark themes.
"
" URL:     github.com/bluz71/vim-moonfly-colors
" License: MIT (https://opensource.org/licenses/MIT)

highlight clear
set background=dark
if exists('syntax_on')
    syntax reset
endif
let g:colors_name='moonfly'

" By default do not color the cursor.
let g:moonflyCursorColor = get(g:, 'moonflyCursorColor', 0)

" By default use the moonfly color palette in the `:terminal`
let g:moonflyTerminalColors = get(g:, 'moonflyTerminalColors', 1)

" By default do not underline matching parentheses.
let g:moonflyUnderlineMatchParen = get(g:, 'moonflyUnderlineMatchParen', 0)

" By default do use undercurls in GUI versions of Vim, including terminal Vim
" with termguicolors set.
let g:moonflyUndercurls = get(g:, 'moonflyUndercurls', 1)

" By default do use italics in GUI versions of Vim, including terminal Vim
" with termguicolors set.
let g:moonflyItalics = get(g:, 'moonflyItalics', 1)

" Background and foreground
let s:black       = '#080808' " black       = 232
let s:white       = '#c6c6c6' " white       = 251
" Variations of charcoal-grey
let s:grey0       = '#373c40' " grey0       = 0
let s:grey253     = '#dadada' " grey253     = 253
let s:grey249     = '#b2b2b2' " grey249     = 249
let s:grey247     = '#9e9e9e' " grey247     = 247
let s:grey246     = '#949494' " grey246     = 246
let s:grey244     = '#808080' " grey244     = 244
let s:grey241     = '#626262' " grey241     = 241
let s:grey237     = '#3a3a3a' " grey237     = 237
let s:grey236     = '#303030' " grey236     = 236
let s:grey235     = '#262626' " grey235     = 235
let s:grey234     = '#1c1c1c' " grey234     = 234
let s:grey233     = '#121212' " grey233     = 233
" Core theme colors
let s:wheat       = '#bfbf97' " wheat       = 11
let s:yellow      = '#e3c78a' " yellow      = 3
let s:orange      = '#de935f' " orange      = 7
let s:coral       = '#f09479' " coral       = 8
let s:lime        = '#85dc85' " lime        = 14
let s:green       = '#8cc85f' " green       = 2
let s:emerald     = '#42cf89' " emerald     = 10
let s:blue        = '#80a0ff' " blue        = 4
let s:sky         = '#78c2ff' " sky         = 12
let s:turquoise   = '#79dac8' " turquoise   = 6
let s:purple      = '#ae81ff' " purple      = 13
let s:cranberry   = '#e2637f' " cranberry   = 15
let s:violet      = '#d183e8' " violet      = 5
let s:crimson     = '#ff5189' " crimson     = 9
let s:red         = '#ff5454' " red         = 1

" Specify the colors used by the inbuilt terminal of Neovim and Vim
if g:moonflyTerminalColors
    if has('nvim')
        let g:terminal_color_0  = '#373c40'
        let g:terminal_color_1  = '#ff5454'
        let g:terminal_color_2  = '#8cc85f'
        let g:terminal_color_3  = '#e3c78a'
        let g:terminal_color_4  = '#80a0ff'
        let g:terminal_color_5  = '#d183e8'
        let g:terminal_color_6  = '#79dac8'
        let g:terminal_color_7  = '#b2b2b2'
        let g:terminal_color_8  = '#949494'
        let g:terminal_color_9  = '#ff5189'
        let g:terminal_color_10 = '#42cf89'
        let g:terminal_color_11 = '#bfbf97'
        let g:terminal_color_12 = '#78c2ff'
        let g:terminal_color_13 = '#ae81ff'
        let g:terminal_color_14 = '#85dc85'
        let g:terminal_color_15 = '#dadada'
    else
        let g:terminal_ansi_colors = [
                    \ '#373c40', '#ff5454', '#8cc85f', '#e3c78a',
                    \ '#80a0ff', '#d183e8', '#79dac8', '#b2b2b2',
                    \ '#949494', '#ff5189', '#42cf89', '#bfbf97',
                    \ '#78c2ff', '#ae81ff', '#85dc85', '#dadada'
                    \]
    endif
endif

" Background and text
exec 'highlight Normal ctermbg=232 ctermfg=251 guibg=' . s:black . ' guifg=' . s:white

" Color of mode text, -- INSERT --
exec 'highlight ModeMsg ctermfg=247 guifg=' . s:grey247 . ' gui=none'

" Comments
if g:moonflyItalics
    exec 'highlight Comment ctermfg=246 guifg=' . s:grey246 . ' gui=italic'
else
    exec 'highlight Comment ctermfg=246 guifg=' . s:grey246
endif

" Functions
exec 'highlight Function ctermfg=12 guifg=' . s:sky

" Strings
exec 'highlight String ctermfg=11 guifg=' . s:wheat

" Booleans
exec 'highlight Boolean ctermfg=8 guifg=' . s:coral

" Identifiers
exec 'highlight Identifier ctermfg=6 cterm=none guifg=' . s:turquoise

" Color of titles
exec 'highlight Title ctermfg=7 guifg=' . s:orange . ' gui=none'

" const, static
exec 'highlight StorageClass ctermfg=8 guifg=' . s:coral

" void, intptr_t
exec 'highlight Type ctermfg=10 guifg=' . s:emerald . ' gui=none'

" Numbers
exec 'highlight Constant ctermfg=13 guifg=' . s:purple

" Character constants
exec 'highlight Character ctermfg=13 guifg=' . s:purple

" Exceptions
exec 'highlight Exception ctermfg=9 guifg=' . s:crimson

" ifdef/endif
exec 'highlight PreProc ctermfg=15 guifg=' . s:cranberry

" Status, split and tab lines
exec 'highlight StatusLine ctermbg=236  ctermfg=251 cterm=none guibg=' . s:grey236 . ' guifg=' . s:white . ' gui=none'
exec 'highlight StatusLineNC ctermbg=236 ctermfg=247 cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey247 . ' gui=none'
exec 'highlight VertSplit ctermbg=236 ctermfg=236 cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey236 . ' gui=none'
exec 'highlight Tabline ctermbg=236 ctermfg=247 cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey247 . ' gui=none'
exec 'highlight TablineSel ctermbg=236 ctermfg=4 cterm=none guibg=' . s:grey236 . ' guifg=' . s:blue . ' gui=none'
exec 'highlight TablineFill ctermbg=236 ctermfg=236 cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey236 . ' gui=none'
exec 'highlight StatusLineTerm ctermbg=236 ctermfg=251 cterm=none guibg=' . s:grey236 . ' guifg=' . s:white . ' gui=none'
exec 'highlight StatusLineTermNC ctermbg=236 ctermfg=247 cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey247 . ' gui=none'

" case in switch statement
exec 'highlight Label ctermfg=6 guifg=' . s:turquoise

" end-of-line '$', end-of-file '~'
exec 'highlight NonText ctermfg=7 guifg=' . s:orange . ' gui=none'

" sizeof
exec 'highlight Operator ctermfg=15 guifg=' . s:cranberry

" for, while
exec 'highlight Repeat ctermfg=5 guifg=' . s:violet

" Search
exec 'highlight Search ctermbg=bg ctermfg=8 cterm=reverse guibg=bg guifg=' . s:coral . ' gui=reverse'
exec 'highlight IncSearch ctermbg=bg ctermfg=3 guibg=bg guifg=' . s:yellow

" '\n' sequences
exec 'highlight Special ctermfg=15 guifg=' . s:cranberry

" if, else
exec 'highlight Statement ctermfg=5 guifg=' . s:violet . ' gui=none'

" Visual selection
exec 'highlight Visual ctermbg=0 guibg=' . s:grey0
exec 'highlight VisualNOS ctermbg=0 ctermfg=fg cterm=none guibg=' . s:grey0 . ' guifg=fg gui=none'
exec 'highlight VisualInDiff ctermbg=0 ctermfg=251 guibg=' . s:grey0 . ' guifg=' . s:white

" Errors, warnings and whitespace-eol
exec 'highlight Error ctermbg=bg ctermfg=1 guibg=bg guifg=' . s:red
exec 'highlight ErrorMsg ctermbg=bg ctermfg=1 guibg=bg guifg=' . s:red
exec 'highlight WarningMsg ctermbg=bg ctermfg=7 guibg=bg guifg=' . s:orange

" struct, union, enum, typedef
exec 'highlight Structure ctermfg=4 guifg=' . s:blue

" Auto-text-completion menu
exec 'highlight Pmenu ctermbg=235 ctermfg=fg guibg=' . s:grey235 . ' guifg=fg'
exec 'highlight PmenuSel ctermbg=2 ctermfg=236 guibg=' . s:green . ' guifg=' . s:grey236
exec 'highlight PmenuSbar ctermbg=235 guibg=' . s:grey235
exec 'highlight PmenuThumb ctermbg=244 guibg=' . s:grey244
exec 'highlight WildMenu ctermbg=2 ctermfg=236 guibg=' . s:green . ' guifg=' . s:grey236

" Spelling errors
if g:moonflyUndercurls
    exec 'highlight SpellBad ctermbg=bg ctermfg=1 cterm=underline guibg=bg gui=undercurl guisp=' . s:red
    exec 'highlight SpellCap ctermbg=bg ctermfg=4 cterm=underline guibg=bg gui=undercurl guisp=' . s:blue
    exec 'highlight SpellRare ctermbg=bg ctermfg=3 cterm=underline guibg=bg gui=undercurl guisp=' . s:yellow
    exec 'highlight SpellLocal ctermbg=bg ctermfg=12 cterm=underline guibg=bg gui=undercurl guisp=' . s:sky
else
    exec 'highlight SpellBad ctermbg=bg ctermfg=1 cterm=underline guibg=bg guifg=' . s:red . ' gui=underline guisp=' . s:red
    exec 'highlight SpellCap ctermbg=bg ctermfg=4 cterm=underline guibg=bg guifg=' . s:blue . ' gui=underline guisp=' . s:blue
    exec 'highlight SpellRare ctermbg=bg ctermfg=3 cterm=underline guibg=bg guifg=' . s:yellow . ' gui=underline guisp=' . s:yellow
    exec 'highlight SpellLocal ctermbg=bg ctermfg=12 cterm=underline guibg=bg guifg=' . s:sky . ' gui=underline guisp=' . s:sky
endif

" Misc
exec 'highlight Question ctermfg=14 guifg=' . s:lime . ' gui=none'
exec 'highlight MoreMsg ctermfg=1 guifg=' . s:red . ' gui=none'
exec 'highlight LineNr ctermbg=bg ctermfg=241 guibg=bg guifg=' . s:grey241
if g:moonflyCursorColor
    exec 'highlight Cursor ctermfg=bg ctermbg=4 guifg=bg guibg=' . s:blue
else
    exec 'highlight Cursor ctermfg=bg ctermbg=247 guifg=bg guibg=' . s:grey247
endif
exec 'highlight lCursor ctermfg=bg ctermbg=247 guifg=bg guibg=' . s:grey247
exec 'highlight CursorLineNr ctermbg=234 ctermfg=4 cterm=none guibg=' . s:grey234 . ' guifg=' . s:blue . ' gui=none'
exec 'highlight CursorColumn ctermbg=234 cterm=none guibg=' . s:grey234
exec 'highlight CursorLine ctermbg=234 cterm=none guibg=' . s:grey234
exec 'highlight Folded ctermbg=234 ctermfg=14 guibg=' . s:grey234 . ' guifg='. s:lime
exec 'highlight FoldColumn ctermbg=236 ctermfg=14 guibg=' . s:grey236 . ' guifg=' . s:lime
exec 'highlight SignColumn ctermbg=bg ctermfg=14 guibg=bg guifg=' . s:lime
exec 'highlight Todo ctermbg=3 ctermfg=bg guibg=' . s:yellow . ' guifg=bg'
exec 'highlight SpecialKey ctermbg=bg ctermfg=12 guibg=bg guifg=' . s:sky
if g:moonflyUnderlineMatchParen
    exec 'highlight MatchParen ctermbg=bg ctermfg=8 cterm=underline guibg=bg guifg=' . s:coral . ' gui=underline'
else
    exec 'highlight MatchParen ctermbg=bg ctermfg=8 guibg=bg guifg=' . s:coral
endif
exec 'highlight Ignore ctermfg=12 guifg=' . s:sky
exec 'highlight Underlined ctermfg=10 cterm=none guifg=' . s:emerald . ' gui=none'
exec 'highlight QuickFixLine ctermbg=237 cterm=none guibg=' . s:grey237
exec 'highlight Delimiter ctermfg=251 guifg=' . s:white

" Neovim only highlight groups
exec 'highlight Whitespace ctermfg=235 guifg=' . s:grey235
exec 'highlight TermCursor ctermbg=247 ctermfg=bg cterm=none guibg=' . s:grey247 . ' guifg=bg gui=none'

" Color column (after line 80)
exec 'highlight ColorColumn ctermbg=233 guibg=' . s:grey233

" Conceal color, as used by indentLine plugin
exec 'highlight Conceal ctermbg=bg ctermfg=235 guibg=bg guifg=' . s:grey235

" Custom moonfly highlight groups
exec 'highlight MoonflyReset ctermfg=fg guifg=fg'
exec 'highlight MoonflyWhite ctermfg=251 guifg=' . s:white
exec 'highlight MoonflyGrey0 ctermfg=0 guifg=' . s:grey0
exec 'highlight MoonflyGrey247 ctermfg=247 guifg=' . s:grey247
exec 'highlight MoonflyGrey246 ctermfg=246 guifg=' . s:grey246
exec 'highlight MoonflyGrey241 ctermfg=241 guifg=' . s:grey241
exec 'highlight MoonflyWheat ctermfg=11 guifg=' . s:wheat
exec 'highlight MoonflyYellow ctermfg=3 guifg=' . s:yellow
exec 'highlight MoonflyOrange ctermfg=7 guifg=' . s:orange
exec 'highlight MoonflyCoral ctermfg=8 guifg=' . s:coral
exec 'highlight MoonflyLime ctermfg=14 guifg=' . s:lime
exec 'highlight MoonflyGreen ctermfg=2 guifg=' . s:green
exec 'highlight MoonflyEmerald ctermfg=10 guifg=' . s:emerald
exec 'highlight MoonflyBlue ctermfg=4 guifg=' . s:blue
exec 'highlight MoonflySky ctermfg=12 guifg=' . s:sky
exec 'highlight MoonflyTurquoise ctermfg=6 guifg=' . s:turquoise
exec 'highlight MoonflyPurple ctermfg=13 guifg=' . s:purple
exec 'highlight MoonflyCranberry ctermfg=15 guifg=' . s:cranberry
exec 'highlight MoonflyViolet ctermfg=5 guifg=' . s:violet
exec 'highlight MoonflyCrimson ctermfg=9 guifg=' . s:crimson
exec 'highlight MoonflyRed ctermfg=1 guifg=' . s:red
exec 'highlight MoonflyWhiteAlert ctermbg=bg ctermfg=251 guibg=bg guifg=' . s:white
exec 'highlight MoonflyYellowAlert ctermbg=bg ctermfg=3 guibg=bg guifg=' . s:yellow
exec 'highlight MoonflyCoralAlert ctermbg=bg ctermfg=8 guibg=bg guifg=' . s:coral
exec 'highlight MoonflyEmeraldAlert ctermbg=bg ctermfg=10 guibg=bg guifg=' . s:emerald
exec 'highlight MoonflyPurpleAlert ctermbg=bg ctermfg=13 guibg=bg guifg=' . s:purple
exec 'highlight MoonflySkyAlert ctermbg=bg ctermfg=12 guibg=bg guifg=' . s:sky
exec 'highlight MoonflyRedAlert ctermbg=bg ctermfg=1 guibg=bg guifg=' . s:red

" Neovim Treesitter
highlight! link TSAnnotation MoonflyViolet
highlight! link TSConstant MoonflyPurple
highlight! link TSConstBuiltin MoonflyGreen
highlight! link TSConstMacro MoonflyViolet
highlight! link TSConstructor MoonflyEmerald
highlight! link TSError MoonflyRed
highlight! link TSFuncBuiltin MoonflySky
highlight! link TSFuncMacro MoonflySky
highlight! link TSInclude MoonflyCranberry
highlight! link TSKeywordOperator MoonflyViolet
highlight! link TSParameter MoonflyWhite
highlight! link TSPunctSpecial MoonflyCranberry
highlight! link TSTag MoonflyBlue
highlight! link TSTagDelimiter MoonflyLime
highlight! link TSVariableBuiltin MoonflyLime

" C/C++
highlight! link cDefine MoonflyViolet
highlight! link cPreCondit MoonflyViolet
highlight! link cStatement MoonflyViolet
highlight! link cStructure MoonflyCoral
highlight! link cppAccess MoonflyLime
highlight! link cppCast MoonflyTurquoise
highlight! link cppCustomClass MoonflyTurquoise
highlight! link cppExceptions MoonflyLime
highlight! link cppModifier MoonflyViolet
highlight! link cppOperator MoonflyGreen
highlight! link cppStatement MoonflyTurquoise
highlight! link cppSTLconstant MoonflySky
highlight! link cppStructure MoonflyViolet

" C#
highlight! link csModifier MoonflyLime
highlight! link csPrecondit MoonflyViolet
highlight! link csStorage MoonflyViolet
highlight! link csXmlTag MoonflyBlue

" Clojure
highlight! link clojureDefine MoonflyViolet
highlight! link clojureKeyword MoonflyPurple
highlight! link clojureMacro MoonflyOrange
highlight! link clojureParen MoonflyBlue
highlight! link clojureSpecial MoonflySky

" CoffeeScript
highlight! link coffeeConstant MoonflyEmerald
highlight! link coffeeGlobal MoonflyTurquoise
highlight! link coffeeKeyword MoonflyOrange
highlight! link coffeeObjAssign MoonflySky
highlight! link coffeeSpecialIdent MoonflyLime
highlight! link coffeeSpecialVar MoonflyBlue
highlight! link coffeeStatement MoonflyCoral

" Crystal
highlight! link crystalAccess MoonflyYellow
highlight! link crystalAttribute MoonflySky
highlight! link crystalBlockParameter MoonflyGreen
highlight! link crystalClass MoonflyOrange
highlight! link crystalDefine MoonflyViolet
highlight! link crystalExceptional MoonflyCoral
highlight! link crystalInstanceVariable MoonflyLime
highlight! link crystalModule MoonflyBlue
highlight! link crystalPseudoVariable MoonflyGreen
highlight! link crystalSharpBang MoonflyGrey247
highlight! link crystalStringDelimiter MoonflyWheat

" CSS
highlight! link cssIdentifier MoonflyYellow

" Dart
highlight! link dartMetadata MoonflyLime
highlight! link dartStorageClass MoonflyViolet
highlight! link dartTypedef MoonflyViolet
highlight! link dartUserType MoonflyBlue

" Elixir
highlight! link eelixirDelimiter MoonflyCrimson
highlight! link elixirBlockDefinition MoonflyViolet
highlight! link elixirDefine MoonflyViolet
highlight! link elixirDocTest MoonflyGrey247
highlight! link elixirExUnitAssert MoonflyLime
highlight! link elixirExUnitMacro MoonflySky
highlight! link elixirKernelFunction MoonflyGreen
highlight! link elixirKeyword MoonflyOrange
highlight! link elixirModuleDefine MoonflyBlue
highlight! link elixirPrivateDefine MoonflyViolet
highlight! link elixirStringDelimiter MoonflyWheat
highlight! link elixirVariable MoonflyTurquoise

" Elm
highlight! link elmLetBlockDefinition MoonflyLime
highlight! link elmTopLevelDecl MoonflyCoral
highlight! link elmType MoonflySky

" Go
highlight! link goBuiltins MoonflySky
highlight! link goConditional MoonflyViolet
highlight! link goDeclType MoonflyGreen
highlight! link goDirective MoonflyCranberry
highlight! link goFloats MoonflyPurple
highlight! link goFunction MoonflyBlue
highlight! link goFunctionCall MoonflySky
highlight! link goImport MoonflyCranberry
highlight! link goLabel MoonflyYellow
highlight! link goMethod MoonflySky
highlight! link goMethodCall MoonflySky
highlight! link goPackage MoonflyViolet
highlight! link goSignedInts MoonflyEmerald
highlight! link goStruct MoonflyCoral
highlight! link goStructDef MoonflyCoral
highlight! link goUnsignedInts MoonflyPurple

" Haskell
highlight! link haskellDecl MoonflyOrange
highlight! link haskellDeclKeyword MoonflyOrange
highlight! link haskellIdentifier MoonflyTurquoise
highlight! link haskellLet MoonflySky
highlight! link haskellOperators MoonflyCranberry
highlight! link haskellType MoonflySky
highlight! link haskellWhere MoonflyViolet

" HTML
highlight! link htmlArg MoonflySky
highlight! link htmlLink MoonflyGreen
highlight! link htmlH1 MoonflyCranberry
highlight! link htmlH2 MoonflyOrange
highlight! link htmlEndTag MoonflyPurple
highlight! link htmlTag MoonflyLime
highlight! link htmlTagN MoonflyBlue
highlight! link htmlTagName MoonflyBlue
highlight! link htmlUnderline MoonflyWhite
if g:moonflyItalics
    exec 'highlight htmlBoldItalic ctermbg=232 ctermfg=8 guibg=' . s:black . ' guifg=' . s:coral . ' gui=italic'
    exec 'highlight htmlBoldUnderlineItalic ctermbg=232 ctermfg=8 guibg=' . s:black . ' guifg=' . s:coral . ' gui=italic'
    exec 'highlight htmlItalic ctermfg=247 guifg=' . s:grey247 . ' gui=italic'
    exec 'highlight htmlUnderlineItalic ctermbg=232 ctermfg=247 guibg=' . s:black . ' guifg=' . s:grey247 . ' gui=italic'
else
    exec 'highlight htmlBoldItalic ctermbg=232 ctermfg=8 cterm=none guibg=' . s:black . ' guifg=' . s:coral ' gui=none'
    exec 'highlight htmlBoldUnderlineItalic ctermbg=232 ctermfg=8 guibg=' . s:black . ' guifg=' . s:coral
    exec 'highlight htmlItalic ctermfg=247 cterm=none guifg=' . s:grey247 ' gui=none'
    exec 'highlight htmlUnderlineItalic ctermbg=232 ctermfg=247 guibg=' . s:black . ' guifg=' . s:grey247
endif

" Java
highlight! link javaAnnotation MoonflyLime
highlight! link javaBraces MoonflyWhite
highlight! link javaClassDecl MoonflyYellow
highlight! link javaCommentTitle MoonflyGrey247
highlight! link javaConstant MoonflySky
highlight! link javaDebug MoonflySky
highlight! link javaMethodDecl MoonflyYellow
highlight! link javaOperator MoonflyCrimson
highlight! link javaScopeDecl MoonflyViolet
highlight! link javaStatement MoonflyTurquoise

" JavaScript, 'pangloss/vim-javascript' plugin
highlight! link jsClassDefinition MoonflyEmerald
highlight! link jsClassKeyword MoonflyOrange
highlight! link jsFrom MoonflyCoral
highlight! link jsFuncBlock MoonflyTurquoise
highlight! link jsFuncCall MoonflySky
highlight! link jsFunction MoonflyLime
highlight! link jsGlobalObjects MoonflyEmerald
highlight! link jsModuleAs MoonflyCoral
highlight! link jsObjectKey MoonflySky
highlight! link jsObjectValue MoonflyEmerald
highlight! link jsOperator MoonflyViolet
highlight! link jsStorageClass MoonflyLime
highlight! link jsTemplateBraces MoonflyCranberry
highlight! link jsTemplateExpression MoonflyTurquoise
highlight! link jsThis MoonflyGreen

" JSX, 'MaxMEllon/vim-jsx-pretty' plugin
highlight! link jsxAttrib MoonflyLime
highlight! link jsxClosePunct MoonflyPurple
highlight! link jsxComponentName MoonflyBlue
highlight! link jsxOpenPunct MoonflyLime
highlight! link jsxTagName MoonflySky

" Lua
highlight! link luaBraces MoonflyCranberry
highlight! link luaBuiltin MoonflyGreen
highlight! link luaFuncCall MoonflySky
highlight! link luaSpecialTable MoonflySky

" Markdown, 'plasticboy/vim-markdown' plugin
highlight! link mkdLineBreak NormalNC
highlight! link mkdListItem MoonflyBlue
highlight! link mkdURL MoonflyPurple

" PHP
highlight! link phpClass MoonflyEmerald
highlight! link phpClasses MoonflyBlue
highlight! link phpFunction MoonflySky
highlight! link phpParent MoonflyReset
highlight! link phpType MoonflyViolet

" PureScript
highlight! link purescriptClass MoonflyOrange
highlight! link purescriptModuleParams MoonflyCoral

" Python
highlight! link pythonBuiltin MoonflyBlue
highlight! link pythonClassVar MoonflyGreen
highlight! link pythonCoding MoonflySky
highlight! link pythonImport MoonflyCranberry
highlight! link pythonOperator MoonflyViolet
highlight! link pythonRun MoonflySky
highlight! link pythonStatement MoonflyViolet

" Ruby
highlight! link erubyDelimiter MoonflyCrimson
highlight! link rspecGroupMethods MoonflyBlue
highlight! link rubyAccess MoonflyYellow
highlight! link rubyAssertion MoonflySky
highlight! link rubyAttribute MoonflySky
highlight! link rubyBlockParameter MoonflyGreen
highlight! link rubyCallback MoonflySky
highlight! link rubyClass MoonflyOrange
highlight! link rubyDefine MoonflyViolet
highlight! link rubyEntities MoonflySky
highlight! link rubyExceptional MoonflyCoral
highlight! link rubyGemfileMethod MoonflySky
highlight! link rubyInstanceVariable MoonflyTurquoise
highlight! link rubyInterpolationDelimiter MoonflyCranberry
highlight! link rubyMacro MoonflySky
highlight! link rubyModule MoonflyBlue
highlight! link rubyPseudoVariable MoonflyGreen
highlight! link rubyResponse MoonflySky
highlight! link rubyRoute MoonflySky
highlight! link rubySharpBang MoonflyGrey247
highlight! link rubyStringDelimiter MoonflyWheat

" Rust
highlight! link rustAssert MoonflyGreen
highlight! link rustAttribute MoonflyReset
highlight! link rustCharacterInvalid MoonflyCranberry
highlight! link rustCharacterInvalidUnicode MoonflyCranberry
highlight! link rustCommentBlockDoc MoonflyGrey247
highlight! link rustCommentBlockDocError MoonflyGrey247
highlight! link rustCommentLineDoc MoonflyGrey247
highlight! link rustCommentLineDocError MoonflyGrey247
highlight! link rustConstant MoonflyOrange
highlight! link rustDerive MoonflyGreen
highlight! link rustEscapeError MoonflyCranberry
highlight! link rustFuncName MoonflyBlue
highlight! link rustIdentifier MoonflyBlue
highlight! link rustInvalidBareKeyword MoonflyCranberry
highlight! link rustKeyword MoonflyViolet
highlight! link rustLifetime MoonflyViolet
highlight! link rustMacro MoonflyGreen
highlight! link rustMacroVariable MoonflyViolet
highlight! link rustModPath MoonflySky
highlight! link rustObsoleteExternMod MoonflyCranberry
highlight! link rustObsoleteStorage MoonflyCranberry
highlight! link rustReservedKeyword MoonflyCranberry
highlight! link rustSelf MoonflyTurquoise
highlight! link rustSigil MoonflyTurquoise
highlight! link rustStorage MoonflyViolet
highlight! link rustStructure MoonflyViolet
highlight! link rustTrait MoonflyEmerald
highlight! link rustType MoonflyEmerald

" Scala, note link highlighting does not work (I don't know why)
exec 'highlight scalaCapitalWord ctermfg=4 guifg=' . s:blue
exec 'highlight scalaCommentCodeBlock ctermfg=247 guifg=' . s:grey247
exec 'highlight scalaInstanceDeclaration ctermfg=6 guifg=' . s:turquoise
exec 'highlight scalaKeywordModifier ctermfg=14 guifg=' . s:lime
exec 'highlight scalaSpecial ctermfg=9 guifg=' . s:crimson

" Shell scripts
highlight! link shAlias MoonflyTurquoise
highlight! link shCommandSub MoonflyReset
highlight! link shLoop MoonflyViolet
highlight! link shSetList MoonflyTurquoise
highlight! link shShellVariables MoonflyLime
highlight! link shStatement MoonflyReset
highlight! link shVariable MoonflyTurquoise

" TypeScript (leafgarland/typescript-vim)
highlight! link typescriptDOMObjects MoonflyBlue
highlight! link typescriptFuncComma MoonflyWhite
highlight! link typescriptFuncKeyword MoonflyLime
highlight! link typescriptGlobalObjects MoonflyBlue
highlight! link typescriptIdentifier MoonflyGreen
highlight! link typescriptNull MoonflyGreen
highlight! link typescriptOpSymbols MoonflyViolet
highlight! link typescriptOperator MoonflyCrimson
highlight! link typescriptParens MoonflyWhite
highlight! link typescriptReserved MoonflyViolet
highlight! link typescriptStorageClass MoonflyLime

" TypeScript (HerringtonDarkholme/yats.vim)
highlight! link typeScriptModule MoonflyBlue
highlight! link typescriptAbstract MoonflyCoral
highlight! link typescriptArrayMethod MoonflySky
highlight! link typescriptArrowFuncArg MoonflyWhite
highlight! link typescriptBOM MoonflyEmerald
highlight! link typescriptBOMHistoryMethod MoonflySky
highlight! link typescriptBOMLocationMethod MoonflySky
highlight! link typescriptBOMWindowProp MoonflyGreen
highlight! link typescriptBraces MoonflyWhite
highlight! link typescriptCall MoonflyWhite
highlight! link typescriptClassHeritage MoonflyEmerald
highlight! link typescriptClassKeyword MoonflyOrange
highlight! link typescriptClassName MoonflyEmerald
highlight! link typescriptDecorator MoonflyLime
highlight! link typescriptDOMDocMethod MoonflySky
highlight! link typescriptDOMEventTargetMethod MoonflySky
highlight! link typescriptDOMNodeMethod MoonflySky
highlight! link typescriptExceptions MoonflyCrimson
highlight! link typescriptFuncType MoonflyWhite
highlight! link typescriptMathStaticMethod MoonflySky
highlight! link typescriptMethodAccessor MoonflyViolet
highlight! link typescriptObjectLabel MoonflySky
highlight! link typescriptParamImpl MoonflyWhite
highlight! link typescriptStringMethod MoonflySky
highlight! link typescriptTry MoonflyCrimson
highlight! link typescriptVariable MoonflyLime
highlight! link typescriptXHRMethod MoonflySky

" Vimscript
highlight! link vimBracket MoonflySky
highlight! link vimCommand MoonflyOrange
highlight! link vimCommentTitle MoonflyViolet
highlight! link vimEnvvar MoonflyCrimson
highlight! link vimFuncName MoonflySky
highlight! link vimFuncSID MoonflySky
highlight! link vimFunction MoonflySky
highlight! link vimNotation MoonflySky
highlight! link vimOption MoonflyEmerald
highlight! link vimParenSep MoonflyWhite
highlight! link vimSep MoonflyWhite
highlight! link vimUserFunc MoonflySky

" XML
highlight! link xmlAttrib MoonflyLime
highlight! link xmlEndTag MoonflyBlue
highlight! link xmlTag MoonflyLime
highlight! link xmlTagName MoonflyBlue

" Git commits
highlight! link gitCommitBranch MoonflySky
highlight! link gitCommitDiscardedFile MoonflyCrimson
highlight! link gitCommitDiscardedType MoonflySky
highlight! link gitCommitHeader MoonflyPurple
highlight! link gitCommitSelectedFile MoonflyEmerald
highlight! link gitCommitSelectedType MoonflySky
highlight! link gitCommitUntrackedFile MoonflyCranberry
highlight! link gitEmail MoonflyBlue

" Git commit diffs
highlight! link diffAdded MoonflyGreen
highlight! link diffChanged MoonflyCrimson
highlight! link diffIndexLine MoonflyCrimson
highlight! link diffLine MoonflySky
highlight! link diffRemoved MoonflyRed
highlight! link diffSubname MoonflySky

" Tagbar plugin
highlight! link TagbarFoldIcon MoonflyGrey247
highlight! link TagbarVisibilityPublic MoonflyLime
highlight! link TagbarVisibilityProtected MoonflyLime
highlight! link TagbarVisibilityPrivate MoonflyLime
highlight! link TagbarKind MoonflyEmerald

" NERDTree plugin
highlight! link NERDTreeClosable MoonflyGreen
highlight! link NERDTreeCWD MoonflyPurple
highlight! link NERDTreeDir MoonflySky
highlight! link NERDTreeDirSlash MoonflyCranberry
highlight! link NERDTreeExecFile MoonflyWheat
highlight! link NERDTreeFile MoonflyWhite
highlight! link NERDTreeHelp MoonflyGrey247
highlight! link NERDTreeLinkDir MoonflyBlue
highlight! link NERDTreeLinkFile MoonflyBlue
highlight! link NERDTreeLinkTarget MoonflyTurquoise
highlight! link NERDTreeOpenable MoonflyGreen
highlight! link NERDTreePart MoonflyGrey0
highlight! link NERDTreePartFile MoonflyGrey0
highlight! link NERDTreeUp MoonflyBlue

" NERDTree Git plugin
highlight! link NERDTreeGitStatusDirDirty MoonflyWheat
highlight! link NERDTreeGitStatusModified MoonflyCrimson
highlight! link NERDTreeGitStatusRenamed MoonflySky
highlight! link NERDTreeGitStatusStaged MoonflySky
highlight! link NERDTreeGitStatusUntracked MoonflyRed

" vimfiler plugin
highlight! link vimfilerClosedFile MoonflyBlue
highlight! link vimfilerMarkedFile MoonflyOrange
highlight! link vimfilerNonMark MoonflyGreen
highlight! link vimfilerNormalFile MoonflyWhite
highlight! link vimfilerOpenedFile MoonflyBlue
highlight! link vimfilerROFile MoonflyGrey246

" fern.vim plugin
highlight! link FernBranchSymbol MoonflyGreen
highlight! link FernBranchText MoonflyBlue
highlight! link FernMarkedLine MoonflyCoral
highlight! link FernMarkedText MoonflyCoral
highlight! link FernRootSymbol MoonflyPurple
highlight! link FernRootText MoonflyPurple

" fern-git-status.vim plugin
highlight! link FernGitStatusBracket MoonflyGrey246
highlight! link FernGitStatusIndex MoonflyEmerald
highlight! link FernGitStatusWorktree MoonflyCrimson

" Misc stylings
highlight! link bufExplorerHelp MoonflyGrey247
highlight! link bufExplorerSortBy MoonflyGrey247
highlight! link CleverFDefaultLabel MoonflyCrimson
highlight! link CtrlPMatch MoonflyPurple
highlight! link Directory MoonflyEmerald
highlight! link HighlightedyankRegion MoonflyGrey0
highlight! link jsonKeyword MoonflySky
highlight! link jsonQuote MoonflyWhite
highlight! link netrwClassify MoonflyCranberry
highlight! link netrwDir MoonflySky
highlight! link netrwExe MoonflyWheat
highlight! link tagName MoonflyTurquoise
highlight! link Cheat40Header MoonflyBlue
highlight! link Beacon MoonflyWhite
if g:moonflyUnderlineMatchParen
    exec 'highlight MatchWord cterm=underline gui=underline guisp=' . s:coral
else
    highlight! link MatchWord MoonflyCoral
endif
exec 'highlight snipLeadingSpaces ctermbg=bg ctermfg=fg guibg=bg guifg=fg'
exec 'highlight MatchWordCur ctermbg=bg guibg=bg'

" vimdiff/nvim -d
exec 'highlight DiffAdd ctermbg=10 ctermfg=bg guibg=' . s:emerald . ' guifg=bg'
exec 'highlight DiffChange ctermbg=236 guibg=' . s:grey236
exec 'highlight DiffDelete ctermbg=236 ctermfg=9 guibg=' . s:grey236 . ' guifg=' . s:crimson ' gui=none'
exec 'highlight DiffText ctermbg=4 ctermfg=bg guibg=' . s:blue . ' guifg=bg gui=none'

" Neomake plugin
if g:moonflyUndercurls
    exec 'highlight NeomakeError ctermbg=bg guibg=bg gui=undercurl guisp=' . s:red
    exec 'highlight NeomakeWarning ctermbg=bg guibg=bg gui=undercurl guisp=' . s:yellow
    exec 'highlight NeomakeInfo ctermbg=bg guibg=bg gui=undercurl guisp=' . s:sky
    exec 'highlight NeomakeMessage ctermbg=bg guibg=bg gui=undercurl guisp=' . s:white
else
    exec 'highlight NeomakeError ctermbg=bg guibg=bg'
    exec 'highlight NeomakeWarning ctermbg=bg guibg=bg'
    exec 'highlight NeomakeInfo ctermbg=bg guibg=bg'
    exec 'highlight NeomakeMessage ctermbg=bg guibg=bg'
endif

highlight! link NeomakeErrorSign MoonflyRedAlert
highlight! link NeomakeWarningSign MoonflyYellowAlert
highlight! link NeomakeInfoSign MoonflySkyAlert
highlight! link NeomakeMessageSign MoonflyWhiteAlert

" ALE plugin
if g:moonflyUndercurls
     exec 'highlight ALEError ctermbg=bg guibg=bg gui=undercurl guisp=' . s:red
     exec 'highlight ALEWarning ctermbg=bg guibg=bg gui=undercurl guisp=' . s:yellow
     exec 'highlight ALEInfo ctermbg=bg guibg=bg gui=undercurl guisp=' . s:sky
else
    exec 'highlight ALEError ctermbg=bg guibg=bg'
    exec 'highlight ALEWarning ctermbg=bg guibg=bg'
    exec 'highlight ALEInfo ctermbg=bg guibg=bg'
endif
highlight! link ALEVirtualTextError MoonflyGrey241
highlight! link ALEErrorSign MoonflyRedAlert
highlight! link ALEVirtualTextWarning MoonflyGrey241
highlight! link ALEWarningSign MoonflyYellowAlert
highlight! link ALEVirtualTextInfo MoonflyGrey241
highlight! link ALEInfoSign MoonflySkyAlert

" Neovim LSP diagnostics
highlight! link LspDiagnosticsError MoonflyGrey241
highlight! link LspDiagnosticsErrorSign MoonflyRedAlert
highlight! link LspDiagnosticsWarning MoonflyGrey241
highlight! link LspDiagnosticsWarningSign MoonflyYellowAlert
highlight! link LspDiagnosticsInformation MoonflyGrey241
highlight! link LspDiagnosticsInformationSign MoonflySkyAlert
highlight! link LspDiagnosticsHint MoonflyGrey241
highlight! link LspDiagnosticsHintSign MoonflyWhiteAlert

" GitGutter plugin
highlight! link GitGutterAdd MoonflyEmeraldAlert
highlight! link GitGutterChange MoonflyPurpleAlert
highlight! link GitGutterChangeDelete MoonflyCoralAlert
highlight! link GitGutterDelete MoonflyRedAlert

" Signify plugin
highlight! link SignifySignAdd MoonflyEmeraldAlert
highlight! link SignifySignChange MoonflyPurpleAlert
highlight! link SignifySignDelete MoonflyRedAlert

" FZF plugin
exec 'highlight fzf1 ctermfg=9 ctermbg=236 guifg=' . s:crimson . ' guibg=' . s:grey236
exec 'highlight fzf2 ctermfg=111 ctermbg=236 guifg=' . s:blue . ' guibg=' . s:grey236
exec 'highlight fzf3 ctermfg=10 ctermbg=236 guifg=' . s:emerald . ' guibg=' . s:grey236
exec 'highlight fzfNormal ctermfg=249 guifg=' . s:grey249
exec 'highlight fzfFgPlus ctermfg=253 guifg=' . s:grey253
exec 'highlight fzfBorder ctermfg=236 guifg=' . s:grey236
let g:fzf_colors = {
  \  'fg':      ['fg', 'fzfNormal'],
  \  'bg':      ['bg', 'Normal'],
  \  'hl':      ['fg', 'Number'],
  \  'fg+':     ['fg', 'fzfFgPlus'],
  \  'bg+':     ['bg', 'Pmenu'],
  \  'hl+':     ['fg', 'Number'],
  \  'info':    ['fg', 'String'],
  \  'border':  ['fg', 'fzfBorder'],
  \  'prompt':  ['fg', 'fzf2'],
  \  'pointer': ['fg', 'Exception'],
  \  'marker':  ['fg', 'StorageClass'],
  \  'spinner': ['fg', 'Type'],
  \  'header':  ['fg', 'CursorLineNr']
  \}
