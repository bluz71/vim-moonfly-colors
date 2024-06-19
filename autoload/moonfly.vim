" Background and foreground
let s:black     = '#080808'
let s:white     = '#c6c6c6'
" Variations of charcoal-grey
let s:grey0     = '#323437'
let s:grey1     = '#373c4d'
let s:grey89    = '#e4e4e4'
let s:grey70    = '#b2b2b2'
let s:grey62    = '#9e9e9e'
let s:grey58    = '#949494'
let s:grey50    = '#808080'
let s:grey39    = '#626262'
let s:grey30    = '#4e4e4e'
let s:grey27    = '#444444'
let s:grey23    = '#3a3a3a'
let s:grey18    = '#2e2e2e'
let s:grey15    = '#262626'
let s:grey11    = '#1c1c1c'
let s:grey7     = '#121212'
" Core theme colors
let s:khaki     = '#c6c684'
let s:yellow    = '#e3c78a'
let s:orange    = '#de935f'
let s:coral     = '#f09479'
let s:orchid    = '#e196a2'
let s:lime      = '#85dc85'
let s:green     = '#8cc85f'
let s:emerald   = '#36c692'
let s:turquoise = '#79dac8'
let s:blue      = '#80a0ff'
let s:sky       = '#74b2ff'
let s:lavender  = "#adadf3"
let s:purple    = '#ae81ff'
let s:violet    = '#cf87e8'
let s:cranberry = '#e65e72'
let s:crimson   = '#ff5189'
let s:red       = '#ff5454'
" Extra colors
let s:spring    = '#00875f'
let s:mineral   = '#314940'
let s:bay       = '#4d5d8d'

