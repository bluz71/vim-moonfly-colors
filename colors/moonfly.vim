" Dark Vim/Neovim color scheme.
"
" Note: Inspiration taken from: monokai, sunburst xoria256 and One Dark themes.
"
" URL:          github.com/bluz71/vim-moonfly-colors
" License:      MIT (https://opensource.org/licenses/MIT)

let s:black       = "#080808"
let s:white       = "#c6c6c6"
let s:grey247     = "#9e9e9e"
let s:grey0       = "#373c40"
let s:grey237     = "#3a3a3a"
let s:grey236     = "#303030"
let s:grey235     = "#262626"
let s:grey234     = "#1c1c1c"
let s:grey233     = "#121212"
let s:wheat       = "#cfcfb0"
let s:khaki       = "#e3c78a"
let s:orange      = "#de935f"
let s:coral       = "#f09479"
let s:light_green = "#85dc85"
let s:green       = "#8cc85f"
let s:emerald     = "#42cf89"
let s:blue        = "#80a0ff"
let s:light_blue  = "#78c2ff"
let s:turquoise   = "#7ee0ce"
let s:purple      = "#ae81ff"
let s:violet      = "#e2637f"
let s:magenta     = "#ce76e8"
let s:crimson     = "#fe3b7b"
let s:red         = "#ff5454"

" For 256-color terminal colors.
"
" .Xdefaults/.Xresources need to be setup with the following definitions; then
" launch xterm via 'xterm -name xterm-moonfly':
"
" xterm-moonfly*color0: #373c40
" xterm-moonfly*color1: #ff5454
" xterm-moonfly*color2: #8cc85f
" xterm-moonfly*color3: #e3c78a
" xterm-moonfly*color4: #80a0ff
" xterm-moonfly*color5: #ce76e8
" xterm-moonfly*color6: #7ee0ce
" xterm-moonfly*color7: #de935f
" xterm-moonfly*color8: #f09479
" xterm-moonfly*color9: #fe3b7b
" xterm-moonfly*color10: #42cf89
" xterm-moonfly*color11: #cfcfb0
" xterm-moonfly*color12: #78c2ff
" xterm-moonfly*color13: #ae81ff
" xterm-moonfly*color14: #85dc85
" xterm-moonfly*color15: #e2637f
"
" black       = 232
" white       = 251
" grey247     = 247
" grey0       = 0
" grey237     = 237
" grey236     = 236
" grey235     = 235
" grey234     = 234
" grey233     = 233
" wheat       = 11
" khaki       = 3
" orange      = 7
" coral       = 8
" light_green = 14
" green       = 2
" emerald     = 10
" blue        = 4
" light_blue  = 12
" turquoise   = 6
" purple      = 13
" violet      = 15
" magenta     = 5
" crimson     = 9
" red         = 1


highlight clear
set background=dark
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="moonfly"

" By default highlight cursor line numbers in 'blue'.
" By default don't highlight spelling errors in reversed colors.
"
let g:moonflyCursorLineNr   = get(g:, "moonflyCursorLineNr", 1)
let g:moonflySpellReversed = get(g:, "moonflySpellReversed", 0)

" Background and text.
exec "highlight Normal ctermbg=232 guibg=" . s:black . "  ctermfg=251 guifg=" . s:white

" Color of mode text, -- INSERT --
exec "highlight ModeMsg ctermfg=247 guifg=" . s:grey247 . " gui=none"

" Comments.
exec "highlight Comment ctermfg=247 guifg=" . s:grey247

" Functions.
exec "highlight Function ctermfg=12 guifg=" . s:light_blue

" Strings.
exec "highlight String ctermfg=11 guifg=" . s:wheat

" Identifiers.
exec "highlight Identifier ctermfg=116 guifg=" . s:turquoise

" Color of titles, e.g in HTML files and Tagbar.
exec "highlight Title ctermfg=7 guifg=" . s:orange . " gui=none"

" const, static.
exec "highlight StorageClass ctermfg=8 guifg=" . s:coral

" void, intptr_t.
exec "highlight Type ctermfg=10 guifg=" . s:emerald . " gui=none"

" Numbers.
exec "highlight Constant ctermfg=13 guifg=" . s:purple

" ifdef/endif.
exec "highlight PreProc ctermfg=15 guifg=" . s:violet

