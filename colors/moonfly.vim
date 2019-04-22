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

" By default highlight cursor line numbers in 'blue'.
" By default don't color the cursor.
" By default use the moonfly color palette in the `:terminal`.
" By default don't underline matching parentheses.
let g:moonflyCursorLineNr        = get(g:, "moonflyCursorLineNr", 1)
let g:moonflyCursorColor         = get(g:, "moonflyCursorColor", 0)
let g:moonflyTerminalColors      = get(g:, "moonflyTerminalColors", 1)
let g:moonflyUnderlineMatchParen = get(g:, "moonflyUnderlineMatchParen", 0)

let s:black       = "#080808" " black       = 232
let s:white       = "#c6c6c6" " white       = 251
let s:grey0       = "#373c40" " grey0       = 0
let s:grey249     = "#b2b2b2" " grey249     = 249
let s:grey247     = "#9e9e9e" " grey247     = 247
let s:grey244     = "#808080" " grey244     = 244
let s:grey237     = "#3a3a3a" " grey237     = 237
let s:grey236     = "#303030" " grey236     = 236
let s:grey235     = "#262626" " grey235     = 235
let s:grey234     = "#1c1c1c" " grey234     = 234
let s:grey233     = "#121212" " grey233     = 233
let s:wheat       = "#cfcfb0" " wheat       = 11
let s:khaki       = "#e3c78a" " khaki       = 3
let s:orange      = "#de935f" " orange      = 7
let s:coral       = "#f09479" " coral       = 8
let s:light_green = "#85dc85" " light_green = 14
let s:green       = "#8cc85f" " green       = 2
let s:emerald     = "#42cf89" " emerald     = 10
let s:blue        = "#80a0ff" " blue        = 4
let s:blue111     = "#87afff" " blue111     = 111
let s:light_blue  = "#78c2ff" " light_blue  = 12
let s:turquoise   = "#7ee0ce" " turquoise   = 6
let s:purple      = "#ae81ff" " purple      = 13
let s:violet      = "#e2637f" " violet      = 15
let s:magenta     = "#ce76e8" " magenta     = 5
let s:crimson     = "#f74782" " crimson     = 9
let s:red         = "#ff5454" " red         = 1

" Specify the the colors used by the inbuilt terminal of Neovim and Vim.
if g:moonflyTerminalColors
    if has("nvim")
        let g:terminal_color_0  = "#373c40"
        let g:terminal_color_1  = "#ff5454"
        let g:terminal_color_2  = "#8cc85f"
        let g:terminal_color_3  = "#e3c78a"
        let g:terminal_color_4  = "#80a0ff"
        let g:terminal_color_5  = "#ce76e8"
        let g:terminal_color_6  = "#7ee0ce"
        let g:terminal_color_7  = "#de935f"
        let g:terminal_color_8  = "#f09479"
        let g:terminal_color_9  = "#f74782"
        let g:terminal_color_10 = "#42cf89"
        let g:terminal_color_11 = "#cfcfb0"
        let g:terminal_color_12 = "#78c2ff"
        let g:terminal_color_13 = "#ae81ff"
        let g:terminal_color_14 = "#85dc85"
        let g:terminal_color_15 = "#e2637f"
    else
        let g:terminal_ansi_colors = [
                    \ "#373c40", "#ff5454", "#8cc85f", "#e3c78a",
                    \ "#80a0ff", "#ce76e8", "#7ee0ce", "#de935f",
                    \ "#f09479", "#f74782", "#42cf89", "#cfcfb0",
                    \ "#78c2ff", "#ae81ff", "#85dc85", "#e2637f"
                    \]
    endif
endif

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

" Booleans.
exec "highlight Boolean ctermfg=6 guifg=" . s:turquoise

" Identifiers.
exec "highlight Identifier ctermfg=6 guifg=" . s:turquoise . " cterm=none"

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
exec "highlight PreProc ctermfg=15 guifg=" . s:violet

