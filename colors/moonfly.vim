" Dark Vim/Neovim color scheme.
"
" URL:     github.com/bluz71/vim-moonfly-colors
" License: MIT (https://opensource.org/licenses/MIT)

" Clear highlights and reset syntax.
highlight clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name='moonfly'

let g:moonflyCursorColor = get(g:, 'moonflyCursorColor', v:false)
let g:moonflyItalics = get(g:, 'moonflyItalics', v:true)
let g:moonflyNormalFloat = get(g:, 'moonflyNormalFloat', v:false)
let g:moonflyTerminalColors = get(g:, 'moonflyTerminalColors', v:true)
let g:moonflyTransparent = get(g:, 'moonflyTransparent', v:false)
let g:moonflyUndercurls = get(g:, 'moonflyUndercurls', v:true)
let g:moonflyUnderlineMatchParen = get(g:, 'moonflyUnderlineMatchParen', v:false)
let g:moonflyVirtualTextColor =  get(g:, 'moonflyVirtualTextColor', v:false)
let g:moonflyWinSeparator = get(g:, 'moonflyWinSeparator', 1)

" Background and foreground
let s:black     = '#080808'
let s:white     = '#c6c6c6'
" Variations of charcoal-grey
let s:grey0     = '#323437'
let s:grey1     = '#373c4d'
let s:grey254   = '#e4e4e4'
let s:grey249   = '#b2b2b2'
let s:grey247   = '#9e9e9e'
let s:grey246   = '#949494'
let s:grey244   = '#808080'
let s:grey241   = '#626262'
let s:grey239   = '#4e4e4e'
let s:grey238   = '#444444'
let s:grey237   = '#3a3a3a'
let s:grey236   = '#303030'
let s:grey235   = '#262626'
let s:grey234   = '#1c1c1c'
let s:grey233   = '#121212'
" Core theme colors
let s:khaki     = '#c2c292'
let s:yellow    = '#e3c78a'
let s:orange    = '#de935f'
let s:coral     = '#f09479'
let s:orchid    = '#e196a2'
let s:lime      = '#85dc85'
let s:green     = '#8cc85f'
let s:emerald   = '#36c692'
let s:blue      = '#80a0ff'
let s:sky       = '#74b2ff'
let s:turquoise = '#79dac8'
let s:purple    = '#ae81ff'
let s:cranberry = '#e65e72'
let s:violet    = '#cf87e8'
let s:crimson   = '#ff5189'
let s:red       = '#ff5454'
" Extra colors
let s:spring    = '#00875f'

" Specify the colors used by the inbuilt terminal of Neovim and Vim
if g:moonflyTerminalColors
    if has('nvim')
        let g:terminal_color_0  = s:grey0
        let g:terminal_color_1  = s:red
        let g:terminal_color_2  = s:green
        let g:terminal_color_3  = s:yellow
        let g:terminal_color_4  = s:blue
        let g:terminal_color_5  = s:violet
        let g:terminal_color_6  = s:turquoise
        let g:terminal_color_7  = s:white
        let g:terminal_color_8  = s:grey246
        let g:terminal_color_9  = s:crimson
        let g:terminal_color_10 = s:emerald
        let g:terminal_color_11 = s:khaki
        let g:terminal_color_12 = s:sky
        let g:terminal_color_13 = s:purple
        let g:terminal_color_14 = s:lime
        let g:terminal_color_15 = s:grey254
    else
        let g:terminal_ansi_colors = [
                    \ s:grey0, s:red, s:green, s:yellow,
                    \ s:blue, s:violet, s:turquoise, s:white,
                    \ s:grey246, s:crimson, s:emerald, s:khaki,
                    \ s:sky, s:purple, s:lime, s:grey254
                    \]
    endif
endif

" Background and text
if g:moonflyTransparent
    exec 'highlight Normal guibg=NONE guifg=' . s:white
else
    exec 'highlight Normal guibg=' . s:black . ' guifg=' . s:white
endif