" Status, split and tab lines.
exec "highlight StatusLine ctermbg=236 guibg=" . s:grey236 . " ctermfg=251 guifg=" . s:white . " cterm=none gui=none"
exec "highlight StatusLineNC ctermbg=236 guibg=" . s:grey236 . " ctermfg=247 guifg=" . s:grey247 . " cterm=none gui=none"
exec "highlight VertSplit ctermbg=236 guibg=" . s:grey236 . " ctermfg=236 guifg=" . s:grey236
exec "highlight Tabline ctermbg=236 guibg=" . s:grey236 . " ctermfg=247 guifg=" . s:grey247 . " cterm=none gui=none"
exec "highlight TablineSel ctermbg=236 guibg=" . s:grey236 . " ctermfg=4 guifg=" . s:blue . " cterm=none gui=none"
exec "highlight TablineFill ctermbg=236 guibg=" . s:grey236 . " ctermfg=236 guifg=" . s:grey236

" case in switch statement.
exec "highlight Label ctermfg=6 guifg=" . s:turquoise

" end-of-line '$', end-of-file '~'
exec "highlight NonText ctermfg=7 guifg=" . s:orange . " gui=none"

" sizeof
exec "highlight Operator ctermfg=15 guifg=" . s:violet

" for, while.
exec "highlight Repeat ctermfg=7 guifg=" . s:orange

" Search.
exec "highlight Search cterm=reverse gui=reverse ctermbg=bg guibg=bg ctermfg=2 guifg=" . s:green
exec "highlight IncSearch ctermbg=bg guibg=bg ctermfg=3 guifg=" . s:khaki

" '\n' sequences.
exec "highlight Special ctermfg=15 guifg=" . s:violet

" if, else.
exec "highlight Statement ctermfg=5 guifg=" . s:magenta . " gui=none"

" Visual selection.
exec "highlight Visual ctermbg=0 guibg=" . s:grey0
exec "highlight VisualNOS ctermbg=0 guibg=" . s:grey0 . " ctermfg=fg guifg=fg cterm=none gui=none"

" Exceptions.
exec "highlight Exception ctermfg=14 guifg=" . s:light_green

" Errors, warnings and whitespace-eol.
exec "highlight Error ctermbg=bg guibg=bg ctermfg=1 guifg=" . s:red
exec "highlight ErrorMsg ctermbg=bg guibg=bg ctermfg=1 guifg=" . s:red
exec "highlight WarningMsg ctermbg=bg guibg=bg ctermfg=7 guifg=" . s:orange

" struct, union, enum, typedef.
exec "highlight Structure ctermfg=10 guifg=" . s:emerald

" Auto-text-completion menu.
exec "highlight Pmenu ctermbg=236 guibg=" . s:grey236 . " ctermfg=fg guifg=fg"
exec "highlight PmenuSel ctermbg=2 guibg=" . s:green . " ctermfg=236 guifg=" . s:grey236
exec "highlight PmenuThumb ctermbg=3 guibg=" . s:khaki
exec "highlight WildMenu ctermbg=2 guibg=" . s:green . " ctermfg=236 guifg=" . s:grey236

" Spelling errors.
if g:moonflySpellReversed
    exec "highlight SpellBad ctermbg=1 guibg=" . s:red . " ctermfg=236 guifg=" . s:grey236 . " gui=none"
    exec "highlight SpellCap ctermbg=4 guibg=" . s:blue . " ctermfg=236 guifg=" . s:grey236 . " gui=none"
    exec "highlight SpellRare ctermbg=15 guibg=" . s:violet . " ctermfg=236 guifg=" . s:grey236 . " gui=none"
    exec "highlight SpellLocal ctermbg=12 guibg=" . s:light_blue . " ctermfg=236 guifg=" . s:grey236 . " gui=none"
else
    exec "highlight SpellBad ctermbg=bg guibg=bg cterm=undercurl gui=undercurl guisp=" . s:red
    exec "highlight SpellCap ctermbg=bg guibg=bg cterm=undercurl gui=undercurl guisp=" . s:blue
    exec "highlight SpellRare ctermbg=bg guibg=bg cterm=undercurl gui=undercurl guisp=" . s:violet
    exec "highlight SpellLocal ctermbg=bg guibg=bg cterm=undercurl gui=undercurl guisp=" . s:light_blue
endif