" Status, split and tab lines.
exec "highlight StatusLine ctermbg=236 guibg=" . s:grey236 . " ctermfg=251 guifg=" . s:white . " cterm=none gui=none"
exec "highlight StatusLineNC ctermbg=236 guibg=" . s:grey236 . " ctermfg=247 guifg=" . s:grey247 . " cterm=none gui=none"
exec "highlight VertSplit ctermbg=236 guibg=" . s:grey236 . " ctermfg=236 guifg=" . s:grey236
exec "highlight Tabline ctermbg=236 guibg=" . s:grey236 . " ctermfg=247 guifg=" . s:grey247 . " cterm=none gui=none"
exec "highlight TablineSel ctermbg=236 guibg=" . s:grey236 . " ctermfg=4 guifg=" . s:blue . " cterm=none gui=none"
exec "highlight TablineFill ctermbg=236 guibg=" . s:grey236 . " ctermfg=236 guifg=" . s:grey236
exec "highlight StatusLineTerm ctermbg=236 guibg=" . s:grey236 . " ctermfg=251 guifg=" . s:white . " cterm=none gui=none"
exec "highlight StatusLineTermNC ctermbg=236 guibg=" . s:grey236 . " ctermfg=247 guifg=" . s:grey247 . " cterm=none gui=none"

" case in switch statement.
exec "highlight Label ctermfg=6 guifg=" . s:turquoise

" end-of-line '$', end-of-file '~'
exec "highlight NonText ctermfg=7 guifg=" . s:orange . " gui=none"

" sizeof
exec "highlight Operator ctermfg=15 guifg=" . s:violet

" for, while.
exec "highlight Repeat ctermfg=7 guifg=" . s:orange

" Search.
exec "highlight Search cterm=reverse gui=reverse ctermbg=bg guibg=bg ctermfg=8 guifg=" . s:coral
exec "highlight IncSearch ctermbg=bg guibg=bg ctermfg=3 guifg=" . s:khaki

" '\n' sequences.
exec "highlight Special ctermfg=15 guifg=" . s:violet

" if, else.
exec "highlight Statement ctermfg=5 guifg=" . s:magenta . " gui=none"

" Visual selection.
exec "highlight Visual ctermbg=0 guibg=" . s:grey0
exec "highlight VisualNOS ctermbg=0 guibg=" . s:grey0 . " ctermfg=fg guifg=fg cterm=none gui=none"
exec "highlight VisualInDiff ctermbg=0 guibg=" . s:grey0 . " ctermfg=251 guifg=" . s:white

" Errors, warnings and whitespace-eol.
exec "highlight Error ctermbg=bg guibg=bg ctermfg=1 guifg=" . s:red
exec "highlight ErrorMsg ctermbg=bg guibg=bg ctermfg=1 guifg=" . s:red
exec "highlight WarningMsg ctermbg=bg guibg=bg ctermfg=7 guifg=" . s:orange

" struct, union, enum, typedef.
exec "highlight Structure ctermfg=4 guifg=" . s:blue

" Auto-text-completion menu.
exec "highlight Pmenu ctermbg=236 guibg=" . s:grey236 . " ctermfg=fg guifg=fg"
exec "highlight PmenuSel ctermbg=2 guibg=" . s:green . " ctermfg=236 guifg=" . s:grey236
exec "highlight PmenuSbar ctermbg=236 guibg=" . s:grey236
exec "highlight PmenuThumb ctermbg=244 guibg=" . s:grey244
exec "highlight WildMenu ctermbg=2 guibg=" . s:green . " ctermfg=236 guifg=" . s:grey236

" Spelling errors.
exec "highlight SpellBad ctermbg=bg ctermfg=1 cterm=underline guibg=bg guifg=" . s:red . " gui=underline guisp=" . s:red
exec "highlight SpellCap ctermbg=bg ctermfg=4 cterm=underline guibg=bg guifg=" . s:blue . " gui=underline guisp=" . s:blue
exec "highlight SpellRare ctermbg=bg ctermfg=15 cterm=underline guibg=bg guifg=" . s:violet . " gui=underline guisp=" . s:violet
exec "highlight SpellLocal ctermbg=bg ctermfg=12 cterm=underline guibg=bg guifg=" . s:light_blue . " gui=underline guisp=" . s:light_blue

" Misc.
exec "highlight Question ctermfg=14 guifg=" . s:light_green . " gui=none"
exec "highlight MoreMsg ctermfg=1 guifg=" . s:red . " gui=none"
exec "highlight LineNr ctermbg=234 guibg=" . s:grey234 . " ctermfg=247 guifg=" . s:grey247
if g:moonflyCursorColor
    exec "highlight Cursor ctermfg=bg ctermbg=4 guifg=bg guibg=" . s:blue