" Custom moonfly highlight groups
exec 'highlight MoonflyReset guifg=fg'
exec 'highlight MoonflyVisual guibg=' . s:grey0
exec 'highlight MoonflyWhite guifg=' . s:white
exec 'highlight MoonflyGrey0 guifg=' . s:grey0
exec 'highlight MoonflyGrey254 guifg=' . s:grey254
exec 'highlight MoonflyGrey249 guifg=' . s:grey249
exec 'highlight MoonflyGrey247 guifg=' . s:grey247
exec 'highlight MoonflyGrey246 guifg=' . s:grey246
exec 'highlight MoonflyGrey241 guifg=' . s:grey241
exec 'highlight MoonflyGrey239 guifg=' . s:grey239
exec 'highlight MoonflyGrey238 guifg=' . s:grey238
exec 'highlight MoonflyGrey236 guifg=' . s:grey236
exec 'highlight MoonflyGrey235 guifg=' . s:grey235
exec 'highlight MoonflyKhaki guifg=' . s:khaki
exec 'highlight MoonflyYellow guifg=' . s:yellow
exec 'highlight MoonflyOrange guifg=' . s:orange
exec 'highlight MoonflyCoral guifg=' . s:coral
exec 'highlight MoonflyOrchid guifg=' . s:orchid
exec 'highlight MoonflyLime guifg=' . s:lime
exec 'highlight MoonflyGreen guifg=' . s:green
exec 'highlight MoonflyEmerald guifg=' . s:emerald
exec 'highlight MoonflyBlue guifg=' . s:blue
exec 'highlight MoonflySky guifg=' . s:sky
exec 'highlight MoonflyTurquoise guifg=' . s:turquoise
exec 'highlight MoonflyPurple guifg=' . s:purple
exec 'highlight MoonflyCranberry guifg=' . s:cranberry
exec 'highlight MoonflyViolet guifg=' . s:violet
exec 'highlight MoonflyCrimson guifg=' . s:crimson
exec 'highlight MoonflyRed guifg=' . s:red
" Misc helpers
exec 'highlight MoonflyWhiteAlert guibg=bg guifg=' . s:white
exec 'highlight MoonflyYellowAlert guibg=bg guifg=' . s:yellow
exec 'highlight MoonflyCoralAlert guibg=bg guifg=' . s:coral
exec 'highlight MoonflyEmeraldAlert guibg=bg guifg=' . s:emerald
exec 'highlight MoonflySkyAlert guibg=bg guifg=' . s:sky
exec 'highlight MoonflyRedAlert guibg=bg guifg=' . s:red
exec 'highlight MoonflyUnderline gui=underline'
exec 'highlight MoonflyNoCombine gui=nocombine'
" Statusline helper colors
exec 'highlight MoonflyBlueMode guibg=' . s:blue . ' guifg=' . s:grey234
exec 'highlight MoonflyEmeraldMode guibg=' . s:emerald . ' guifg=' . s:grey234
exec 'highlight MoonflyPurpleMode guibg=' . s:purple . ' guifg=' . s:grey234
exec 'highlight MoonflyCrimsonMode guibg=' . s:crimson . ' guifg=' . s:grey234
exec 'highlight MoonflyYellowMode guibg=' . s:yellow . ' guifg=' . s:grey234
exec 'highlight MoonflyTurquoiseMode guibg=' . s:turquoise . ' guifg=' . s:grey234
" Generic line helper colors
exec 'highlight MoonflyCrimsonLine guibg=' . s:grey236 . ' guifg=' . s:crimson
exec 'highlight MoonflyEmeraldLine guibg=' . s:grey236 . ' guifg=' . s:emerald
exec 'highlight MoonflyGrey246Line guibg=' . s:grey234 . ' guifg=' . s:grey246
exec 'highlight MoonflyYellowLine guibg=' . s:grey234 . ' guifg=' . s:yellow
exec 'highlight MoonflyBlueLineActive guibg=' . s:grey238 . ' guifg=' . s:blue
exec 'highlight MoonflyRedLineActive guibg=' . s:grey238 . ' guifg=' . s:red
exec 'highlight MoonflyWhiteLineActive guibg=' . s:grey238 . ' guifg=' . s:grey254
exec 'highlight MoonflyYellowLineActive guibg=' . s:grey238 . ' guifg=' . s:yellow
" Diagnostic helper colors
exec 'highlight MoonflyDiagnosticUndercurlError gui=undercurl guisp=' . s:red
exec 'highlight MoonflyDiagnosticUndercurlWarn gui=undercurl guisp=' . s:yellow
exec 'highlight MoonflyDiagnosticUndercurlInfo gui=undercurl guisp=' . s:sky
exec 'highlight MoonflyDiagnosticUndercurlHint gui=undercurl guisp=' . s:white
exec 'highlight MoonflyDiagnosticUnderlineError gui=underline guisp=' . s:red
exec 'highlight MoonflyDiagnosticUnderlineWarn gui=underline guisp=' . s:yellow
exec 'highlight MoonflyDiagnosticUnderlineInfo gui=underline guisp=' . s:sky
exec 'highlight MoonflyDiagnosticUnderlineHint gui=underline guisp=' . s:white
exec 'highlight MoonflyDiagnosticVirtualTextError guibg=' . s:grey234 . ' guifg=' . s:red
exec 'highlight MoonflyDiagnosticVirtualTextWarn guibg=' . s:grey234 . ' guifg=' . s:yellow
exec 'highlight MoonflyDiagnosticVirtualTextInfo guibg=' . s:grey234 . ' guifg=' . s:sky
exec 'highlight MoonflyDiagnosticVirtualTextHint guibg=' . s:grey234 . ' guifg=' . s:white