" Misc.
exec "highlight Question ctermfg=14 guifg=" . s:light_green . " gui=none"
exec "highlight MoreMsg ctermfg=1 guifg=" . s:red . " gui=none"
exec "highlight LineNr ctermbg=234 guibg=" . s:grey234 . " ctermfg=247 guifg=" . s:grey247
exec "highlight Cursor guifg=bg guibg=" . s:grey247
exec "highlight lCursor guifg=bg guibg=" . s:white
if g:moonflyCursorLineNr
    exec "highlight CursorLineNr ctermbg=234 guibg=" . s:grey234 . " ctermfg=4 guifg=" . s:blue . " gui=none"
else
    exec "highlight CursorLineNr ctermbg=234 guibg=" . s:grey234 . " ctermfg=247 guifg=" . s:grey247 . " gui=none"
endif
exec "highlight CursorLine ctermbg=234 guibg=" . s:grey234 . " cterm=none"
exec "highlight Folded ctermbg=234 guibg=" . s:grey234 . " ctermfg=14 guifg=". s:light_green
exec "highlight FoldColumn ctermbg=236 guibg=" . s:grey236 . " ctermfg=14 guifg=" . s:light_green
exec "highlight SignColumn ctermbg=236 guibg=" . s:grey236 . " ctermfg=14 guifg=" . s:light_green
exec "highlight Todo ctermbg=3 guibg=" . s:khaki . " ctermfg=bg guifg=bg"
exec "highlight SpecialKey ctermbg=bg guibg=bg ctermfg=12 guifg=" . s:light_blue
exec "highlight MatchParen ctermbg=bg guibg=bg ctermfg=9 guifg=" . s:crimson
exec "highlight Ignore ctermfg=12 guifg=" . s:light_blue
exec "highlight Underlined ctermfg=10 guifg=" . s:emerald . " cterm=none gui=none"
exec "highlight QuickFixLine ctermbg=237 guibg=" . s:grey237 . " cterm=none"

" Neovim only highlight groups.
exec "highlight Whitespace ctermfg=235 guifg=" . s:grey235
exec "highlight TermCursor ctermbg=247 guibg=" . s:grey247 . "  ctermfg=bg guifg=bg cterm=none gui=none"

" Color column (after line 80).
exec "highlight ColorColumn ctermbg=233 guibg=" . s:grey233

" For C/C++.
"
" goto, break, return, continue.
exec "highlight cStatement ctermfg=6 guifg=" . s:turquoise
" new, delete, this, using.
exec "highlight cppStatement ctermfg=9 guifg=" . s:crimson
" [static/const/dynamic]_cast.
exec "highlight cppCast ctermfg=10 guifg=" . s:emerald
" public, private.
exec "highlight cppAccess ctermfg=14 guifg=" . s:light_green
" operator.
exec "highlight cppOperator ctermfg=2 guifg=" . s:green
" inline, virtual, explicit, export, bool.
exec "highlight cppType ctermfg=3 guifg=" . s:khaki
" class, typename, template, namespace.
exec "highlight cppStructure ctermfg=4 guifg=" . s:blue
" true or false.
exec "highlight cppBoolean ctermfg=13 guifg=" . s:purple

" For shell scripts.
exec "highlight shStatement ctermfg=fg guifg=fg"
exec "highlight shCommandSub ctermfg=fg guifg=fg"
exec "highlight shSet ctermfg=14 guifg=" . s:light_green
exec "highlight shShellVariables ctermfg=8 guifg=" . s:coral
exec "highlight shVariable ctermfg=6 guifg=" . s:turquoise
exec "highlight shAlias ctermfg=6 guifg=" . s:turquoise
exec "highlight shSetList ctermfg=6 guifg=" . s:turquoise

" For Python.
exec "highlight pythonBuiltin ctermfg=4 guifg=" . s:blue
exec "highlight pythonException ctermfg=9 guifg=" . s:crimson
exec "highlight pythonRepeat ctermfg=7 guifg=" . s:orange
exec "highlight pythonStatement ctermfg=14 guifg=" s:light_green