else
    exec "highlight Cursor ctermfg=bg ctermbg=247 guifg=bg guibg=" . s:grey247
endif
exec "highlight lCursor ctermfg=bg ctermbg=247 guifg=bg guibg=" . s:grey247
if g:moonflyCursorLineNr
    exec "highlight CursorLineNr ctermbg=234 guibg=" . s:grey234 . " ctermfg=4 guifg=" . s:blue . " gui=none"
else
    exec "highlight CursorLineNr ctermbg=234 guibg=" . s:grey234 . " ctermfg=247 guifg=" . s:grey247 . " gui=none"
endif
exec "highlight CursorColumn ctermbg=234 guibg=" . s:grey234 . " cterm=none"
exec "highlight CursorLine ctermbg=234 guibg=" . s:grey234 . " cterm=none"
exec "highlight Folded ctermbg=234 guibg=" . s:grey234 . " ctermfg=14 guifg=". s:light_green
exec "highlight FoldColumn ctermbg=236 guibg=" . s:grey236 . " ctermfg=14 guifg=" . s:light_green
exec "highlight SignColumn ctermbg=236 guibg=" . s:grey236 . " ctermfg=14 guifg=" . s:light_green
exec "highlight Todo ctermbg=3 guibg=" . s:khaki . " ctermfg=bg guifg=bg"
exec "highlight SpecialKey ctermbg=bg guibg=bg ctermfg=12 guifg=" . s:light_blue
if g:moonflyUnderlineMatchParen
    exec "highlight MatchParen ctermbg=bg guibg=bg ctermfg=9 guifg=" . s:crimson . " cterm=underline gui=underline"
else
    exec "highlight MatchParen ctermbg=bg guibg=bg ctermfg=9 guifg=" . s:crimson
endif
exec "highlight Ignore ctermfg=12 guifg=" . s:light_blue
exec "highlight Underlined ctermfg=10 guifg=" . s:emerald . " cterm=none gui=none"
exec "highlight QuickFixLine ctermbg=237 guibg=" . s:grey237 . " cterm=none"
exec "highlight Delimiter ctermfg=11 guifg=" . s:wheat

" Neovim only highlight groups.
exec "highlight Whitespace ctermfg=235 guifg=" . s:grey235
exec "highlight TermCursor ctermbg=247 guibg=" . s:grey247 . "  ctermfg=bg guifg=bg cterm=none gui=none"

" Color column (after line 80).
exec "highlight ColorColumn ctermbg=233 guibg=" . s:grey233

" Conceal color, as used by indentLine plugin.
exec "highlight Conceal ctermbg=bg guibg=bg ctermfg=235 guifg=" . s:grey235

" C/C++
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
" struct, union, enum, typedef.
exec "highlight cStructure ctermfg=10 guifg=" . s:emerald
" true or false.
exec "highlight cppBoolean ctermfg=13 guifg=" . s:purple
" throw, try, catch
exec "highlight cppExceptions ctermfg=14 guifg=" . s:light_green

" Shell scripts
exec "highlight shStatement ctermfg=fg guifg=fg"
exec "highlight shCommandSub ctermfg=fg guifg=fg"
exec "highlight shSet ctermfg=14 guifg=" . s:light_green
exec "highlight shShellVariables ctermfg=8 guifg=" . s:coral
exec "highlight shVariable ctermfg=6 guifg=" . s:turquoise
exec "highlight shAlias ctermfg=6 guifg=" . s:turquoise
exec "highlight shSetList ctermfg=6 guifg=" . s:turquoise

" Python
exec "highlight pythonBuiltin ctermfg=4 guifg=" . s:blue
exec "highlight pythonClassVar ctermfg=2 guifg=" . s:green
exec "highlight pythonCoding ctermfg=12 guifg=" . s:light_blue
exec "highlight pythonImport ctermfg=15 guifg=" . s:violet
exec "highlight pythonOperator ctermfg=5 guifg=" . s:magenta
exec "highlight pythonRepeat ctermfg=7 guifg=" . s:orange
exec "highlight pythonRun ctermfg=12 guifg=" . s:light_blue
exec "highlight pythonStatement ctermfg=5 guifg=" s:magenta