"-----------------------------------------------------------------------
" Core styling
"-----------------------------------------------------------------------

" Color of mode text, -- INSERT --
exec 'highlight ModeMsg guifg=' . s:grey247 . ' gui=none'

" Comments
if g:moonflyItalics
    exec 'highlight Comment guifg=' . s:grey246 . ' gui=italic'
else
    exec 'highlight Comment guifg=' . s:grey246
endif

" Functions
highlight! link Function MoonflySky

" Strings
highlight! link String MoonflyKhaki

" Booleans
highlight! link Boolean MoonflyCranberry

" Identifiers
exec 'highlight Identifier guifg=' . s:turquoise

" Color of titles
exec 'highlight Title guifg=' . s:orange . ' gui=none'

" const, static
highlight! link StorageClass MoonflyCoral

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
exec 'highlight NonText guifg=' . s:grey241 . ' gui=none'

" sizeof
highlight! link Operator MoonflyCranberry

" for, while
highlight! link Repeat MoonflyViolet

" Search
exec 'highlight Search cterm=none guibg=' . s:grey1 . ' guifg=' . s:grey254 . ' gui=none'
exec 'highlight CurSearch cterm=none guibg=' . s:coral . ' guifg=' . s:black . ' gui=none'
exec 'highlight IncSearch cterm=none guibg=' . s:yellow . ' guifg=' . s:black . ' gui=none'

" '\n' sequences
highlight! link Special MoonflyCranberry

" if, else
exec 'highlight Statement guifg=' . s:violet . ' gui=none'

" struct, union, enum, typedef
highlight! link Structure MoonflyBlue

" Status, split and tab lines
exec 'highlight StatusLine cterm=none guibg=' . s:grey236 . ' guifg=' . s:white . ' gui=none'
exec 'highlight StatusLineNC cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey247 . ' gui=none'
exec 'highlight Tabline cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey247 . ' gui=none'
exec 'highlight TablineSel cterm=none guibg=' . s:grey234 . ' guifg=' . s:blue . ' gui=none'
exec 'highlight TablineSelSymbol cterm=none guibg=' . s:grey234 . ' guifg=' . s:emerald . ' gui=none'
exec 'highlight TablineFill cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey236 . ' gui=none'
exec 'highlight StatusLineTerm cterm=none guibg=' . s:grey236 . ' guifg=' . s:white . ' gui=none'
exec 'highlight StatusLineTermNC cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey247 . ' gui=none'
if g:moonflyWinSeparator == 0
    exec 'highlight VertSplit cterm=none guibg=' . s:black . ' guifg=' . s:black . ' gui=none'
elseif g:moonflyWinSeparator == 1
    exec 'highlight VertSplit cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey236 . ' gui=none'
else
    exec 'highlight VertSplit guibg=NONE guifg=' . s:grey236 . ' gui=none'
end

" Visual selection
highlight! link Visual MoonflyVisual
exec 'highlight VisualNOS guibg=' . s:grey0 . ' guifg=fg gui=none'
exec 'highlight VisualInDiff guibg=' . s:grey0 . ' guifg=' . s:white

" Errors, warnings and whitespace-eol
exec 'highlight Error guibg=bg guifg=' . s:red
exec 'highlight ErrorMsg guibg=bg guifg=' . s:red
exec 'highlight WarningMsg guibg=bg guifg=' . s:orange

" Auto-text-completion menu
exec 'highlight Pmenu guibg=' . s:grey235 . ' guifg=fg'
exec 'highlight PmenuSel guibg=' . s:spring . ' guifg=' . s:grey254
exec 'highlight PmenuSbar guibg=' . s:grey235
exec 'highlight PmenuThumb guibg=' . s:grey244
exec 'highlight WildMenu guibg=' . s:spring . ' guifg=' . s:grey254

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
exec 'highlight LineNr guibg=bg guifg=' . s:grey241 . ' gui=none'
if g:moonflyCursorColor
    exec 'highlight Cursor guifg=bg guibg=' . s:blue
else
    exec 'highlight Cursor guifg=bg guibg=' . s:grey247