" For Ruby.
exec "highlight erubyDelimiter ctermfg=9 guifg=" . s:crimson
exec "highlight rspecGroupMethods ctermfg=4 guifg=" . s:blue
exec "highlight rubyAccess ctermfg=3 guifg=" . s:khaki
exec "highlight rubyAttribute ctermfg=12 guifg=" . s:light_blue
exec "highlight rubyBlockParameter ctermfg=2 guifg=" . s:green
exec "highlight rubyBoolean ctermfg=6 guifg=" . s:turquoise
exec "highlight rubyClass ctermfg=7 guifg=" . s:orange
exec "highlight rubyControl ctermfg=8 guifg=" . s:coral
exec "highlight rubyDefine ctermfg=5 guifg=" . s:magenta
exec "highlight rubyException ctermfg=9 guifg=" . s:crimson
exec "highlight rubyExceptional ctermfg=8 guifg=" . s:coral
exec "highlight rubyInstanceVariable ctermfg=14 guifg=" . s:light_green
exec "highlight rubyModule ctermfg=4 guifg=" . s:blue
exec "highlight rubyPseudoVariable ctermfg=2 guifg=" . s:green
exec "highlight rubySharpBang ctermfg=247 guifg=" . s:grey247
exec "highlight rubyStringDelimiter ctermfg=11 guifg=" . s:wheat

" For Elixir.
exec "highlight eelixirDelimiter ctermfg=9 guifg=" . s:crimson
exec "highlight elixirBlockDefinition ctermfg=5 guifg=" . s:magenta
exec "highlight elixirBoolean ctermfg=6 guifg=" . s:turquoise
exec "highlight elixirDefine ctermfg=5 guifg=" . s:magenta
exec "highlight elixirDocTest ctermfg=247 guifg=" . s:grey247
exec "highlight elixirExUnitAssert ctermfg=14 guifg=" . s:light_green
exec "highlight elixirExUnitMacro ctermfg=12 guifg=" . s:light_blue
exec "highlight elixirKernelFunction ctermfg=2 guifg=" . s:green
exec "highlight elixirKeyword ctermfg=7 guifg=" . s:orange
exec "highlight elixirModuleDefine ctermfg=4 guifg=" . s:blue
exec "highlight elixirPrivateDefine ctermfg=5 guifg=" . s:magenta
exec "highlight elixirStringDelimiter ctermfg=11 guifg=" . s:wheat
exec "highlight elixirVariable ctermfg=8 guifg=" . s:coral

" For JavaScript 'pangloss/vim-javascript' plugin.
exec "highlight jsClassDefinition ctermfg=10 guifg=" . s:emerald
exec "highlight jsClassKeyword ctermfg=7 guifg=" . s:orange
exec "highlight jsFuncBlock ctermfg=12 guifg=" . s:light_blue
exec "highlight jsFuncCall ctermfg=12 guifg=" . s:light_blue
exec "highlight jsGlobalObjects ctermfg=10 guifg=" . s:emerald
exec "highlight jsObjectKey ctermfg=4 guifg=" . s:blue
exec "highlight jsObjectValue ctermfg=10 guifg=" . s:emerald
exec "highlight jsStorageClass ctermfg=14 guifg=" . s:light_green
exec "highlight jsTemplateExpression ctermfg=6 guifg=" . s:turquoise
exec "highlight jsThis ctermfg=2 guifg=" . s:green

" For CoffeeScript
exec "highlight coffeeBoolean ctermfg=3 guifg=" . s:khaki
exec "highlight coffeeException ctermfg=9 guifg=" . s:crimson
exec "highlight coffeeKeyword ctermfg=7 guifg=" . s:orange
exec "highlight coffeeSpecialIdent ctermfg=14 guifg=" . s:light_green
exec "highlight coffeeSpecialVar ctermfg=4 guifg=" . s:blue
exec "highlight coffeeStatement ctermfg=8 guifg=" . s:coral

" For Go.
exec "highlight goBuiltins ctermfg=9 guifg=" . s:crimson
exec "highlight goConditional ctermfg=5 guifg=" . s:magenta
exec "highlight goDeclaration ctermfg=14 guifg=" . s:light_green
exec "highlight goDeclType ctermfg=2 guifg=" . s:green
exec "highlight goDirective ctermfg=15 guifg=" . s:violet
exec "highlight goFloats ctermfg=13 guifg=" . s:purple
exec "highlight goFunction ctermfg=4 guifg=" . s:blue
exec "highlight goFunctionCall ctermfg=12 guifg=" . s:light_blue
exec "highlight goLabel ctermfg=3 guifg=" . s:khaki
exec "highlight goMethod ctermfg=12 guifg=" . s:light_blue
exec "highlight goMethodCall ctermfg=12 guifg=" . s:light_blue
exec "highlight goRepeat ctermfg=7 guifg=" . s:orange
exec "highlight goSignedInts ctermfg=13 guifg=" . s:purple
exec "highlight goStatement ctermfg=3 guifg=" . s:khaki
exec "highlight goStruct ctermfg=8 guifg=" . s:coral
exec "highlight goStructDef ctermfg=8 guifg=" . s:coral
exec "highlight goUnsignedInts ctermfg=13 guifg=" . s:purple