" Ruby
exec "highlight erubyDelimiter ctermfg=9 guifg=" . s:crimson
exec "highlight rspecGroupMethods ctermfg=4 guifg=" . s:blue
exec "highlight rubyAccess ctermfg=3 guifg=" . s:khaki
exec "highlight rubyAttribute ctermfg=12 guifg=" . s:light_blue
exec "highlight rubyBlockParameter ctermfg=2 guifg=" . s:green
exec "highlight rubyCallback ctermfg=12 guifg=" . s:light_blue
exec "highlight rubyClass ctermfg=7 guifg=" . s:orange
exec "highlight rubyControl ctermfg=8 guifg=" . s:coral
exec "highlight rubyDefine ctermfg=5 guifg=" . s:magenta
exec "highlight rubyEntities ctermfg=12 guifg=" . s:light_blue
exec "highlight rubyExceptional ctermfg=8 guifg=" . s:coral
exec "highlight rubyInstanceVariable ctermfg=14 guifg=" . s:light_green
exec "highlight rubyInterpolationDelimiter ctermfg=15 guifg=" . s:violet
exec "highlight rubyMacro ctermfg=12 guifg=" . s:light_blue
exec "highlight rubyModule ctermfg=4 guifg=" . s:blue
exec "highlight rubyPseudoVariable ctermfg=2 guifg=" . s:green
exec "highlight rubyResponse ctermfg=6 guifg=" . s:turquoise
exec "highlight rubyRoute ctermfg=12 guifg=" . s:light_blue
exec "highlight rubySharpBang ctermfg=247 guifg=" . s:grey247
exec "highlight rubyStringDelimiter ctermfg=11 guifg=" . s:wheat

" Crystal
exec "highlight crystalAccess ctermfg=3 guifg=" . s:khaki
exec "highlight crystalAttribute ctermfg=12 guifg=" . s:light_blue
exec "highlight crystalBlockParameter ctermfg=2 guifg=" . s:green
exec "highlight crystalClass ctermfg=7 guifg=" . s:orange
exec "highlight crystalControl ctermfg=8 guifg=" . s:coral
exec "highlight crystalDefine ctermfg=5 guifg=" . s:magenta
exec "highlight crystalExceptional ctermfg=8 guifg=" . s:coral
exec "highlight crystalInstanceVariable ctermfg=14 guifg=" . s:light_green
exec "highlight crystalModule ctermfg=4 guifg=" . s:blue
exec "highlight crystalPseudoVariable ctermfg=2 guifg=" . s:green
exec "highlight crystalSharpBang ctermfg=247 guifg=" . s:grey247
exec "highlight crystalStringDelimiter ctermfg=11 guifg=" . s:wheat

" Elixir
exec "highlight eelixirDelimiter ctermfg=9 guifg=" . s:crimson
exec "highlight elixirBlockDefinition ctermfg=5 guifg=" . s:magenta
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

" JavaScript, 'pangloss/vim-javascript' plugin
exec "highlight jsClassDefinition ctermfg=10 guifg=" . s:emerald
exec "highlight jsClassKeyword ctermfg=7 guifg=" . s:orange
exec "highlight jsFrom ctermfg=8 guifg=" . s:coral
exec "highlight jsFuncBlock ctermfg=10 guifg=" . s:emerald
exec "highlight jsFuncCall ctermfg=12 guifg=" . s:light_blue
exec "highlight jsFunction ctermfg=14 guifg=" . s:light_green
exec "highlight jsGlobalObjects ctermfg=10 guifg=" . s:emerald
exec "highlight jsModuleAs ctermfg=8 guifg=" . s:coral
exec "highlight jsObjectKey ctermfg=12 guifg=" . s:light_blue
exec "highlight jsObjectValue ctermfg=10 guifg=" . s:emerald
exec "highlight jsOperator ctermfg=5 guifg=" . s:magenta
exec "highlight jsStorageClass ctermfg=14 guifg=" . s:light_green
exec "highlight jsTemplateBraces ctermfg=15 guifg=" . s:violet
exec "highlight jsTemplateExpression ctermfg=6 guifg=" . s:turquoise
exec "highlight jsThis ctermfg=2 guifg=" . s:green

" CoffeeScript
exec "highlight coffeeGlobal ctermfg=6 guifg=" . s:turquoise
exec "highlight coffeeKeyword ctermfg=7 guifg=" . s:orange
exec "highlight coffeeObjAssign ctermfg=12 guifg=" . s:light_blue
exec "highlight coffeeSpecialIdent ctermfg=14 guifg=" . s:light_green
exec "highlight coffeeSpecialVar ctermfg=4 guifg=" . s:blue
exec "highlight coffeeStatement ctermfg=8 guifg=" . s:coral