endif
exec 'highlight lCursor guifg=bg guibg=' . s:grey247
exec 'highlight CursorLineNr cterm=none guibg=' . s:grey234 . ' guifg=' . s:blue . ' gui=none'
exec 'highlight CursorColumn guibg=' . s:grey234
exec 'highlight CursorLine cterm=none guibg=' . s:grey234
exec 'highlight Folded guibg=' . s:grey234 . ' guifg='. s:lime
exec 'highlight FoldColumn guibg=' . s:grey236 . ' guifg=' . s:lime
exec 'highlight SignColumn guibg=bg guifg=' . s:lime
exec 'highlight Todo guibg=' . s:grey235 . ' guifg=' . s:yellow
exec 'highlight SpecialKey guibg=bg guifg=' . s:sky
if g:moonflyUnderlineMatchParen
    exec 'highlight MatchParen guibg=bg gui=underline'
else
    highlight! link MatchParen MoonflyVisual
endif
exec 'highlight Ignore guifg=' . s:sky
exec 'highlight Underlined guifg=' . s:emerald . ' gui=none'
exec 'highlight QuickFixLine guibg=' . s:grey237
highlight! link Delimiter MoonflyWhite
highlight! link qfFileName MoonflyEmerald

" Color column (after line 80)
exec 'highlight ColorColumn guibg=' . s:grey233

" Conceal color
exec 'highlight Conceal guibg=NONE guifg=' . s:grey249

" vimdiff/nvim -d
exec 'highlight DiffAdd guibg=' . s:emerald . ' guifg=' . s:black
exec 'highlight DiffChange guibg=' . s:grey236
exec 'highlight DiffDelete guibg=' . s:grey236 . ' guifg=' . s:grey241 ' gui=none'
exec 'highlight DiffText guibg=' . s:blue . ' guifg=' . s:black . ' gui=none'

" Neovim-only core highlight groups
if has('nvim-0.8')
    lua require("moonfly").core()
elseif has('nvim-0.7')
    exec 'highlight Whitespace guifg=' . s:grey0
    exec 'highlight TermCursor guibg=' . s:grey247 . ' guifg=bg gui=none'
    if g:moonflyNormalFloat
        exec 'highlight NormalFloat guibg=bg guifg=' . s:grey249
    else
        exec 'highlight NormalFloat guibg=' . s:grey234 . ' guifg=fg'
    endif
    exec 'highlight FloatBorder guibg=bg guifg=' . s:grey236
    highlight! link WinSeparator VertSplit

    " Neovim Treesitter
    highlight! link TSAnnotation MoonflyViolet
    highlight! link TSAttribute MoonflySky
    highlight! link TSConstant MoonflyTurquoise
    highlight! link TSConstBuiltin MoonflyGreen
    highlight! link TSConstMacro MoonflyViolet
    highlight! link TSConstructor MoonflyEmerald
    highlight! link TSDanger Todo
    highlight! link TSFuncBuiltin MoonflySky
    highlight! link TSFuncMacro MoonflySky
    highlight! link TSInclude MoonflyCranberry
    highlight! link TSKeywordOperator MoonflyViolet
    highlight! link TSNamespace MoonflyTurquoise
    highlight! link TSParameter MoonflyWhite
    highlight! link TSPunctSpecial MoonflyCranberry
    highlight! link TSSymbol MoonflyPurple
    highlight! link TSTag MoonflyBlue
    highlight! link TSTagDelimiter MoonflyLime
    highlight! link TSVariableBuiltin MoonflyLime
    " Language specific overrides.
    highlight! link bashTSParameter MoonflyTurquoise
    highlight! link cssTSPunctDelimiter MoonflyCranberry
    highlight! link cssTSType MoonflyBlue
    highlight! link scssTSPunctDelimiter MoonflyCranberry
    highlight! link scssTSType MoonflyBlue
    highlight! link scssTSVariable MoonflyTurquoise
    highlight! link vimTSVariable MoonflyTurquoise
    highlight! link vimTSVariableBuiltin MoonflyEmerald
    highlight! link yamlTSField MoonflySky
    highlight! link yamlTSPunctDelimiter MoonflyCranberry

    " Neovim Diagnostic
    highlight! link DiagnosticError MoonflyRed
    highlight! link DiagnosticWarn MoonflyYellow
    highlight! link DiagnosticInfo MoonflySky
    highlight! link DiagnosticHint MoonflyWhite
    if g:moonflyUndercurls
        highlight! link DiagnosticUnderlineError MoonflyDiagnosticUndercurlError
        highlight! link DiagnosticUnderlineWarn MoonflyDiagnosticUndercurlWarn
        highlight! link DiagnosticUnderlineInfo MoonflyDiagnosticUndercurlInfo
        highlight! link DiagnosticUnderlineHint MoonflyDiagnosticUndercurlHint
    else
        highlight! link DiagnosticUnderlineError MoonflyDiagnosticUnderlineError
        highlight! link DiagnosticUnderlineWarn MoonflyDiagnosticUnderlineWarn
        highlight! link DiagnosticUnderlineInfo MoonflyDiagnosticUnderlineInfo
        highlight! link DiagnosticUnderlineHint MoonflyDiagnosticUnderlineHint
    endif
    highlight! link DiagnosticVirtualTextError MoonflyGrey241
    highlight! link DiagnosticVirtualTextWarn MoonflyGrey241
    highlight! link DiagnosticVirtualTextInfo MoonflyGrey241
    highlight! link DiagnosticVirtualTextHint MoonflyGrey241
    highlight! link DiagnosticSignError MoonflyRedAlert
    highlight! link DiagnosticSignWarn MoonflyYellowAlert
    highlight! link DiagnosticSignInfo MoonflySkyAlert
    highlight! link DiagnosticSignHint MoonflyWhiteAlert
    highlight! link DiagnosticFloatingError MoonflyRed
    highlight! link DiagnosticFloatingWarn MoonflyYellow
    highlight! link DiagnosticFloatingInfo MoonflySky
    highlight! link DiagnosticFloatingHint MoonflyWhite
    highlight! link LspSignatureActiveParameter MoonflyVisual