" For Rust.
exec "highlight rustCommentBlockDoc ctermfg=247 guifg=" . s:grey247
exec "highlight rustCommentLineDoc ctermfg=247 guifg=" . s:grey247
exec "highlight rustConstant ctermfg=7 guifg=" . s:orange
exec "highlight rustFuncName ctermfg=4 guifg=" . s:blue
exec "highlight rustKeyword ctermfg=14 guifg=" . s:light_green
exec "highlight rustLifetime ctermfg=2 guifg=" . s:green
exec "highlight rustMacro ctermfg=12 guifg=" . s:light_blue
exec "highlight rustSelf ctermfg=9 guifg=" . s:crimson
exec "highlight rustTrait ctermfg=10 guifg=" . s:emerald
exec "highlight rustType ctermfg=8 guifg=" . s:coral

" For Java.
exec "highlight javaBraces ctermfg=251 guifg=" . s:white
exec "highlight javaClassDecl ctermfg=10 guifg=" . s:emerald
exec "highlight javaCommentTitle ctermfg=247 guifg=" . s:grey247
exec "highlight javaConstant ctermfg=12 guifg=" . s:light_blue
exec "highlight javaDebug ctermfg=12 guifg=" . s:light_blue
exec "highlight javaMethodDecl ctermfg=3 guifg=" . s:khaki
exec "highlight javaOperator ctermfg=9 guifg=" . s:crimson
exec "highlight javaScopeDecl ctermfg=4 guifg=" . s:blue
exec "highlight javaStatement ctermfg=6 guifg=" . s:turquoise

" For HTML.
exec "highlight htmlArg ctermfg=12 guifg=" . s:light_blue
exec "highlight htmlBoldItalic ctermbg=232 guibg=" . s:black . "  ctermfg=8 guifg=" . s:coral " cterm=none gui=none"
exec "highlight htmlBoldUnderlineItalic ctermbg=232 guibg=" . s:black . "  ctermfg=8 guifg=" . s:coral
exec "highlight htmlItalic ctermbg=232 guibg=" . s:black . "  ctermfg=247 guifg=" . s:grey247 " cterm=none gui=none"
exec "highlight htmlLink ctermfg=2 guifg=" . s:green
exec "highlight htmlEndTag ctermfg=13 guifg=" . s:purple
exec "highlight htmlTag ctermfg=14 guifg=" . s:light_green
exec "highlight htmlTagN ctermfg=4 guifg=" . s:blue
exec "highlight htmlTagName ctermfg=4 guifg=" . s:blue
exec "highlight htmlUnderlineItalic ctermbg=232 guibg=" . s:black . "  ctermfg=247 guifg=" . s:grey247

" For XML.
exec "highlight xmlTag ctermfg=14 guifg=" . s:light_green
exec "highlight xmlTagName ctermfg=4 guifg=" . s:blue
exec "highlight xmlEndTag ctermfg=12 guifg=" . s:light_blue

" For Markdown 'plasticboy/vim-markdown' plugin.
exec "highlight mkdLineBreak ctermbg=bg guibg=bg"
exec "highlight mkdListItem ctermfg=4 guifg=" . s:blue
exec "highlight mkdURL ctermfg=13 guifg=" . s:purple

" For vimdiff.
exec "highlight DiffAdd ctermbg=10 guibg=" . s:emerald . " ctermfg=bg guifg=bg"
exec "highlight DiffChange ctermbg=236 guibg=" . s:grey236
exec "highlight DiffDelete ctermbg=236 guibg=" . s:grey236 . " ctermfg=251 guifg=fg gui=none"
exec "highlight DiffText ctermbg=4 guibg=" . s:blue . " ctermfg=bg guifg=bg gui=none"