" TypeScript (leafgarland/typescript-vim)
exec "highlight typescriptBraces ctermfg=12 guifg=" . s:light_blue
exec "highlight typescriptDOMObjects ctermfg=4 guifg=" . s:blue
exec "highlight typescriptFuncComma ctermfg=251 guifg=" . s:white
exec "highlight typescriptFuncKeyword ctermfg=14 guifg=" . s:light_green
exec "highlight typescriptGlobalObjects ctermfg=4 guifg=" . s:blue
exec "highlight typescriptIdentifier ctermfg=2 guifg=" . s:green
exec "highlight typescriptNull ctermfg=3 guifg=" . s:khaki
exec "highlight typescriptOpSymbols ctermfg=5 guifg=" . s:magenta
exec "highlight typescriptOperator ctermfg=9 guifg=" . s:crimson
exec "highlight typescriptParens ctermfg=251 guifg=" . s:white
exec "highlight typescriptReserved ctermfg=5 guifg=" . s:magenta
exec "highlight typescriptStorageClass ctermfg=14 guifg=" . s:light_green

" TypeScript (HerringtonDarkholme/yats.vim)
exec "highlight typeScriptBraces ctermfg=251 guifg=" . s:white
exec "highlight typescriptBOMLocationMethod ctermfg=12 guifg=" . s:light_blue
exec "highlight typescriptBOMWindowProp ctermfg=10 guifg=" . s:emerald
exec "highlight typescriptCall ctermfg=6 guifg=" . s:turquoise
exec "highlight typescriptDOMDocMethod ctermfg=12 guifg=" . s:light_blue
exec "highlight typescriptDOMNodeMethod ctermfg=12 guifg=" . s:light_blue
exec "highlight typescriptObjectLabel ctermfg=12 guifg=" . s:light_blue
exec "highlight typescriptStringMethod ctermfg=12 guifg=" . s:light_blue
exec "highlight typescriptVariable ctermfg=14 guifg=" . s:light_green
exec "highlight typescriptXHRMethod ctermfg=12 guifg=" . s:light_blue

" PureScript
exec "highlight purescriptClass ctermfg=7 guifg=" . s:orange
exec "highlight purescriptModuleParams ctermfg=8 guifg=" . s:coral

" Go
exec "highlight goBuiltins ctermfg=9 guifg=" . s:crimson
exec "highlight goConditional ctermfg=5 guifg=" . s:magenta
exec "highlight goDeclaration ctermfg=14 guifg=" . s:light_green
exec "highlight goDeclType ctermfg=2 guifg=" . s:green
exec "highlight goDirective ctermfg=15 guifg=" . s:violet
exec "highlight goFloats ctermfg=13 guifg=" . s:purple
exec "highlight goFunction ctermfg=4 guifg=" . s:blue
exec "highlight goFunctionCall ctermfg=12 guifg=" . s:light_blue
exec "highlight goImport ctermfg=15 guifg=" . s:violet
exec "highlight goLabel ctermfg=3 guifg=" . s:khaki
exec "highlight goMethod ctermfg=12 guifg=" . s:light_blue
exec "highlight goMethodCall ctermfg=12 guifg=" . s:light_blue
exec "highlight goPackage ctermfg=15 guifg=" . s:violet
exec "highlight goRepeat ctermfg=7 guifg=" . s:orange
exec "highlight goSignedInts ctermfg=13 guifg=" . s:purple
exec "highlight goStatement ctermfg=3 guifg=" . s:khaki
exec "highlight goStruct ctermfg=8 guifg=" . s:coral
exec "highlight goStructDef ctermfg=8 guifg=" . s:coral
exec "highlight goUnsignedInts ctermfg=13 guifg=" . s:purple