endif

"-----------------------------------------------------------------------
" Language styling
"-----------------------------------------------------------------------

" Neovim 0.8 provides builtin Treesitter support for C, Lua and Vimscript.
" Likewise, common languages, such as C++, JavaScript, Python and others, now
" have mature Treesitter support via the nvim-treesitter plugin. Hence, only
" setup old-school regex highlight groups for Vim and Neovim versions prior to
" 0.8.
if !has('nvim-0.8')
    " C
    highlight! link cDefine MoonflyViolet
    highlight! link cPreCondit MoonflyViolet
    highlight! link cStatement MoonflyViolet
    highlight! link cStructure MoonflyCoral

    " C++
    highlight! link cppAccess MoonflyLime
    highlight! link cppCast MoonflyTurquoise
    highlight! link cppCustomClass MoonflyTurquoise
    highlight! link cppExceptions MoonflyLime
    highlight! link cppModifier MoonflyViolet
    highlight! link cppOperator MoonflyGreen
    highlight! link cppStatement MoonflyTurquoise
    highlight! link cppSTLconstant MoonflyBlue
    highlight! link cppSTLnamespace MoonflyBlue
    highlight! link cppStructure MoonflyViolet

    " C#
    highlight! link csModifier MoonflyLime
    highlight! link csPrecondit MoonflyViolet
    highlight! link csStorage MoonflyViolet
    highlight! link csXmlTag MoonflyBlue

    " Elixir
    highlight! link eelixirDelimiter MoonflyCrimson
    highlight! link elixirAtom MoonflyPurple
    highlight! link elixirBlockDefinition MoonflyViolet
    highlight! link elixirDefine MoonflyViolet
    highlight! link elixirDocTest MoonflyGrey247
    highlight! link elixirExUnitAssert MoonflyLime
    highlight! link elixirExUnitMacro MoonflySky
    highlight! link elixirKernelFunction MoonflyGreen
    highlight! link elixirKeyword MoonflyOrange
    highlight! link elixirModuleDefine MoonflyBlue
    highlight! link elixirPrivateDefine MoonflyViolet
    highlight! link elixirStringDelimiter MoonflyKhaki
    highlight! link elixirVariable MoonflyTurquoise

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
    highlight! link jsxTagName MoonflyBlue

    " Lua
    highlight! link luaBraces MoonflyCranberry
    highlight! link luaBuiltin MoonflyGreen
    highlight! link luaFuncCall MoonflySky
    highlight! link luaSpecialTable MoonflySky

    " Python
    highlight! link pythonBuiltin MoonflyBlue
    highlight! link pythonClassVar MoonflyGreen
    highlight! link pythonCoding MoonflySky
    highlight! link pythonImport MoonflyCranberry
    highlight! link pythonOperator MoonflyViolet
    highlight! link pythonRun MoonflySky
    highlight! link pythonStatement MoonflyViolet

    " Ruby
    highlight! link rubyAccess MoonflyYellow
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
    highlight! link rubyPseudoVariable MoonflyGreen
    highlight! link rubyResponse MoonflySky
    highlight! link rubyRoute MoonflySky
    highlight! link rubySharpBang MoonflyGrey247
    highlight! link rubyStringDelimiter MoonflyKhaki
    highlight! link rubySymbol MoonflyPurple

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
    highlight! link rustModPath MoonflyBlue
    highlight! link rustObsoleteExternMod MoonflyCranberry
    highlight! link rustObsoleteStorage MoonflyCranberry
    highlight! link rustReservedKeyword MoonflyCranberry
    highlight! link rustSelf MoonflyTurquoise
    highlight! link rustSigil MoonflyTurquoise
    highlight! link rustStorage MoonflyViolet
    highlight! link rustStructure MoonflyViolet
    highlight! link rustTrait MoonflyEmerald
    highlight! link rustType MoonflyEmerald

    " Scala (note, link highlighting does not work, I don't know why)
    exec 'highlight scalaCapitalWord guifg=' . s:blue
    exec 'highlight scalaCommentCodeBlock guifg=' . s:grey247
    exec 'highlight scalaInstanceDeclaration guifg=' . s:turquoise
    exec 'highlight scalaKeywordModifier guifg=' . s:lime
    exec 'highlight scalaSpecial guifg=' . s:crimson

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
    highlight! link vimCommand MoonflyViolet
    highlight! link vimCommentTitle MoonflyViolet
    highlight! link vimEnvvar MoonflyCrimson
    highlight! link vimFuncName MoonflySky
    highlight! link vimFuncSID MoonflySky
    highlight! link vimFunction MoonflySky
    highlight! link vimHighlight MoonflySky
    highlight! link vimNotFunc MoonflyViolet
    highlight! link vimNotation MoonflySky
    highlight! link vimOption MoonflyTurquoise
    highlight! link vimParenSep MoonflyWhite
    highlight! link vimSep MoonflyWhite
    highlight! link vimUserFunc MoonflySky