" For vim files.
exec "highlight vimBracket ctermfg=12 guifg=" . s:light_blue
exec "highlight vimCommand ctermfg=7 guifg=" . s:orange
exec "highlight vimEnvvar ctermfg=3 guifg=" . s:khaki
exec "highlight vimFuncName ctermfg=4 guifg=" . s:blue
exec "highlight vimFuncSID ctermfg=12 guifg=" . s:light_blue
exec "highlight vimFunction ctermfg=12 guifg=" . s:light_blue
exec "highlight vimNotation ctermfg=12 guifg=" . s:light_blue
exec "highlight vimOption ctermfg=10 guifg=" . s:emerald
exec "highlight vimParenSep ctermfg=251 guifg=" . s:white
exec "highlight vimSep ctermfg=251 guifg=" . s:white
exec "highlight vimUserFunc ctermfg=12 guifg=" . s:light_blue

" For Tagbar.
exec "highlight TagbarFoldIcon ctermfg=247 guifg=" . s:grey247
exec "highlight TagbarVisibilityPublic ctermfg=14 guifg=" . s:light_green
exec "highlight TagbarVisibilityProtected ctermfg=14 guifg=" . s:light_green
exec "highlight TagbarVisibilityPrivate ctermfg=14 guifg=" . s:light_green
exec "highlight TagbarKind ctermfg=10 guifg=" . s:emerald

" For NERDTree.
exec "highlight NERDTreeClosable ctermfg=8 guifg=" . s:coral
exec "highlight NERDTreeCWD ctermfg=5 guifg=" . s:magenta
exec "highlight NERDTreeDir ctermfg=12 guifg=" . s:light_blue
exec "highlight NERDTreeDirSlash ctermfg=15 guifg=" . s:violet
exec "highlight NERDTreeExecFile ctermfg=11 guifg=" . s:wheat
exec "highlight NERDTreeGitStatusDirDirty ctermfg=13 guifg=" . s:purple
exec "highlight NERDTreeGitStatusRenamed ctermfg=3 guifg=" . s:khaki
exec "highlight NERDTreeHelp ctermfg=247 guifg=" . s:grey247
exec "highlight NERDTreeLinkDir ctermfg=4 guifg=" . s:blue
exec "highlight NERDTreeLinkFile ctermfg=4 guifg=" . s:blue
exec "highlight NERDTreeOpenable ctermfg=2 guifg=" . s:green
exec "highlight NERDTreePart ctermfg=0 guifg=" . s:grey0
exec "highlight NERDTreePartFile ctermfg=0 guifg=" . s:grey0
exec "highlight NERDTreeUp ctermfg=8 guifg=" . s:coral

" For Neomake.
exec "highlight NeomakeError ctermfg=1 guifg=" . s:red
exec "highlight NeomakeErrorSign ctermbg=236 guibg=" . s:grey236 . " ctermfg=1 guifg=" . s:red
exec "highlight NeomakeWarning ctermfg=3 guifg=" . s:khaki
exec "highlight NeomakeWarningSign ctermbg=236 guibg=" . s:grey236 . " ctermfg=3 guifg=" . s:khaki
exec "highlight NeomakeInfo ctermfg=7 guifg=" . s:orange
exec "highlight NeomakeInfoSign ctermbg=236 guibg=" . s:grey236 . " ctermfg=7 guifg=" . s:orange
exec "highlight NeomakeMessage ctermfg=13 guifg=" . s:purple
exec "highlight NeomakeMessageSign ctermbg=236 guibg=" . s:grey236 . " ctermfg=13 guifg=" . s:purple

" Misc.
exec "highlight bufExplorerHelp ctermfg=247 guifg=" . s:grey247
exec "highlight bufExplorerSortBy ctermfg=247 guifg=" . s:grey247
exec "highlight CleverFDefaultLabel ctermfg=9 guifg=" . s:crimson
exec "highlight CtrlPMatch ctermfg=13 guifg=" . s:purple
exec "highlight Directory ctermfg=10 guifg=" . s:emerald
exec "highlight jsonKeyword ctermfg=12 guifg=" . s:light_blue
exec "highlight netrwClassify ctermfg=15 guifg=" . s:violet
exec "highlight netrwDir ctermfg=12 guifg=" . s:light_blue
exec "highlight tagName ctermfg=6 guifg=" . s:turquoise