" Rust
exec "highlight rustCharacterInvalid ctermfg=15 guifg=" . s:violet
exec "highlight rustCharacterInvalidUnicode ctermfg=15 guifg=" . s:violet
exec "highlight rustCommentBlockDoc ctermfg=247 guifg=" . s:grey247
exec "highlight rustCommentBlockDocError ctermfg=247 guifg=" . s:grey247
exec "highlight rustCommentLineDoc ctermfg=247 guifg=" . s:grey247
exec "highlight rustCommentLineDocError ctermfg=247 guifg=" . s:grey247
exec "highlight rustConstant ctermfg=7 guifg=" . s:orange
exec "highlight rustEscapeError ctermfg=15 guifg=" . s:violet
exec "highlight rustFuncName ctermfg=4 guifg=" . s:blue
exec "highlight rustIdentifier ctermfg=4 guifg=" . s:blue
exec "highlight rustInvalidBareKeyword ctermfg=15 guifg=" . s:violet
exec "highlight rustKeyword ctermfg=14 guifg=" . s:light_green
exec "highlight rustLifetime ctermfg=2 guifg=" . s:green
exec "highlight rustMacro ctermfg=4 guifg=" . s:blue
exec "highlight rustMacroVariable ctermfg=5 guifg=" . s:magenta
exec "highlight rustModPath ctermfg=12 guifg=" . s:light_blue
exec "highlight rustObsoleteExternMod ctermfg=15 guifg=" . s:violet
exec "highlight rustObsoleteStorage ctermfg=15 guifg=" . s:violet
exec "highlight rustReservedKeyword ctermfg=15 guifg=" . s:violet
exec "highlight rustSelf ctermfg=2 guifg=" . s:green
exec "highlight rustStructure ctermfg=7 guifg=" . s:orange
exec "highlight rustTrait ctermfg=10 guifg=" . s:emerald
exec "highlight rustType ctermfg=8 guifg=" . s:coral

" Java
exec "highlight javaBraces ctermfg=251 guifg=" . s:white
exec "highlight javaClassDecl ctermfg=10 guifg=" . s:emerald
exec "highlight javaCommentTitle ctermfg=247 guifg=" . s:grey247
exec "highlight javaConstant ctermfg=12 guifg=" . s:light_blue
exec "highlight javaDebug ctermfg=12 guifg=" . s:light_blue
exec "highlight javaMethodDecl ctermfg=3 guifg=" . s:khaki
exec "highlight javaOperator ctermfg=9 guifg=" . s:crimson
exec "highlight javaScopeDecl ctermfg=4 guifg=" . s:blue
exec "highlight javaStatement ctermfg=6 guifg=" . s:turquoise

" Clojure
exec "highlight clojureDefine ctermfg=5 guifg=" . s:magenta
exec "highlight clojureKeyword ctermfg=13 guifg=" . s:purple
exec "highlight clojureMacro ctermfg=7 guifg=" . s:orange
exec "highlight clojureParen ctermfg=4 guifg=" . s:blue
exec "highlight clojureSpecial ctermfg=12 guifg=" . s:light_blue

" Scala
exec "highlight scalaCapitalWord ctermfg=4 guifg=" . s:blue
exec "highlight scalaCommentCodeBlock ctermfg=247 guifg=" . s:grey247
exec "highlight scalaInstanceDeclaration ctermfg=7 guifg=" . s:orange
exec "highlight scalaKeywordModifier ctermfg=14 guifg=" . s:light_green
exec "highlight scalaSpecial ctermfg=6 guifg=" . s:turquoise

" Haskell
exec "highlight haskellDecl ctermfg=7 guifg=" . s:orange
exec "highlight haskellDeclKeyword ctermfg=7 guifg=" . s:orange
exec "highlight haskellIdentifier ctermfg=14 guifg=" . s:light_green
exec "highlight haskellLet ctermfg=12 guifg=" . s:light_blue
exec "highlight haskellOperators ctermfg=15 guifg=" . s:violet
exec "highlight haskellType ctermfg=12 guifg=" . s:light_blue
exec "highlight haskellWhere ctermfg=5 guifg=" . s:magenta

" Elm
exec "highlight elmLetBlockDefinition ctermfg=14 guifg=" . s:light_green
exec "highlight elmTopLevelDecl ctermfg=8 guifg=" . s:coral
exec "highlight elmType ctermfg=12 guifg=" . s:light_blue

" Lua
exec "highlight luaBraces ctermfg=15 guifg=" . s:violet
exec "highlight luaBuiltin ctermfg=2 guifg=" . s:green
exec "highlight luaFuncCall ctermfg=12 guifg=" . s:light_blue
exec "highlight luaSpecialTable ctermfg=12 guifg=" . s:light_blue

" PHP
exec "highlight phpClass ctermfg=7 guifg=" . s:orange
exec "highlight phpClasses ctermfg=10 guifg=" . s:emerald
exec "highlight phpType ctermfg=4 guifg=" . s:blue