endif

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
highlight! link crystalStringDelimiter MoonflyKhaki
highlight! link crystalSymbol MoonflyPurple

" CSS/SCSS
highlight! link cssAtRule MoonflyViolet
highlight! link cssAttr MoonflyTurquoise
highlight! link cssBraces MoonflyReset
highlight! link cssClassName MoonflyEmerald
highlight! link cssClassNameDot MoonflyViolet
highlight! link cssColor MoonflyTurquoise
highlight! link cssIdentifier MoonflySky
highlight! link cssProp MoonflyTurquoise
highlight! link cssTagName MoonflyBlue
highlight! link cssUnitDecorators MoonflyKhaki
highlight! link cssValueLength MoonflyPurple
highlight! link cssValueNumber MoonflyPurple
highlight! link sassId MoonflyBlue
highlight! link sassIdChar MoonflyViolet
highlight! link sassMedia MoonflyViolet
highlight! link scssSelectorName MoonflyBlue

" Dart
highlight! link dartMetadata MoonflyLime
highlight! link dartStorageClass MoonflyViolet
highlight! link dartTypedef MoonflyViolet

" Elm
highlight! link elmLetBlockDefinition MoonflyLime
highlight! link elmTopLevelDecl MoonflyCoral
highlight! link elmType MoonflySky

" Haskell
highlight! link haskellDecl MoonflyOrange
highlight! link haskellDeclKeyword MoonflyOrange
highlight! link haskellIdentifier MoonflyTurquoise
highlight! link haskellLet MoonflySky
highlight! link haskellOperators MoonflyCranberry
highlight! link haskellType MoonflySky
highlight! link haskellWhere MoonflyViolet

" HTML
highlight! link htmlArg MoonflyTurquoise
highlight! link htmlLink MoonflyGreen
highlight! link htmlH1 MoonflyCranberry
highlight! link htmlH2 MoonflyOrange
highlight! link htmlEndTag MoonflyPurple
highlight! link htmlTag MoonflyLime
highlight! link htmlTagN MoonflyBlue
highlight! link htmlTagName MoonflyBlue
highlight! link htmlUnderline MoonflyWhite
if g:moonflyItalics
    exec 'highlight htmlBoldItalic guibg=' . s:black . ' guifg=' . s:coral . ' gui=italic'
    exec 'highlight htmlBoldUnderlineItalic guibg=' . s:black . ' guifg=' . s:coral . ' gui=italic'
    exec 'highlight htmlItalic guifg=' . s:grey247 . ' gui=italic'
    exec 'highlight htmlUnderlineItalic guibg=' . s:black . ' guifg=' . s:grey247 . ' gui=italic'
else
    exec 'highlight htmlBoldItalic guibg=' . s:black . ' guifg=' . s:coral ' gui=none'
    exec 'highlight htmlBoldUnderlineItalic guibg=' . s:black . ' guifg=' . s:coral
    exec 'highlight htmlItalic guifg=' . s:grey247 ' gui=none'
    exec 'highlight htmlUnderlineItalic guibg=' . s:black . ' guifg=' . s:grey247
endif

" Markdown, 'tpope/vim-markdown' plugin
highlight! link markdownBold MoonflyYellow
highlight! link markdownCode MoonflyKhaki
highlight! link markdownCodeDelimiter MoonflyKhaki
highlight! link markdownError NormalNC
highlight! link markdownH1 MoonflyOrange
highlight! link markdownHeadingRule MoonflyBlue
highlight! link markdownItalic MoonflyViolet
highlight! link markdownUrl MoonflyPurple