function! moonfly#Style() abort
    "-----------------------------------------------------------------------
    " Custom styling groups
    "-----------------------------------------------------------------------

    exec 'highlight MoonflyVisual guibg=' . s:grey0
    exec 'highlight MoonflyWhite guifg=' . s:white
    exec 'highlight MoonflyGrey0 guifg=' . s:grey0
    exec 'highlight MoonflyGrey89 guifg=' . s:grey89
    exec 'highlight MoonflyGrey70 guifg=' . s:grey70
    exec 'highlight MoonflyGrey62 guifg=' . s:grey62
    exec 'highlight MoonflyGrey58 guifg=' . s:grey58
    exec 'highlight MoonflyGrey39 guifg=' . s:grey39
    exec 'highlight MoonflyGrey30 guifg=' . s:grey30
    exec 'highlight MoonflyGrey27 guifg=' . s:grey27
    exec 'highlight MoonflyGrey23 guifg=' . s:grey23
    exec 'highlight MoonflyGrey18 guifg=' . s:grey18
    exec 'highlight MoonflyGrey15 guifg=' . s:grey15
    exec 'highlight MoonflyKhaki guifg=' . s:khaki
    exec 'highlight MoonflyYellow guifg=' . s:yellow
    exec 'highlight MoonflyOrange guifg=' . s:orange
    exec 'highlight MoonflyCoral guifg=' . s:coral
    exec 'highlight MoonflyOrchid guifg=' . s:orchid
    exec 'highlight MoonflyLime guifg=' . s:lime
    exec 'highlight MoonflyGreen guifg=' . s:green
    exec 'highlight MoonflyEmerald guifg=' . s:emerald
    exec 'highlight MoonflyTurquoise guifg=' . s:turquoise
    exec 'highlight MoonflyBlue guifg=' . s:blue
    exec 'highlight MoonflySky guifg=' . s:sky
    exec 'highlight MoonflyLavender guifg=' . s:lavender
    exec 'highlight MoonflyPurple guifg=' . s:purple
    exec 'highlight MoonflyViolet guifg=' . s:violet
    exec 'highlight MoonflyCranberry guifg=' . s:cranberry
    exec 'highlight MoonflyCrimson guifg=' . s:crimson
    exec 'highlight MoonflyRed guifg=' . s:red
    " Statusline helper colors
    exec 'highlight MoonflyBlueMode guibg=' . s:blue . ' guifg=' . s:grey11
    exec 'highlight MoonflyEmeraldMode guibg=' . s:emerald . ' guifg=' . s:grey11
    exec 'highlight MoonflyPurpleMode guibg=' . s:purple . ' guifg=' . s:grey11
    exec 'highlight MoonflyCrimsonMode guibg=' . s:crimson . ' guifg=' . s:grey11
    exec 'highlight MoonflyYellowMode guibg=' . s:yellow . ' guifg=' . s:grey11
    " Diagnostic helper colors
    exec 'highlight MoonflyDiagnosticUndercurlError gui=undercurl guisp=' . s:red
    exec 'highlight MoonflyDiagnosticUndercurlWarn gui=undercurl guisp=' . s:yellow
    exec 'highlight MoonflyDiagnosticUndercurlInfo gui=undercurl guisp=' . s:sky
    exec 'highlight MoonflyDiagnosticUnderlineError gui=underline guisp=' . s:red
    exec 'highlight MoonflyDiagnosticUnderlineWarn gui=underline guisp=' . s:yellow
    exec 'highlight MoonflyDiagnosticUnderlineInfo gui=underline guisp=' . s:sky
    exec 'highlight MoonflyDiagnosticVirtualTextError guibg=' . s:grey11 . ' guifg=' . s:red
    exec 'highlight MoonflyDiagnosticVirtualTextWarn guibg=' . s:grey11 . ' guifg=' . s:yellow
    exec 'highlight MoonflyDiagnosticVirtualTextInfo guibg=' . s:grey11 . ' guifg=' . s:sky

    "-----------------------------------------------------------------------
    " Standard styling
    "-----------------------------------------------------------------------

    " Specify the colors used by the inbuilt terminal
    if g:moonflyTerminalColors
        let g:terminal_ansi_colors = [
                    \ s:grey0, s:red, s:green, s:yellow,
                    \ s:blue, s:violet, s:turquoise, s:white,
                    \ s:grey58, s:crimson, s:emerald, s:khaki,
                    \ s:sky, s:purple, s:lime, s:grey89
                    \]
    endif

    " Background and text
    if g:moonflyTransparent
        exec 'highlight Normal guibg=NONE guifg=' . s:white
    else
        exec 'highlight Normal guibg=' . s:black . ' guifg=' . s:white
    endif

    " Color of mode text, -- INSERT --
    exec 'highlight ModeMsg guifg=' . s:grey62 . ' gui=none'

    " Comments
    if g:moonflyItalics
        exec 'highlight Comment guifg=' . s:grey58 . ' gui=italic'
    else
        exec 'highlight Comment guifg=' . s:grey58
    endif

    " Functions
    highlight! link Function MoonflySky

    " Strings
    highlight! link String MoonflyKhaki

    " Booleans
    highlight! link Boolean MoonflyCranberry

    " Identifiers
    highlight! link Identifier MoonflyTurquoise

    " Color of titles
    exec 'highlight Title guifg=' . s:orange . ' gui=none'

    " const, static
    highlight! link StorageClass MoonflyViolet

    " void, intptr_t
    exec 'highlight Type guifg=' . s:emerald . ' gui=none'

    " Numbers
    highlight! link Constant MoonflyOrange

    " Character constants
    highlight! link Character MoonflyPurple

    " Exceptions
    highlight! link Exception MoonflyCrimson

    " ifdef/endif
    highlight! link PreProc MoonflyCranberry

    " case in switch statement
    highlight! link Label MoonflyTurquoise

    " end-of-line '$', end-of-file '~'
    exec 'highlight NonText guifg=' . s:grey39 . ' gui=none'

    " sizeof
    highlight! link Operator MoonflyCranberry

    " for, while
    highlight! link Repeat MoonflyViolet

    " Search
    exec 'highlight Search cterm=none guibg=' . s:grey1 . ' guifg=' . s:grey89 . ' gui=none'
    exec 'highlight CurSearch cterm=none guibg=' . s:coral . ' guifg=' . s:black . ' gui=none'
    exec 'highlight IncSearch cterm=none guibg=' . s:yellow . ' guifg=' . s:black . ' gui=none'

    " '\n' sequences
    highlight! link Special MoonflyCranberry

    " if, else
    exec 'highlight Statement guifg=' . s:violet . ' gui=none'

    " struct, union, enum, typedef
    highlight! link Structure MoonflyBlue

    " Status, split and tab lines
    exec 'highlight StatusLine cterm=none guibg=' . s:grey18 . ' guifg=' . s:white . ' gui=none'
    exec 'highlight StatusLineNC cterm=none guibg=' . s:grey18 . ' guifg=' . s:grey62 . ' gui=none'
    exec 'highlight Tabline cterm=none guibg=' . s:grey18 . ' guifg=' . s:grey62 . ' gui=none'
    exec 'highlight TablineSel cterm=none guibg=' . s:grey11 . ' guifg=' . s:blue . ' gui=none'
    exec 'highlight TablineSelSymbol cterm=none guibg=' . s:grey11 . ' guifg=' . s:emerald . ' gui=none'
    exec 'highlight TablineFill cterm=none guibg=' . s:grey18 . ' guifg=' . s:grey18 . ' gui=none'
    exec 'highlight StatusLineTerm cterm=none guibg=' . s:grey18 . ' guifg=' . s:white . ' gui=none'
    exec 'highlight StatusLineTermNC cterm=none guibg=' . s:grey18 . ' guifg=' . s:grey62 . ' gui=none'
    if g:moonflyWinSeparator == 0
        exec 'highlight VertSplit cterm=none guibg=' . s:black . ' guifg=' . s:black . ' gui=none'
    elseif g:moonflyWinSeparator == 1
        exec 'highlight VertSplit cterm=none guibg=' . s:grey18 . ' guifg=' . s:grey18 . ' gui=none'
    else
        exec 'highlight VertSplit guibg=NONE guifg=' . s:grey18 . ' gui=none'
    end

    " Visual selection
    highlight! link Visual MoonflyVisual
    exec 'highlight VisualNOS guibg=' . s:grey0 . ' guifg=fg gui=none'

    " Errors, warnings and whitespace-eol
    exec 'highlight Error guibg=bg guifg=' . s:red
    exec 'highlight ErrorMsg guibg=bg guifg=' . s:red
    exec 'highlight WarningMsg guibg=bg guifg=' . s:orange

    " Auto-text-completion menu
    exec 'highlight Pmenu guibg=' . s:grey15 . ' guifg=fg'
    exec 'highlight PmenuSel guibg=' . s:spring . ' guifg=' . s:grey89
    exec 'highlight PmenuSbar guibg=' . s:grey15
    exec 'highlight PmenuThumb guibg=' . s:grey50
    exec 'highlight WildMenu guibg=' . s:spring . ' guifg=' . s:grey89

    " Spelling errors
    if g:moonflyUndercurls
        exec 'highlight SpellBad ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:red
        exec 'highlight SpellCap ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:blue
        exec 'highlight SpellRare ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:yellow
        exec 'highlight SpellLocal ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:sky
    else
        exec 'highlight SpellBad ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:red . ' gui=underline guisp=' . s:red
        exec 'highlight SpellCap ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:blue . ' gui=underline guisp=' . s:blue
        exec 'highlight SpellRare ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:yellow . ' gui=underline guisp=' . s:yellow
        exec 'highlight SpellLocal ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:sky . ' gui=underline guisp=' . s:sky
    endif

    " Misc
    exec 'highlight Question guifg=' . s:lime . ' gui=none'
    exec 'highlight MoreMsg guifg=' . s:red . ' gui=none'
    exec 'highlight LineNr guibg=bg guifg=' . s:grey39 . ' gui=none'
    if g:moonflyCursorColor
        exec 'highlight Cursor guifg=bg guibg=' . s:blue
    else
        exec 'highlight Cursor guifg=bg guibg=' . s:grey62
    endif
    exec 'highlight lCursor guifg=bg guibg=' . s:grey62
    exec 'highlight CursorLineNr cterm=none guibg=' . s:grey11 . ' guifg=' . s:blue . ' gui=none'
    exec 'highlight CursorColumn guibg=' . s:grey11
    exec 'highlight CursorLine cterm=none guibg=' . s:grey11
    exec 'highlight Folded guibg=' . s:grey11 . ' guifg='. s:lime
    exec 'highlight FoldColumn guibg=' . s:grey18 . ' guifg=' . s:lime
    exec 'highlight SignColumn guibg=bg guifg=' . s:lime
    exec 'highlight Todo guibg=' . s:grey15 . ' guifg=' . s:yellow
    exec 'highlight SpecialKey guibg=bg guifg=' . s:sky
    if g:moonflyUnderlineMatchParen
        exec 'highlight MatchParen guibg=bg gui=underline'
    else
        highlight! link MatchParen MoonflyVisual
    endif
    highlight! link Ignore MoonflySky
    exec 'highlight Underlined guifg=' . s:emerald . ' gui=none'
    exec 'highlight QuickFixLine guibg=' . s:grey23
    highlight! link Delimiter MoonflyWhite
    highlight! link qfFileName MoonflyEmerald

    " Color column (after line 80)
    exec 'highlight ColorColumn guibg=' . s:grey7

    " Conceal color
    exec 'highlight Conceal guibg=NONE guifg=' . s:grey70

    " vimdiff -d
    exec 'highlight DiffAdd guibg=' . s:mineral
    exec 'highlight DiffChange guibg=' . s:grey18
    exec 'highlight DiffDelete guibg=' . s:grey18 . ' guifg=' . s:grey39 . ' gui=none'
    exec 'highlight DiffText guibg=' . s:bay

    "-----------------------------------------------------------------------
    " Language styling
    "-----------------------------------------------------------------------

    " C
    highlight! link cTypedef MoonflyViolet

    " C++
    highlight! link cppAccess MoonflyViolet
    highlight! link cppCast MoonflyTurquoise
    highlight! link cppCustomClass MoonflyTurquoise
    highlight! link cppExceptions MoonflyLime
    highlight! link cppModifier MoonflyViolet
    highlight! link cppOperator MoonflyGreen
    highlight! link cppStatement MoonflyTurquoise
    highlight! link cppSTLconstant MoonflyBlue
    highlight! link cppSTLnamespace MoonflyTurquoise
    highlight! link cppStructure MoonflyViolet

    " C#
    highlight! link csModifier MoonflyViolet
    highlight! link csStorage MoonflyViolet
    highlight! link csXmlTag MoonflyBlue

    " Clojure
    highlight! link clojureDefine MoonflyViolet
    highlight! link clojureKeyword MoonflyPurple
    highlight! link clojureSpecial MoonflyTurquoise

    " CoffeeScript
    highlight! link coffeeConstant MoonflyEmerald
    highlight! link coffeeGlobal MoonflyTurquoise
    highlight! link coffeeObject MoonflyEmerald
    highlight! link coffeeObjAssign MoonflySky
    highlight! link coffeeSpecialIdent MoonflyTurquoise
    highlight! link coffeeSpecialVar MoonflyBlue

    " Crystal
    highlight! link crystalDefine MoonflyViolet
    highlight! link crystalPseudoVariable MoonflyGreen

    " CSS/SCSS
    highlight! link cssAtRule MoonflyViolet
    highlight! link cssAttr MoonflyGreen
    highlight! link cssBraces MoonflyWhite
    highlight! link cssClassName MoonflyEmerald
    highlight! link cssClassNameDot MoonflyViolet
    highlight! link cssColor MoonflyGreen
    highlight! link cssIdentifier MoonflyEmerald
    highlight! link cssProp MoonflyLavender
    highlight! link cssTagName MoonflyBlue
    highlight! link cssUnitDecorators MoonflyKhaki
    highlight! link sassId MoonflyEmerald
    highlight! link sassIdChar MoonflyCranberry
    highlight! link sassMedia MoonflyViolet
    highlight! link scssSelectorName MoonflyEmerald

    " Dart
    highlight! link dartTypedef MoonflyViolet

    " Elixir
    highlight! link eelixirDelimiter MoonflyCrimson
    highlight! link elixirAtom MoonflyPurple
    highlight! link elixirBlockDefinition MoonflyViolet
    highlight! link elixirDefine MoonflyViolet
    highlight! link elixirDocTest MoonflyGrey62
    highlight! link elixirExUnitAssert MoonflyLime
    highlight! link elixirExUnitMacro MoonflySky
    highlight! link elixirKernelFunction MoonflyGreen
    highlight! link elixirKeyword MoonflyViolet
    highlight! link elixirModuleDefine MoonflyViolet
    highlight! link elixirPrivateDefine MoonflyViolet
    highlight! link elixirStringDelimiter MoonflyKhaki
    highlight! link elixirVariable MoonflyTurquoise

    " Elm
    highlight! link elmLetBlockDefinition MoonflyLime
    highlight! link elmTopLevelDecl MoonflyCoral
    highlight! link elmTypedef MoonflyViolet

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
    highlight! link haskellDecl MoonflyViolet
    highlight! link haskellDeclKeyword MoonflyViolet
    highlight! link haskellLet MoonflySky
    highlight! link haskellOperators MoonflyCranberry
    highlight! link haskellWhere MoonflyViolet

    " Help
    highlight! link helpCommand MoonflyOrchid
    highlight! link helpExample MoonflyGreen
    highlight! link helpHeadline MoonflyBlue
    highlight! link helpHyperTextEntry MoonflyTurquoise
    highlight! link helpSectionDelim MoonflyBlue

    " HTML
    highlight! link htmlArg MoonflyTurquoise
    highlight! link htmlLink MoonflyGreen
    highlight! link htmlEndTag MoonflyPurple
    highlight! link htmlH1 MoonflyCranberry
    highlight! link htmlH2 MoonflyOrange
    highlight! link htmlSpecialTagName MoonflyBlue
    highlight! link htmlTag MoonflyLime
    highlight! link htmlTagN MoonflyBlue
    highlight! link htmlTagName MoonflyBlue
    highlight! link htmlTitle MoonflyViolet
    highlight! link htmlUnderline MoonflyWhite
    if g:moonflyItalics
        exec 'highlight htmlBoldItalic guibg=' . s:black . ' guifg=' . s:coral . ' gui=italic'
        exec 'highlight htmlBoldUnderlineItalic guibg=' . s:black . ' guifg=' . s:coral . ' gui=italic'
        exec 'highlight htmlItalic guifg=' . s:grey62 . ' gui=italic'
        exec 'highlight htmlUnderlineItalic guibg=' . s:black . ' guifg=' . s:grey62 . ' gui=italic'
    else
        exec 'highlight htmlBoldItalic guibg=' . s:black . ' guifg=' . s:coral ' gui=none'
        exec 'highlight htmlBoldUnderlineItalic guibg=' . s:black . ' guifg=' . s:coral
        exec 'highlight htmlItalic guifg=' . s:grey62 ' gui=none'
        exec 'highlight htmlUnderlineItalic guibg=' . s:black . ' guifg=' . s:grey62
    endif

    " Java
    highlight! link javaAnnotation MoonflyLime
    highlight! link javaBraces MoonflyWhite
    highlight! link javaCommentTitle MoonflyGrey62
    highlight! link javaConstant MoonflySky
    highlight! link javaDebug MoonflySky
    highlight! link javaMethodDecl MoonflyYellow
    highlight! link javaOperator MoonflyCrimson
    highlight! link javaScopeDecl MoonflyViolet
    highlight! link javaStatement MoonflyTurquoise

    " JavaScript, 'pangloss/vim-javascript' plugin
    highlight! link jsClassDefinition MoonflyEmerald
    highlight! link jsClassKeyword MoonflyViolet
    highlight! link jsClassMethodType MoonflyEmerald
    highlight! link jsExceptions MoonflyEmerald
    highlight! link jsFrom MoonflyCranberry
    highlight! link jsFuncBlock MoonflyTurquoise
    highlight! link jsFuncCall MoonflySky
    highlight! link jsFunction MoonflyViolet
    highlight! link jsGlobalObjects MoonflyEmerald
    highlight! link jsModuleAs MoonflyCoral
    highlight! link jsObjectKey MoonflyLavender
    highlight! link jsObjectValue MoonflyEmerald
    highlight! link jsOperator MoonflyViolet
    highlight! link jsStorageClass MoonflyViolet
    highlight! link jsTemplateBraces MoonflyCranberry
    highlight! link jsTemplateExpression MoonflyTurquoise
    highlight! link jsThis MoonflyGreen

    " JSX, 'MaxMEllon/vim-jsx-pretty' plugin
    highlight! link jsxAttrib MoonflyTurquoise
    highlight! link jsxClosePunct MoonflyPurple
    highlight! link jsxComponentName MoonflyEmerald
    highlight! link jsxOpenPunct MoonflyLime
    highlight! link jsxTagName MoonflyBlue

    " LaTeX
    highlight! link texBeginEndName MoonflyEmerald
    highlight! link texCite MoonflyGreen
    highlight! link texDocType MoonflyCranberry
    highlight! link texDocTypeArgs MoonflyOrchid
    highlight! link texInputFile String
    highlight! link texMathZoneC MoonflySky
    highlight! link texMathZoneX MoonflySky
    highlight! link texRefZone MoonflyGreen
    highlight! link texSection MoonflyLavender
    highlight! link texTypeStyle MoonflyYellow
    highlight! link texZone MoonflyLavender

    " Lua
    highlight! link luaBraces MoonflyEmerald
    highlight! link luaBuiltin MoonflyGreen
    highlight! link luaConstant MoonflyCranberry
    highlight! link luaFuncCall MoonflySky
    highlight! link luaFuncKeyword MoonflyViolet
    highlight! link luaLocal MoonflyViolet
    highlight! link luaSpecialTable MoonflySky
    highlight! link luaSpecialValue MoonflySky

    " Man
    highlight! link manHeader MoonflyEmerald
    highlight! link manOptionDesc MoonflyOrchid
    highlight! link manReference MoonflyGreen
    highlight! link manSectionHeading MoonflyBlue
    highlight! link manSubHeading MoonflyTurquoise

    " Markdown, 'tpope/vim-markdown' plugin
    highlight! link markdownBold MoonflyYellow
    highlight! link markdownCode MoonflyKhaki
    highlight! link markdownCodeDelimiter MoonflyKhaki
    highlight! link markdownError NormalNC
    highlight! link markdownH1 MoonflyEmerald
    highlight! link markdownH2 MoonflyBlue
    highlight! link markdownH3 MoonflyTurquoise
    highlight! link markdownH3Delimiter MoonflyCrimson
    highlight! link markdownH4 MoonflyOrange
    highlight! link markdownH4Delimiter MoonflyCrimson
    highlight! link markdownH5 MoonflySky
    highlight! link markdownH5Delimiter MoonflyCrimson
    highlight! link markdownH6 MoonflyViolet
    highlight! link markdownH6Delimiter MoonflyCrimson
    highlight! link markdownHeadingRule MoonflyCranberry
    if g:moonflyItalics
        exec 'highlight markdownItalic guifg=' . s:orchid . ' gui=italic'
    else
        highlight! link markdownItalic MoonflyOrchid
    endif
    exec 'highlight markdownUrl guifg=' . s:purple. ' cterm=underline gui=underline guisp=' . s:grey50

    " Markdown, 'plasticboy/vim-markdown' plugin
    highlight! link mkdDelimiter MoonflyWhite
    highlight! link mkdLineBreak NormalNC
    highlight! link mkdListItem MoonflyBlue
    highlight! link mkdURL markdownUrl

    " PHP
    highlight! link phpClass MoonflyEmerald
    highlight! link phpClasses MoonflyBlue
    highlight! link phpFunction MoonflySky
    highlight! link phpParent MoonflyWhite
    highlight! link phpType MoonflyViolet

    " Python
    highlight! link pythonBuiltin MoonflyBlue
    highlight! link pythonClass MoonflyEmerald
    highlight! link pythonClassVar MoonflyGreen
    highlight! link pythonCoding MoonflySky
    highlight! link pythonImport MoonflyCranberry
    highlight! link pythonOperator MoonflyViolet
    highlight! link pythonRun MoonflySky
    highlight! link pythonStatement MoonflyViolet

    " Ruby
    highlight! link rubyAccess MoonflyViolet
    highlight! link rubyAssertion MoonflySky
    highlight! link rubyAttribute MoonflySky
    highlight! link rubyBlockParameter MoonflyGreen
    highlight! link rubyCallback MoonflySky
    highlight! link rubyDefine MoonflyViolet
    highlight! link rubyEntities MoonflySky
    highlight! link rubyExceptional MoonflyCoral
    highlight! link rubyGemfileMethod MoonflySky
    highlight! link rubyInstanceVariable MoonflyTurquoise
    highlight! link rubyInterpolationDelimiter MoonflyCranberry
    highlight! link rubyMacro MoonflySky
    highlight! link rubyModule MoonflyBlue
    highlight! link rubyModuleName MoonflyEmerald
    highlight! link rubyPseudoVariable MoonflyGreen
    highlight! link rubyResponse MoonflySky
    highlight! link rubyRoute MoonflySky
    highlight! link rubySharpBang MoonflyGrey62
    highlight! link rubyStringDelimiter MoonflyKhaki
    highlight! link rubySymbol MoonflyPurple

    " Rust
    highlight! link rustAssert MoonflyTurquoise
    highlight! link rustAttribute MoonflyWhite
    highlight! link rustCharacterInvalid MoonflyCranberry
    highlight! link rustCharacterInvalidUnicode MoonflyCranberry
    highlight! link rustCommentBlockDoc MoonflyGrey62
    highlight! link rustCommentBlockDocError MoonflyGrey62
    highlight! link rustCommentLineDoc MoonflyGrey62
    highlight! link rustCommentLineDocError MoonflyGrey62
    highlight! link rustConstant MoonflyOrange
    highlight! link rustDerive MoonflyGreen
    highlight! link rustEscapeError MoonflyCranberry
    highlight! link rustFuncName MoonflyBlue
    highlight! link rustIdentifier MoonflyBlue
    highlight! link rustInvalidBareKeyword MoonflyCranberry
    highlight! link rustKeyword MoonflyViolet
    highlight! link rustLifetime MoonflyViolet
    highlight! link rustMacro MoonflyTurquoise
    highlight! link rustMacroVariable MoonflyViolet
    highlight! link rustModPath MoonflyTurquoise
    highlight! link rustModPathSep MoonflyCranberry
    highlight! link rustObsoleteExternMod MoonflyCranberry
    highlight! link rustObsoleteStorage MoonflyCranberry
    highlight! link rustReservedKeyword MoonflyCranberry
    highlight! link rustSelf MoonflyGreen
    highlight! link rustSigil MoonflyTurquoise
    highlight! link rustStorage MoonflyViolet
    highlight! link rustStructure MoonflyViolet
    highlight! link rustTrait MoonflyEmerald
    highlight! link rustType MoonflyEmerald

    " Scala (note, link highlighting does not work, I don't know why)
    exec 'highlight scalaCapitalWord guifg=' . s:emerald
    exec 'highlight scalaCommentCodeBlock guifg=' . s:grey62
    exec 'highlight scalaInstanceDeclaration guifg=' . s:emerald
    exec 'highlight scalaKeywordModifier guifg=' . s:violet
    exec 'highlight scalaSpecial guifg=' . s:crimson

    " Shell
    highlight! link shAlias MoonflyTurquoise
    highlight! link shCommandSub MoonflyWhite
    highlight! link shCtrlSeq MoonflyKhaki
    highlight! link shLoop MoonflyViolet
    highlight! link shRange MoonflyWhite
    highlight! link shSetList MoonflyTurquoise
    highlight! link shShellVariables MoonflyTurquoise
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
    highlight! link typescriptStorageClass MoonflyViolet

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
    highlight! link typescriptClassKeyword MoonflyViolet
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
    highlight! link typescriptTypeReference MoonflyEmerald
    highlight! link typescriptVariable MoonflyLime
    highlight! link typescriptXHRMethod MoonflySky

    " Vimscript
    highlight! link vimBracket MoonflySky
    highlight! link vimCommand MoonflyViolet
    highlight! link vimCommentTitle MoonflyViolet
    highlight! link vimEnvvar MoonflyCrimson
    highlight! link vimFuncName MoonflySky
    highlight! link vimFuncSID MoonflySky
    highlight! link vimFunction MoonflySky
    highlight! link vimHighlight MoonflySky
    highlight! link vimNotFunc MoonflyViolet
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

    " Zig
    highlight! link zigVarDecl MoonflyViolet
    highlight! link zigNull MoonflyGreen

    "-----------------------------------------------------------------------
    " Plugin styling
    "-----------------------------------------------------------------------

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
    highlight! link TagbarFoldIcon MoonflyGrey62
    highlight! link TagbarVisibilityPublic MoonflyLime
    highlight! link TagbarVisibilityProtected MoonflyLime
    highlight! link TagbarVisibilityPrivate MoonflyLime
    highlight! link TagbarKind MoonflyEmerald

    " NERDTree plugin
    highlight! link NERDTreeClosable MoonflyGrey58
    highlight! link NERDTreeCWD MoonflyPurple
    highlight! link NERDTreeDir MoonflySky
    highlight! link NERDTreeDirSlash MoonflyCranberry
    highlight! link NERDTreeExecFile MoonflyKhaki
    highlight! link NERDTreeFile MoonflyWhite
    highlight! link NERDTreeHelp MoonflyGrey62
    highlight! link NERDTreeLinkDir MoonflyBlue
    highlight! link NERDTreeLinkFile MoonflyBlue
    highlight! link NERDTreeLinkTarget MoonflyTurquoise
    highlight! link NERDTreeOpenable MoonflyGrey58
    highlight! link NERDTreePart MoonflyGrey0
    highlight! link NERDTreePartFile MoonflyGrey0
    highlight! link NERDTreeUp MoonflyBlue

    " NERDTree Git plugin
    highlight! link NERDTreeGitStatusDirDirty MoonflyKhaki
    highlight! link NERDTreeGitStatusModified MoonflyCrimson
    highlight! link NERDTreeGitStatusRenamed MoonflySky
    highlight! link NERDTreeGitStatusStaged MoonflySky
    highlight! link NERDTreeGitStatusUntracked MoonflyRed

    " fern.vim plugin
    highlight! link FernBranchSymbol MoonflyGrey58
    highlight! link FernLeafSymbol MoonflyBlue
    highlight! link FernLeaderSymbol MoonflyGrey23
    highlight! link FernBranchText MoonflyBlue
    highlight! link FernMarkedLine MoonflyVisual
    highlight! link FernMarkedText MoonflyCrimson
    highlight! link FernRootSymbol MoonflyPurple
    highlight! link FernRootText MoonflyPurple

    " fern-git-status.vim plugin
    highlight! link FernGitStatusBracket MoonflyGrey58
    highlight! link FernGitStatusIndex MoonflyEmerald
    highlight! link FernGitStatusWorktree MoonflyCrimson

    " Glyph palette
    highlight! link GlyphPalette1 MoonflyCranberry
    highlight! link GlyphPalette2 MoonflyEmerald
    highlight! link GlyphPalette3 MoonflyYellow
    highlight! link GlyphPalette4 MoonflyBlue
    highlight! link GlyphPalette6 MoonflyTurquoise
    highlight! link GlyphPalette7 MoonflyWhite
    highlight! link GlyphPalette9 MoonflyCrimson

    " Misc items
    highlight! link bufExplorerHelp MoonflyGrey62
    highlight! link bufExplorerSortBy MoonflyGrey62
    highlight! link CleverFDefaultLabel MoonflyCrimson
    highlight! link CtrlPMatch MoonflyCoral
    highlight! link Directory MoonflyBlue
    highlight! link erubyDelimiter MoonflyCrimson
    highlight! link HighlightedyankRegion MoonflyGrey0
    highlight! link jsonKeyword MoonflySky
    highlight! link jsonQuote MoonflyWhite
    highlight! link netrwClassify MoonflyCranberry
    highlight! link netrwDir MoonflySky
    highlight! link netrwExe MoonflyKhaki
    highlight! link tagName MoonflyTurquoise
    highlight! link Cheat40Header MoonflyBlue
    highlight! link yamlBlockMappingKey MoonflySky
    highlight! link yamlFlowMappingKey MoonflySky
    if g:moonflyUnderlineMatchParen
        exec 'highlight MatchWord gui=underline guisp=' . s:coral
    else
        highlight! link MatchWord MoonflyCoral
    endif
    exec 'highlight snipLeadingSpaces guibg=bg guifg=fg'
    exec 'highlight MatchWordCur guibg=bg'
    highlight! link fishInnerVariable MoonflyTurquoise
    highlight! link fishParameter MoonflyTurquoise
    highlight! link fishVariable MoonflyTurquoise

    " ALE plugin
    if g:moonflyUndercurls
        highlight! link ALEError MoonflyDiagnosticUndercurlError
        highlight! link ALEWarning MoonflyDiagnosticUndercurlWarn
        highlight! link ALEInfo MoonflyDiagnosticUndercurlInfo
    else
        highlight! link ALEError MoonflyDiagnosticUnderlineError
        highlight! link ALEWarning MoonflyDiagnosticUnderlineWarn
        highlight! link ALEInfo MoonflyDiagnosticUnderlineInfo
    endif
    highlight! link ALEWarningSign MoonflyYellow
    highlight! link ALEErrorSign MoonflyRed
    highlight! link ALEInfoSign MoonflySky
    if g:moonflyVirtualTextColor
        highlight! link ALEVirtualTextError MoonflyDiagnosticVirtualTextError
        highlight! link ALEVirtualTextWarning MoonflyDiagnosticVirtualTextWarn
        highlight! link ALEVirtualTextInfo MoonflyDiagnosticVirtualTextInfo
    else
        highlight! link ALEVirtualTextError MoonflyGrey39
        highlight! link ALEVirtualTextWarning MoonflyGrey39
        highlight! link ALEVirtualTextInfo MoonflyGrey39
    endif

    " GitGutter plugin
    highlight! link GitGutterAdd MoonflyEmerald
    highlight! link GitGutterChange MoonflySky
    highlight! link GitGutterChangeDelete MoonflyCoral
    highlight! link GitGutterDelete MoonflyRed

    " Signify plugin
    highlight! link SignifySignAdd MoonflyEmerald
    highlight! link SignifySignChange MoonflySky
    highlight! link SignifySignChangeDelete MoonflyCoral
    highlight! link SignifySignDelete MoonflyRed

    " FZF plugin
    exec 'highlight FzfBorder guifg=' . s:grey18
    exec 'highlight FzfFgPlus guifg=' . s:grey89
    exec 'highlight FzfNormal guifg=' . s:grey70
    exec 'highlight FzfPrompt guifg=' . s:blue . ' guibg=' . s:grey18
    exec 'highlight FzfSubstring guifg=' . s:coral
    let g:fzf_colors = {
      \  'fg':      ['fg', 'FzfNormal'],
      \  'bg':      ['bg', 'Normal'],
      \  'hl':      ['fg', 'FzfSubstring'],
      \  'fg+':     ['fg', 'FzfFgPlus'],
      \  'bg+':     ['bg', 'Pmenu'],
      \  'hl+':     ['fg', 'FzfSubstring'],
      \  'info':    ['fg', 'String'],
      \  'border':  ['fg', 'FzfBorder'],
      \  'prompt':  ['fg', 'FzfPrompt'],
      \  'pointer': ['fg', 'Exception'],
      \  'marker':  ['fg', 'FzfSubstring'],
      \  'spinner': ['fg', 'Type'],
      \  'header':  ['fg', 'CursorLineNr'],
      \  'gutter':  ['bg', 'Normal']
      \}

    " mistfly-statusline plugin
    highlight! link MistflyNormal MoonflyBlueMode
    highlight! link MistflyInsert MoonflyEmeraldMode
    highlight! link MistflyVisual MoonflyPurpleMode
    highlight! link MistflyCommand MoonflyYellowMode
    highlight! link MistflyReplace MoonflyCrimsonMode

    " Coc plugin
    highlight! link CocUnusedHighlight MoonflyGrey70
    exec 'highlight CocInlayHint guibg=' . s:grey11 . ' guifg=' . s:grey58

    " indentLine plugin
    if !exists('g:indentLine_defaultGroup') && !exists('g:indentLine_color_gui')
        let g:indentLine_color_gui = s:grey15
    endif
endfunction