" HTML
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

" XML
exec "highlight xmlAttrib ctermfg=14 guifg=" . s:light_green
exec "highlight xmlEndTag ctermfg=4 guifg=" . s:blue
exec "highlight xmlTag ctermfg=14 guifg=" . s:light_green
exec "highlight xmlTagName ctermfg=4 guifg=" . s:blue

" Markdown, 'plasticboy/vim-markdown' plugin
exec "highlight mkdLineBreak ctermbg=bg guibg=bg"
exec "highlight mkdListItem ctermfg=4 guifg=" . s:blue
exec "highlight mkdURL ctermfg=13 guifg=" . s:purple

" vimdiff/nvim -d
exec "highlight DiffAdd ctermbg=10 guibg=" . s:emerald . " ctermfg=bg guifg=bg"
exec "highlight DiffChange ctermbg=236 guibg=" . s:grey236
exec "highlight DiffDelete ctermbg=236 guibg=" . s:grey236 . " ctermfg=9 guifg=" . s:crimson " gui=none"
exec "highlight DiffText ctermbg=4 guibg=" . s:blue . " ctermfg=bg guifg=bg gui=none"

" Git commits
exec "highlight gitCommitBranch ctermfg=12 guifg=" . s:light_blue
exec "highlight gitCommitDiscardedFile ctermfg=9 guifg=" . s:crimson
exec "highlight gitCommitDiscardedType ctermfg=12 guifg=" . s:light_blue
exec "highlight gitCommitHeader ctermfg=13 guifg=" . s:purple
exec "highlight gitCommitSelectedFile ctermfg=10 guifg=" . s:emerald
exec "highlight gitCommitSelectedType ctermfg=12 guifg=" . s:light_blue
exec "highlight gitCommitUntrackedFile ctermfg=15 guifg=" . s:violet

" Vimscript
exec "highlight vimBracket ctermfg=12 guifg=" . s:light_blue
exec "highlight vimCommand ctermfg=7 guifg=" . s:orange
exec "highlight vimEnvvar ctermfg=9 guifg=" . s:crimson
exec "highlight vimFuncName ctermfg=4 guifg=" . s:blue
exec "highlight vimFuncSID ctermfg=12 guifg=" . s:light_blue
exec "highlight vimFunction ctermfg=12 guifg=" . s:light_blue
exec "highlight vimNotation ctermfg=12 guifg=" . s:light_blue
exec "highlight vimOption ctermfg=10 guifg=" . s:emerald
exec "highlight vimParenSep ctermfg=251 guifg=" . s:white
exec "highlight vimSep ctermfg=251 guifg=" . s:white
exec "highlight vimUserFunc ctermfg=12 guifg=" . s:light_blue

" Tagbar plugin
exec "highlight TagbarFoldIcon ctermfg=247 guifg=" . s:grey247
exec "highlight TagbarVisibilityPublic ctermfg=14 guifg=" . s:light_green
exec "highlight TagbarVisibilityProtected ctermfg=14 guifg=" . s:light_green
exec "highlight TagbarVisibilityPrivate ctermfg=14 guifg=" . s:light_green
exec "highlight TagbarKind ctermfg=10 guifg=" . s:emerald

" NERDTree plugin
exec "highlight NERDTreeClosable ctermfg=8 guifg=" . s:coral
exec "highlight NERDTreeCWD ctermfg=5 guifg=" . s:magenta
exec "highlight NERDTreeDir ctermfg=12 guifg=" . s:light_blue
exec "highlight NERDTreeDirSlash ctermfg=15 guifg=" . s:violet
exec "highlight NERDTreeExecFile ctermfg=11 guifg=" . s:wheat
exec "highlight NERDTreeFile ctermfg=251 guifg=" . s:white
exec "highlight NERDTreeGitStatusDirDirty ctermfg=13 guifg=" . s:purple
exec "highlight NERDTreeGitStatusModified ctermfg=9 guifg=" . s:crimson
exec "highlight NERDTreeGitStatusRenamed ctermfg=3 guifg=" . s:khaki
exec "highlight NERDTreeGitStatusStaged ctermfg=12 guifg=" . s:light_blue
exec "highlight NERDTreeGitStatusUntracked ctermfg=9 guifg=" . s:crimson
exec "highlight NERDTreeHelp ctermfg=247 guifg=" . s:grey247
exec "highlight NERDTreeLinkDir ctermfg=4 guifg=" . s:blue
exec "highlight NERDTreeLinkFile ctermfg=4 guifg=" . s:blue
exec "highlight NERDTreeOpenable ctermfg=2 guifg=" . s:green
exec "highlight NERDTreePart ctermfg=0 guifg=" . s:grey0
exec "highlight NERDTreePartFile ctermfg=0 guifg=" . s:grey0
exec "highlight NERDTreeUp ctermfg=8 guifg=" . s:coral