" Markdown, 'plasticboy/vim-markdown' plugin
highlight! link mkdDelimiter MoonflyWhite
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

" Shell scripts
highlight! link shAlias MoonflyTurquoise
highlight! link shCommandSub MoonflyReset
highlight! link shLoop MoonflyViolet
highlight! link shSetList MoonflyTurquoise
highlight! link shShellVariables MoonflyLime
highlight! link shVariable MoonflyTurquoise

" XML
highlight! link xmlAttrib MoonflyLime
highlight! link xmlEndTag MoonflyBlue
highlight! link xmlTag MoonflyLime
highlight! link xmlTagName MoonflyBlue

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
highlight! link TagbarFoldIcon MoonflyGrey247
highlight! link TagbarVisibilityPublic MoonflyLime
highlight! link TagbarVisibilityProtected MoonflyLime
highlight! link TagbarVisibilityPrivate MoonflyLime
highlight! link TagbarKind MoonflyEmerald

" NERDTree plugin
highlight! link NERDTreeClosable MoonflyGrey247
highlight! link NERDTreeCWD MoonflyPurple
highlight! link NERDTreeDir MoonflySky
highlight! link NERDTreeDirSlash MoonflyCranberry
highlight! link NERDTreeExecFile MoonflyKhaki
highlight! link NERDTreeFile MoonflyWhite
highlight! link NERDTreeHelp MoonflyGrey247
highlight! link NERDTreeLinkDir MoonflyBlue
highlight! link NERDTreeLinkFile MoonflyBlue
highlight! link NERDTreeLinkTarget MoonflyTurquoise
highlight! link NERDTreeOpenable MoonflyGrey247
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
highlight! link FernBranchSymbol MoonflyGrey241
highlight! link FernLeafSymbol MoonflyBlue
highlight! link FernLeaderSymbol MoonflyGrey239
highlight! link FernBranchText MoonflyBlue
highlight! link FernMarkedLine MoonflyVisual
highlight! link FernMarkedText MoonflyCrimson
highlight! link FernRootSymbol MoonflyPurple
highlight! link FernRootText MoonflyPurple

" fern-git-status.vim plugin
highlight! link FernGitStatusBracket MoonflyGrey246
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
highlight! link bufExplorerHelp MoonflyGrey247
highlight! link bufExplorerSortBy MoonflyGrey247
highlight! link CleverFDefaultLabel MoonflyCrimson
highlight! link CtrlPMatch MoonflyCoral
highlight! link Directory MoonflyBlue
highlight! link erubyDelimiter MoonflyCrimson
highlight! link helpHeadline MoonflyBlue
highlight! link helpSectionDelim MoonflyBlue
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
highlight! link ALEWarningSign MoonflyYellowAlert
highlight! link ALEErrorSign MoonflyRedAlert
highlight! link ALEInfoSign MoonflySkyAlert
if g:moonflyVirtualTextColor
    highlight! link ALEVirtualTextError MoonflyDiagnosticVirtualTextError
    highlight! link ALEVirtualTextWarning MoonflyDiagnosticVirtualTextWarn
    highlight! link ALEVirtualTextInfo MoonflyDiagnosticVirtualTextInfo
else
    highlight! link ALEVirtualTextError MoonflyGrey241
    highlight! link ALEVirtualTextWarning MoonflyGrey241
    highlight! link ALEVirtualTextInfo MoonflyGrey241
endif

" GitGutter plugin
highlight! link GitGutterAdd MoonflyEmeraldAlert
highlight! link GitGutterChange MoonflySkyAlert
highlight! link GitGutterChangeDelete MoonflyCoralAlert
highlight! link GitGutterDelete MoonflyRedAlert

" Signify plugin
highlight! link SignifySignAdd MoonflyEmeraldAlert
highlight! link SignifySignChange MoonflySkyAlert
highlight! link SignifySignChangeDelete MoonflyCoralAlert
highlight! link SignifySignDelete MoonflyRedAlert