" Neomake plugin
exec "highlight NeomakeError ctermfg=1 guifg=" . s:red
exec "highlight NeomakeErrorSign ctermbg=236 guibg=" . s:grey236 . " ctermfg=1 guifg=" . s:red
exec "highlight NeomakeWarning ctermfg=3 guifg=" . s:khaki
exec "highlight NeomakeWarningSign ctermbg=236 guibg=" . s:grey236 . " ctermfg=3 guifg=" . s:khaki
exec "highlight NeomakeInfo ctermfg=7 guifg=" . s:orange
exec "highlight NeomakeInfoSign ctermbg=236 guibg=" . s:grey236 . " ctermfg=7 guifg=" . s:orange
exec "highlight NeomakeMessage ctermfg=13 guifg=" . s:purple
exec "highlight NeomakeMessageSign ctermbg=236 guibg=" . s:grey236 . " ctermfg=13 guifg=" . s:purple

" ALE plugin
exec "highlight ALEError ctermfg=1 guifg=" . s:red
exec "highlight ALEErrorSign ctermbg=236 guibg=" . s:grey236 . " ctermfg=1 guifg=" . s:red
exec "highlight ALEWarning ctermfg=3 guifg=" . s:khaki
exec "highlight ALEWarningSign ctermbg=236 guibg=" . s:grey236 . " ctermfg=3 guifg=" . s:khaki
exec "highlight ALEInfo ctermfg=7 guifg=" . s:orange
exec "highlight ALEInfoSign ctermbg=236 guibg=" . s:grey236 . " ctermfg=7 guifg=" . s:orange

" FZF plugin
exec "highlight fzf1 ctermfg=9 guifg=" . s:crimson . " ctermbg=236 guibg=" . s:grey236
exec "highlight fzf2 ctermfg=111 guifg=" . s:blue111 . " ctermbg=236 guibg=" . s:grey236
exec "highlight fzf3 ctermfg=10 guifg=" . s:emerald . " ctermbg=236 guibg=" . s:grey236
exec "highlight fzfNormal ctermfg=249 guifg=" . s:grey249
let g:fzf_colors = {
  \  'fg':      ['fg', 'fzfNormal'],
  \  'bg':      ['bg', 'Normal'],
  \  'hl':      ['fg', 'Number'],
  \  'fg+':     ['fg', 'Normal'],
  \  'bg+':     ['bg', 'LineNr'],
  \  'hl+':     ['fg', 'Number'],
  \  'info':    ['fg', 'Type'],
  \  'border':  ['fg', 'CursorLineNr'],
  \  'prompt':  ['fg', 'fzf2'],
  \  'pointer': ['fg', 'MatchParen'],
  \  'marker':  ['fg', 'StorageClass'],
  \  'spinner': ['fg', 'Type'],
  \  'header':  ['fg', 'CursorLineNr']
  \}

" Misc
exec "highlight bufExplorerHelp ctermfg=247 guifg=" . s:grey247
exec "highlight bufExplorerSortBy ctermfg=247 guifg=" . s:grey247
exec "highlight CleverFDefaultLabel ctermfg=9 guifg=" . s:crimson
exec "highlight CtrlPMatch ctermfg=13 guifg=" . s:purple
exec "highlight Directory ctermfg=10 guifg=" . s:emerald
exec "highlight HighlightedyankRegion ctermbg=0 guibg=" . s:grey0
exec "highlight jsonKeyword ctermfg=12 guifg=" . s:light_blue
exec "highlight netrwClassify ctermfg=15 guifg=" . s:violet
exec "highlight netrwDir ctermfg=12 guifg=" . s:light_blue
exec "highlight snipLeadingSpaces ctermbg=bg guibg=bg ctermfg=fg guifg=fg"
exec "highlight tagName ctermfg=6 guifg=" . s:turquoise