" FZF plugin
exec 'highlight fzf1 guifg=' . s:crimson . ' guibg=' . s:grey236
exec 'highlight fzf2 guifg=' . s:blue . ' guibg=' . s:grey236
exec 'highlight fzf3 guifg=' . s:emerald . ' guibg=' . s:grey236
exec 'highlight fzfNormal guifg=' . s:grey249
exec 'highlight fzfFgPlus guifg=' . s:grey254
exec 'highlight fzfBorder guifg=' . s:grey236
exec 'highlight fzfSubstring guifg=' . s:coral
let g:fzf_colors = {
  \  'fg':      ['fg', 'fzfNormal'],
  \  'bg':      ['bg', 'Normal'],
  \  'hl':      ['fg', 'fzfSubstring'],
  \  'fg+':     ['fg', 'fzfFgPlus'],
  \  'bg+':     ['bg', 'Pmenu'],
  \  'hl+':     ['fg', 'fzfSubstring'],
  \  'info':    ['fg', 'String'],
  \  'border':  ['fg', 'fzfBorder'],
  \  'prompt':  ['fg', 'fzf2'],
  \  'pointer': ['fg', 'Exception'],
  \  'marker':  ['fg', 'StorageClass'],
  \  'spinner': ['fg', 'Type'],
  \  'header':  ['fg', 'CursorLineNr']
  \}

" mistfly-statusline plugin
highlight! link MistflyNormal MoonflyBlueMode
highlight! link MistflyInsert MoonflyEmeraldMode
highlight! link MistflyVisual MoonflyPurpleMode
highlight! link MistflyCommand MoonflyYellowMode
highlight! link MistflyReplace MoonflyCrimsonMode

" Coc plugin (see issue: https://github.com/bluz71/vim-nightfly-colors/issues/31)
highlight! link CocUnusedHighlight MoonflyGrey249

" indentLine plugin
if !exists('g:indentLine_defaultGroup') && !exists('g:indentLine_color_gui')
    let g:indentLine_color_gui = s:grey235
endif

" Neovim only plugins
if has('nvim-0.7')
    lua require("moonfly").plugins()
elseif has('nvim-0.6')
    " Neo-tree plugin
    highlight! link NeoTreeDimText MoonflyGrey239
    highlight! link NeoTreeDotfile MoonflyGrey236
    highlight! link NeoTreeGitAdded MoonflyGreen
    highlight! link NeoTreeGitConflict MoonflyCrimson
    highlight! link NeoTreeGitModified MoonflyYellow
    highlight! link NeoTreeGitUntracked MoonflyGrey241
    highlight! link NeoTreeMessage MoonflyGrey247
    highlight! link NeoTreeModified MoonflyYellow
    highlight! link NeoTreeRootName MoonflyPurple

    " Hop plugin
    highlight! link HopCursor IncSearch
    highlight! link HopNextKey MoonflyYellow
    highlight! link HopNextKey1 MoonflyBlue
    highlight! link HopNextKey2 MoonflyCrimson
    highlight! link HopUnmatched MoonflyGrey247

    " nvim-cmp plugin
    highlight! link CmpItemAbbrMatch MoonflyYellow
    highlight! link CmpItemAbbrMatchFuzzy MoonflyCoral
    highlight! link CmpItemKind MoonflyWhite
    highlight! link CmpItemKindClass MoonflyEmerald
    highlight! link CmpItemKindColor MoonflyTurquoise
    highlight! link CmpItemKindConstant MoonflyPurple
    highlight! link CmpItemKindConstructor MoonflySky
    highlight! link CmpItemKindEnum MoonflyViolet
    highlight! link CmpItemKindEnumMember MoonflyTurquoise
    highlight! link CmpItemKindEvent MoonflyViolet
    highlight! link CmpItemKindField MoonflyTurquoise
    highlight! link CmpItemKindFile MoonflyBlue
    highlight! link CmpItemKindFolder MoonflyBlue
    highlight! link CmpItemKindFunction MoonflySky
    highlight! link CmpItemKindInterface MoonflyEmerald
    highlight! link CmpItemKindKeyword MoonflyViolet
    highlight! link CmpItemKindMethod MoonflySky
    highlight! link CmpItemKindModule MoonflyEmerald
    highlight! link CmpItemKindOperator MoonflyViolet
    highlight! link CmpItemKindProperty MoonflyTurquoise
    highlight! link CmpItemKindReference MoonflyTurquoise
    highlight! link CmpItemKindSnippet MoonflyGreen
    highlight! link CmpItemKindStruct MoonflyEmerald
    highlight! link CmpItemKindText MoonflyGrey249
    highlight! link CmpItemKindTypeParameter MoonflyEmerald
    highlight! link CmpItemKindUnit MoonflyTurquoise
    highlight! link CmpItemKindValue MoonflyTurquoise
    highlight! link CmpItemKindVariable MoonflyTurquoise
    highlight! link CmpItemMenu MoonflyGrey247

    " Indent Blankline plugin
    exec 'highlight IndentBlanklineChar guifg=' . s:grey235 . ' gui=nocombine'
    exec 'highlight IndentBlanklineSpaceChar guifg=' . s:grey235 . ' gui=nocombine'
    exec 'highlight IndentBlanklineSpaceCharBlankline guifg=' . s:grey235 . ' gui=nocombine'
endif

set background=dark
