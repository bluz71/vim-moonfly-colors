" Dark Vim/Neovim color scheme.
"
" URL:     github.com/bluz71/vim-moonfly-colors
" License: MIT (https://opensource.org/licenses/MIT)

" Clear highlights and reset syntax only when changing colorschemes.
if exists('g:colors_name')
    highlight clear
    if exists('syntax_on')
        syntax reset
    endif
endif
let g:colors_name='moonfly'

" By default do not color the cursor.
let g:moonflyCursorColor = get(g:, 'moonflyCursorColor', v:false)

" By default do use italics in GUI versions of Vim.
let g:moonflyItalics = get(g:, 'moonflyItalics', v:true)

" By default do not use a customized 'NormalFloat' highlight group (for Neovim
" floating windows).
let g:moonflyNormalFloat = get(g:, 'moonflyNormalFloat', v:false)

" By default use the moonfly color palette in the `:terminal`
let g:moonflyTerminalColors = get(g:, 'moonflyTerminalColors', v:true)

" By default do not use a transparent background in GUI versions of Vim.
let g:moonflyTransparent = get(g:, 'moonflyTransparent', v:false)

" By default do use undercurls in GUI versions of Vim, including terminal Vim
" with termguicolors set.
let g:moonflyUndercurls = get(g:, 'moonflyUndercurls', v:true)

" By default do not underline matching parentheses.
let g:moonflyUnderlineMatchParen = get(g:, 'moonflyUnderlineMatchParen', v:false)

" By default do display vertical split columns.
let g:moonflyWinSeparator = get(g:, 'moonflyWinSeparator', 1)

" Background and foreground
let s:black     = {"hex": '#080808', "term": 232}
let s:white     = {"hex": '#c6c6c6', "term": 251}
" Variations of charcoal-grey
let s:grey0     = {"hex": '#323437', "term": 0  }
let s:grey254   = {"hex": '#e4e4e4', "term": 254}
let s:grey249   = {"hex": '#b2b2b2', "term": 249}
let s:grey247   = {"hex": '#9e9e9e', "term": 247}
let s:grey246   = {"hex": '#949494', "term": 246}
let s:grey244   = {"hex": '#808080', "term": 244}
let s:grey241   = {"hex": '#626262', "term": 241}
let s:grey238   = {"hex": '#444444', "term": 238}
let s:grey237   = {"hex": '#3a3a3a', "term": 237}
let s:grey236   = {"hex": '#303030', "term": 236}
let s:grey235   = {"hex": '#262626', "term": 235}
let s:grey234   = {"hex": '#1c1c1c', "term": 234}
let s:grey233   = {"hex": '#121212', "term": 233}
" Core theme colors
let s:khaki     = {"hex": '#c2c292', "term": 11}
let s:yellow    = {"hex": '#e3c78a', "term": 3 }
let s:orange    = {"hex": '#de935f', "term": 7 }
let s:coral     = {"hex": '#f09479', "term": 8 }
let s:lime      = {"hex": '#85dc85', "term": 14}
let s:green     = {"hex": '#8cc85f', "term": 2 }
let s:emerald   = {"hex": '#36c692', "term": 10}
let s:blue      = {"hex": '#80a0ff', "term": 4 }
let s:sky       = {"hex": '#74b2ff', "term": 12}
let s:turquoise = {"hex": '#79dac8', "term": 6 }
let s:purple    = {"hex": '#ae81ff', "term": 13}
let s:cranberry = {"hex": '#e2637f', "term": 15}
let s:violet    = {"hex": '#d183e8', "term": 5 }
let s:crimson   = {"hex": '#ff5189', "term": 9 }
let s:red       = {"hex": '#ff5454', "term": 1 }
" Extra colors
let s:spring    = {"hex": '#00875f', "term": 29}

" Specify the colors used by the inbuilt terminal of Neovim and Vim
if g:moonflyTerminalColors
    if has('nvim')
        let g:terminal_color_0  = s:grey0.hex
        let g:terminal_color_1  = s:red.hex
        let g:terminal_color_2  = s:green.hex
        let g:terminal_color_3  = s:yellow.hex
        let g:terminal_color_4  = s:blue.hex
        let g:terminal_color_5  = s:violet.hex
        let g:terminal_color_6  = s:turquoise.hex
        let g:terminal_color_7  = s:white.hex
        let g:terminal_color_8  = s:grey246.hex
        let g:terminal_color_9  = s:crimson.hex
        let g:terminal_color_10 = s:emerald.hex
        let g:terminal_color_11 = s:khaki.hex
        let g:terminal_color_12 = s:sky.hex
        let g:terminal_color_13 = s:purple.hex
        let g:terminal_color_14 = s:lime.hex
        let g:terminal_color_15 = s:grey254.hex
    else
        let g:terminal_ansi_colors = [
                    \ s:grey0.hex, s:red.hex, s:green.hex, s:yellow.hex,
                    \ s:blue.hex, s:violet.hex, s:turquoise.hex, s:white.hex,
                    \ s:grey246.hex, s:crimson.hex, s:emerald.hex, s:khaki.hex,
                    \ s:sky.hex, s:purple.hex, s:lime.hex, s:grey254.hex
                    \]
    endif
endif

" Background and text
if g:moonflyTransparent
    exec 'highlight Normal ctermbg=' . s:black.term . ' ctermfg=' . s:white.term . ' guibg=NONE guifg=' . s:white.hex
else
    exec 'highlight Normal ctermbg=' . s:black.term . ' ctermfg=' . s:white.term . ' guibg=' . s:black.hex . ' guifg=' . s:white.hex
endif

" Custom moonfly highlight groups
exec 'highlight MoonflyReset ctermfg=fg guifg=fg'
exec 'highlight MoonflyVisual ctermbg=' . s:grey0.term . ' guibg=' . s:grey0.hex
exec 'highlight MoonflyWhite ctermfg=' . s:white.term . ' guifg=' . s:white.hex
exec 'highlight MoonflyGrey0 ctermfg=' . s:grey0.term . ' guifg=' . s:grey0.hex
exec 'highlight MoonflyGrey254 ctermfg=' . s:grey254.term . ' guifg=' . s:grey254.hex
exec 'highlight MoonflyGrey249 ctermfg=' . s:grey249.term . ' guifg=' . s:grey249.hex
exec 'highlight MoonflyGrey247 ctermfg=' . s:grey247.term . ' guifg=' . s:grey247.hex
exec 'highlight MoonflyGrey246 ctermfg=' . s:grey246.term . ' guifg=' . s:grey246.hex
exec 'highlight MoonflyGrey241 ctermfg=' . s:grey241.term . ' guifg=' . s:grey241.hex
exec 'highlight MoonflyGrey235 ctermfg=' . s:grey235.term . ' guifg=' . s:grey235.hex
exec 'highlight MoonflyGrey236 ctermfg=' . s:grey236.term . ' guifg=' . s:grey236.hex
exec 'highlight MoonflyKhaki ctermfg=' . s:khaki.term . ' guifg=' . s:khaki.hex
exec 'highlight MoonflyYellow ctermfg=' . s:yellow.term . ' guifg=' . s:yellow.hex
exec 'highlight MoonflyOrange ctermfg=' . s:orange.term . ' guifg=' . s:orange.hex
exec 'highlight MoonflyCoral ctermfg=' . s:coral.term . ' guifg=' . s:coral.hex
exec 'highlight MoonflyLime ctermfg=' . s:lime.term . ' guifg=' . s:lime.hex
exec 'highlight MoonflyGreen ctermfg=' . s:green.term . ' guifg=' . s:green.hex
exec 'highlight MoonflyEmerald ctermfg=' . s:emerald.term . ' guifg=' . s:emerald.hex
exec 'highlight MoonflyBlue ctermfg=' . s:blue.term . ' guifg=' . s:blue.hex
exec 'highlight MoonflySky ctermfg=' . s:sky.term . ' guifg=' . s:sky.hex
exec 'highlight MoonflyTurquoise ctermfg=' . s:turquoise.term . ' guifg=' . s:turquoise.hex
exec 'highlight MoonflyPurple ctermfg=' . s:purple.term . ' guifg=' . s:purple.hex
exec 'highlight MoonflyCranberry ctermfg=' . s:cranberry.term . ' guifg=' . s:cranberry.hex
exec 'highlight MoonflyViolet ctermfg=' . s:violet.term . ' guifg=' . s:violet.hex
exec 'highlight MoonflyCrimson ctermfg=' . s:crimson.term . ' guifg=' . s:crimson.hex
exec 'highlight MoonflyRed ctermfg=' . s:red.term . ' guifg=' . s:red.hex
exec 'highlight MoonflyWhiteAlert ctermbg=bg ctermfg=' . s:white.term . ' guibg=bg guifg=' . s:white.hex
exec 'highlight MoonflyYellowAlert ctermbg=bg ctermfg=' . s:yellow.term . ' guibg=bg guifg=' . s:yellow.hex
exec 'highlight MoonflyCoralAlert ctermbg=bg ctermfg=' . s:coral.term . ' guibg=bg guifg=' . s:coral.hex
exec 'highlight MoonflyEmeraldAlert ctermbg=bg ctermfg=' . s:emerald.term . ' guibg=bg guifg=' . s:emerald.hex
exec 'highlight MoonflyPurpleAlert ctermbg=bg ctermfg=' . s:purple.term . ' guibg=bg guifg=' . s:purple.hex
exec 'highlight MoonflySkyAlert ctermbg=bg ctermfg=' . s:sky.term . ' guibg=bg guifg=' . s:sky.hex
exec 'highlight MoonflyRedAlert ctermbg=bg ctermfg=' . s:red.term . ' guibg=bg guifg=' . s:red.hex
exec 'highlight MoonflyUnderline cterm=underline gui=underline'
exec 'highlight MoonflyNoCombine cterm=nocombine gui=nocombine'
" Statusline helper colors.
exec 'highlight MoonflyBlueMode ctermbg=' . s:blue.term . ' ctermfg=' . s:grey234.term . ' guibg=' . s:blue.hex . ' guifg=' . s:grey234.hex
exec 'highlight MoonflyEmeraldMode ctermbg=' . s:emerald.term . ' ctermfg=' . s:grey234.term . ' guibg=' . s:emerald.hex . ' guifg=' . s:grey234.hex
exec 'highlight MoonflyPurpleMode ctermbg=' . s:purple.term . ' ctermfg=' . s:grey234.term . ' guibg=' . s:purple.hex . ' guifg=' . s:grey234.hex
exec 'highlight MoonflyCrimsonMode ctermbg=' . s:crimson.term . ' ctermfg=' . s:grey234.term . ' guibg=' . s:crimson.hex . ' guifg=' . s:grey234.hex
exec 'highlight MoonflyYellowMode ctermbg=' . s:yellow.term . ' ctermfg=' . s:grey234.term . ' guibg=' . s:yellow.hex . ' guifg=' . s:grey234.hex
exec 'highlight MoonflyTurquoiseMode ctermbg=' . s:turquoise.term . ' ctermfg=' . s:grey234.term . ' guibg=' . s:turquoise.hex . ' guifg=' . s:grey234.hex
" Tabline helper colors.
exec 'highlight MoonflyBlueLine ctermbg=' . s:grey236.term . ' ctermfg=' . s:blue.term . ' guibg=' . s:grey236.hex . ' guifg=' . s:blue.hex
exec 'highlight MoonflyBlueLineActive ctermbg=' . s:grey238.term . ' ctermfg=' . s:blue.term . '   guibg=' . s:grey238.hex . ' guifg=' . s:blue.hex
exec 'highlight MoonflyEmeraldLine ctermbg=' . s:grey236.term . ' ctermfg=' . s:emerald.term . ' guibg=' . s:grey236.hex . ' guifg=' . s:emerald.hex
exec 'highlight MoonflyEmeraldLineActive ctermbg=' . s:grey238.term . ' ctermfg=' . s:emerald.term . '   guibg=' . s:grey238.hex . ' guifg=' . s:emerald.hex
exec 'highlight MoonflyGrey246Line ctermbg=' . s:grey234.term . ' ctermfg=' . s:grey246.term . ' guibg=' . s:grey234.hex . ' guifg=' . s:grey246.hex
exec 'highlight MoonflyGrey247Line ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey247.term . ' guibg=' . s:grey236.hex . ' guifg=' . s:grey247.hex
exec 'highlight MoonflyWhiteLineActive ctermbg=' . s:grey238.term . ' ctermfg=' . s:grey254.term . '   guibg=' . s:grey238.hex . ' guifg=' . s:grey254.hex
exec 'highlight MoonflyYellowLine ctermbg=' . s:grey234.term . ' ctermfg=' . s:yellow.term . '   guibg=' . s:grey234.hex . ' guifg=' . s:yellow.hex
exec 'highlight MoonflyYellowLineActive ctermbg=' . s:grey238.term . ' ctermfg=' . s:yellow.term . '   guibg=' . s:grey238.hex . ' guifg=' . s:yellow.hex

" Color of mode text, -- INSERT --
exec 'highlight ModeMsg ctermfg=' . s:grey247.term . ' guifg=' . s:grey247.hex . ' gui=none'

" Comments
if g:moonflyItalics
    exec 'highlight Comment ctermfg=' . s:grey246.term . ' guifg=' . s:grey246.hex . ' gui=italic'
else
    exec 'highlight Comment ctermfg=' . s:grey246.term . ' guifg=' . s:grey246.hex
endif

" Functions
highlight! link Function MoonflySky

" Strings
highlight! link String MoonflyKhaki

" Booleans
highlight! link Boolean MoonflyCoral

" Identifiers
exec 'highlight Identifier ctermfg=' . s:turquoise.term . ' cterm=none guifg=' . s:turquoise.hex

" Color of titles
exec 'highlight Title ctermfg=' . s:orange.term . ' guifg=' . s:orange.hex . ' gui=none'

" const, static
highlight! link StorageClass MoonflyCoral

" void, intptr_t
exec 'highlight Type ctermfg=' . s:emerald.term . ' guifg=' . s:emerald.hex . ' gui=none'

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
exec 'highlight NonText ctermfg=' . s:grey241.term . ' guifg=' . s:grey241.hex . ' gui=none'

" sizeof
highlight! link Operator MoonflyCranberry

" for, while
highlight! link Repeat MoonflyViolet

" Search
exec 'highlight Search ctermbg=bg ctermfg=' . s:coral.term . ' cterm=reverse guibg=bg guifg=' . s:coral.hex . ' gui=reverse'
exec 'highlight IncSearch ctermbg=bg ctermfg=' . s:yellow.term . ' guibg=bg guifg=' . s:yellow.hex

" '\n' sequences
highlight! link Special MoonflyCranberry

" if, else
exec 'highlight Statement ctermfg=' . s:violet.term . ' guifg=' . s:violet.hex . ' gui=none'

" struct, union, enum, typedef
highlight! link Structure MoonflyBlue

" Status, split and tab lines
exec 'highlight StatusLine ctermbg=' . s:grey236.term . '  ctermfg=' . s:white.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:white.hex . ' gui=none'
exec 'highlight StatusLineNC ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey247.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:grey247.hex . ' gui=none'
exec 'highlight Tabline ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey247.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:grey247.hex . ' gui=none'
exec 'highlight TablineSel ctermbg=' . s:grey234.term . ' ctermfg=' . s:blue.term . ' cterm=none guibg=' . s:grey234.hex . ' guifg=' . s:blue.hex . ' gui=none'
exec 'highlight TablineSelSymbol ctermbg=' . s:grey234.term . ' ctermfg=' . s:emerald.term . ' cterm=none guibg=' . s:grey234.hex . ' guifg=' . s:emerald.hex . ' gui=none'
exec 'highlight TablineFill ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey236.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:grey236.hex . ' gui=none'
exec 'highlight StatusLineTerm ctermbg=' . s:grey236.term . ' ctermfg=' . s:white.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:white.hex . ' gui=none'
exec 'highlight StatusLineTermNC ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey247.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:grey247.hex . ' gui=none'
if g:moonflyWinSeparator == 0
    exec 'highlight VertSplit ctermbg=' . s:black.term . ' ctermfg=' . s:black.term . ' cterm=none guibg=' . s:black.hex . ' guifg=' . s:black.hex . ' gui=none'
elseif g:moonflyWinSeparator == 1
    exec 'highlight VertSplit ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey236.term . ' cterm=none guibg=' . s:grey236.hex . ' guifg=' . s:grey236.hex . ' gui=none'
else
    exec 'highlight VertSplit ctermbg=NONE ctermfg=' . s:grey236.term . ' cterm=none guibg=NONE guifg=' . s:grey236.hex . ' gui=none'
end

" Visual selection
highlight! link Visual MoonflyVisual
exec 'highlight VisualNOS ctermbg=' . s:grey0.term . ' ctermfg=fg cterm=none guibg=' . s:grey0.hex . ' guifg=fg gui=none'
exec 'highlight VisualInDiff ctermbg=' . s:grey0.term . ' ctermfg=' . s:white.term . ' guibg=' . s:grey0.hex . ' guifg=' . s:white.hex

" Errors, warnings and whitespace-eol
exec 'highlight Error ctermbg=bg ctermfg=' . s:red.term . ' guibg=bg guifg=' . s:red.hex
exec 'highlight ErrorMsg ctermbg=bg ctermfg=' . s:red.term . ' guibg=bg guifg=' . s:red.hex
exec 'highlight WarningMsg ctermbg=bg ctermfg=' . s:orange.term . ' guibg=bg guifg=' . s:orange.hex

" Auto-text-completion menu
exec 'highlight Pmenu ctermbg=' . s:grey235.term . ' ctermfg=fg guibg=' . s:grey235.hex . ' guifg=fg'
exec 'highlight PmenuSel ctermbg=' . s:spring.term . ' ctermfg=' . s:grey254.term . ' guibg=' . s:spring.hex . ' guifg=' . s:grey254.hex
exec 'highlight PmenuSbar ctermbg=' . s:grey235.term . ' guibg=' . s:grey235.hex
exec 'highlight PmenuThumb ctermbg=' . s:grey244.term . ' guibg=' . s:grey244.hex
exec 'highlight WildMenu ctermbg=' . s:spring.term . ' ctermfg=' . s:grey254.term . ' guibg=' . s:spring.hex . ' guifg=' . s:grey254.hex

" Spelling errors
if g:moonflyUndercurls
    exec 'highlight SpellBad ctermbg=NONE ctermfg=' . s:red.term . ' cterm=underline guibg=NONE gui=undercurl guisp=' . s:red.hex
    exec 'highlight SpellCap ctermbg=NONE ctermfg=' . s:blue.term . ' cterm=underline guibg=NONE gui=undercurl guisp=' . s:blue.hex
    exec 'highlight SpellRare ctermbg=NONE ctermfg=' . s:yellow.term . ' cterm=underline guibg=NONE gui=undercurl guisp=' . s:yellow.hex
    exec 'highlight SpellLocal ctermbg=NONE ctermfg=' . s:sky.term . ' cterm=underline guibg=NONE gui=undercurl guisp=' . s:sky.hex
else
    exec 'highlight SpellBad ctermbg=NONE ctermfg=' . s:red.term . ' cterm=underline guibg=NONE guifg=' . s:red.hex . ' gui=underline guisp=' . s:red.hex
    exec 'highlight SpellCap ctermbg=NONE ctermfg=' . s:blue.term . ' cterm=underline guibg=NONE guifg=' . s:blue.hex . ' gui=underline guisp=' . s:blue.hex
    exec 'highlight SpellRare ctermbg=NONE ctermfg=' . s:yellow.term . ' cterm=underline guibg=NONE guifg=' . s:yellow.hex . ' gui=underline guisp=' . s:yellow.hex
    exec 'highlight SpellLocal ctermbg=NONE ctermfg=' . s:sky.term . ' cterm=underline guibg=NONE guifg=' . s:sky.hex . ' gui=underline guisp=' . s:sky.hex
endif

" Misc
exec 'highlight Question ctermfg=' . s:lime.term . ' guifg=' . s:lime.hex . ' gui=none'
exec 'highlight MoreMsg ctermfg=' . s:red.term . ' guifg=' . s:red.hex . ' gui=none'
exec 'highlight LineNr ctermbg=bg ctermfg=' . s:grey241.term . ' guibg=bg guifg=' . s:grey241.hex . ' gui=none'
if g:moonflyCursorColor
    exec 'highlight Cursor ctermfg=bg ctermbg=' . s:blue.term . ' guifg=bg guibg=' . s:blue.hex
else
    exec 'highlight Cursor ctermfg=bg ctermbg=' . s:grey247.term . ' guifg=bg guibg=' . s:grey247.hex
endif
exec 'highlight lCursor ctermfg=bg ctermbg=' . s:grey247.term . ' guifg=bg guibg=' . s:grey247.hex
exec 'highlight CursorLineNr ctermbg=' . s:grey234.term . ' ctermfg=' . s:blue.term . ' cterm=none guibg=' . s:grey234.hex . ' guifg=' . s:blue.hex . ' gui=none'
exec 'highlight CursorColumn ctermbg=' . s:grey234.term . ' cterm=none guibg=' . s:grey234.hex
exec 'highlight CursorLine ctermbg=' . s:grey234.term . ' cterm=none guibg=' . s:grey234.hex
exec 'highlight Folded ctermbg=' . s:grey234.term . ' ctermfg=' . s:lime.term . ' guibg=' . s:grey234.hex . ' guifg='. s:lime.hex
exec 'highlight FoldColumn ctermbg=' . s:grey236.term . ' ctermfg=' . s:lime.term . ' guibg=' . s:grey236.hex . ' guifg=' . s:lime.hex
exec 'highlight SignColumn ctermbg=bg ctermfg=' . s:lime.term . ' guibg=bg guifg=' . s:lime.hex
exec 'highlight Todo ctermbg=' . s:yellow.term . ' ctermfg=' . s:black.term . ' guibg=' . s:yellow.hex . ' guifg=' . s:black.hex
exec 'highlight SpecialKey ctermbg=bg ctermfg=' . s:sky.term . ' guibg=bg guifg=' . s:sky.hex
if g:moonflyUnderlineMatchParen
    exec 'highlight MatchParen ctermbg=bg cterm=underline guibg=bg gui=underline'
else
    highlight! link MatchParen MoonflyVisual
endif
exec 'highlight Ignore ctermfg=' . s:sky.term . ' guifg=' . s:sky.hex
exec 'highlight Underlined ctermfg=' . s:emerald.term . ' cterm=none guifg=' . s:emerald.hex . ' gui=none'
exec 'highlight QuickFixLine ctermbg=' . s:grey237.term . ' cterm=none guibg=' . s:grey237.hex
highlight! link Delimiter MoonflyWhite
highlight! link qfFileName MoonflyEmerald

" Color column (after line 80)
exec 'highlight ColorColumn ctermbg=' . s:grey233.term . ' guibg=' . s:grey233.hex

" Conceal color
exec 'highlight Conceal ctermbg=NONE ctermfg=' . s:grey249.term . ' guibg=NONE guifg=' . s:grey249.hex

" Neovim only highlight groups
if has('nvim')
    exec 'highlight Whitespace ctermfg=' . s:grey0.term . ' guifg=' . s:grey0.hex
    exec 'highlight TermCursor ctermbg=' . s:grey247.term . ' ctermfg=bg cterm=none guibg=' . s:grey247.hex . ' guifg=bg gui=none'
    if g:moonflyNormalFloat
        exec 'highlight NormalFloat ctermbg=bg ctermfg=' . s:grey249.term . ' guibg=bg guifg=' . s:grey249.hex
    else
        exec 'highlight NormalFloat ctermbg=' . s:grey234.term . ' ctermfg=fg guibg=' . s:grey234.hex . ' guifg=fg'
    endif
    exec 'highlight FloatBorder ctermbg=bg ctermfg=' . s:grey236.term . ' guibg=bg guifg=' . s:grey236.hex
    exec 'highlight WinBar ctermbg=' . s:grey235.term . '  ctermfg=' . s:white.term . ' cterm=none guibg=' . s:grey235.hex . ' guifg=' . s:white.hex . ' gui=none'
    exec 'highlight WinBarNC ctermbg=' . s:grey235.term . ' ctermfg=' . s:grey247.term . ' cterm=none guibg=' . s:grey235.hex . ' guifg=' . s:grey247.hex . ' gui=none'
    highlight! link WinSeparator VertSplit

    " Neovim Treesitter
    highlight! link TSAnnotation MoonflyViolet
    highlight! link TSAttribute MoonflySky
    highlight! link TSConstant MoonflyTurquoise
    highlight! link TSConstBuiltin MoonflyGreen
    highlight! link TSConstMacro MoonflyViolet
    highlight! link TSConstructor MoonflyEmerald
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
    highlight! link bashTSParameter MoonflyTurquoise
    highlight! link cssTSPunctDelimiter MoonflyCranberry
    highlight! link cssTSType MoonflyBlue
    highlight! link scssTSPunctDelimiter MoonflyCranberry
    highlight! link scssTSType MoonflyBlue
    highlight! link scssTSVariable MoonflyTurquoise
    highlight! link vimTSVariable MoonflyTurquoise
    highlight! link yamlTSField MoonflySky
    highlight! link yamlTSPunctDelimiter MoonflyCranberry
endif

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
highlight! link cppSTLconstant MoonflyBlue
highlight! link cppSTLnamespace MoonflyBlue
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
    exec 'highlight htmlBoldItalic ctermbg=' . s:black.term . ' ctermfg=' . s:coral.term . ' guibg=' . s:black.hex . ' guifg=' . s:coral.hex . ' gui=italic'
    exec 'highlight htmlBoldUnderlineItalic ctermbg=' . s:black.term . ' ctermfg=' . s:coral.term . ' guibg=' . s:black.hex . ' guifg=' . s:coral.hex . ' gui=italic'
    exec 'highlight htmlItalic ctermfg=' . s:grey247.term . ' guifg=' . s:grey247.hex . ' gui=italic'
    exec 'highlight htmlUnderlineItalic ctermbg=' . s:black.term . ' ctermfg=' . s:grey247.term . ' guibg=' . s:black.hex . ' guifg=' . s:grey247.hex . ' gui=italic'
else
    exec 'highlight htmlBoldItalic ctermbg=' . s:black.term . ' ctermfg=' . s:coral.term . ' cterm=none guibg=' . s:black.hex . ' guifg=' . s:coral.hex ' gui=none'
    exec 'highlight htmlBoldUnderlineItalic ctermbg=' . s:black.term . ' ctermfg=' . s:coral.term . ' guibg=' . s:black.hex . ' guifg=' . s:coral.hex
    exec 'highlight htmlItalic ctermfg=' . s:grey247.term . ' cterm=none guifg=' . s:grey247.hex ' gui=none'
    exec 'highlight htmlUnderlineItalic ctermbg=' . s:black.term . ' ctermfg=' . s:grey247.term . ' guibg=' . s:black.hex . ' guifg=' . s:grey247.hex
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
highlight! link jsxTagName MoonflyBlue

" Lua
highlight! link luaBraces MoonflyCranberry
highlight! link luaBuiltin MoonflyGreen
highlight! link luaFuncCall MoonflySky
highlight! link luaSpecialTable MoonflySky

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
exec 'highlight scalaCapitalWord ctermfg=' . s:blue.term . ' guifg=' . s:blue.hex
exec 'highlight scalaCommentCodeBlock ctermfg=' . s:grey247.term . ' guifg=' . s:grey247.hex
exec 'highlight scalaInstanceDeclaration ctermfg=' . s:turquoise.term . ' guifg=' . s:turquoise.hex
exec 'highlight scalaKeywordModifier ctermfg=' . s:lime.term . ' guifg=' . s:lime.hex
exec 'highlight scalaSpecial ctermfg=' . s:crimson.term . ' guifg=' . s:crimson.hex

" Shell scripts
highlight! link shAlias MoonflyTurquoise
highlight! link shCommandSub MoonflyReset
highlight! link shLoop MoonflyViolet
highlight! link shSetList MoonflyTurquoise
highlight! link shShellVariables MoonflyLime
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
highlight! link NERDTreeClosable MoonflyEmerald
highlight! link NERDTreeCWD MoonflyPurple
highlight! link NERDTreeDir MoonflySky
highlight! link NERDTreeDirSlash MoonflyCranberry
highlight! link NERDTreeExecFile MoonflyKhaki
highlight! link NERDTreeFile MoonflyWhite
highlight! link NERDTreeHelp MoonflyGrey247
highlight! link NERDTreeLinkDir MoonflyBlue
highlight! link NERDTreeLinkFile MoonflyBlue
highlight! link NERDTreeLinkTarget MoonflyTurquoise
highlight! link NERDTreeOpenable MoonflyEmerald
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
highlight! link FernBranchSymbol MoonflyEmerald
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

" Misc stylings
highlight! link bufExplorerHelp MoonflyGrey247
highlight! link bufExplorerSortBy MoonflyGrey247
highlight! link CleverFDefaultLabel MoonflyCrimson
highlight! link CtrlPMatch MoonflyCoral
highlight! link Directory MoonflyBlue
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
    exec 'highlight MatchWord cterm=underline gui=underline guisp=' . s:coral.hex
else
    highlight! link MatchWord MoonflyCoral
endif
exec 'highlight snipLeadingSpaces ctermbg=bg ctermfg=fg guibg=bg guifg=fg'
exec 'highlight MatchWordCur ctermbg=bg guibg=bg'

" vimdiff/nvim -d
exec 'highlight DiffAdd ctermbg=' . s:emerald.term . ' ctermfg=' . s:black.term . ' guibg=' . s:emerald.hex . ' guifg=' . s:black.hex
exec 'highlight DiffChange ctermbg=' . s:grey236.term . ' guibg=' . s:grey236.hex
exec 'highlight DiffDelete ctermbg=' . s:grey236.term . ' ctermfg=' . s:crimson.term . ' guibg=' . s:grey236.hex . ' guifg=' . s:crimson.hex ' gui=none'
exec 'highlight DiffText ctermbg=' . s:blue.term . ' ctermfg=' . s:black.term . ' guibg=' . s:blue.hex . ' guifg=' . s:black.hex . ' gui=none'

" ALE plugin
if g:moonflyUndercurls
     exec 'highlight ALEError ctermbg=NONE guibg=NONE gui=undercurl guisp=' . s:red.hex
     exec 'highlight ALEWarning ctermbg=NONE guibg=NONE gui=undercurl guisp=' . s:yellow.hex
     exec 'highlight ALEInfo ctermbg=NONE guibg=NONE gui=undercurl guisp=' . s:sky.hex
else
    exec 'highlight ALEError ctermbg=NONE guibg=NONE'
    exec 'highlight ALEWarning ctermbg=NONE guibg=NONE'
    exec 'highlight ALEInfo ctermbg=NONE guibg=NONE'
endif
highlight! link ALEVirtualTextError MoonflyGrey241
highlight! link ALEErrorSign MoonflyRedAlert
highlight! link ALEVirtualTextWarning MoonflyGrey241
highlight! link ALEWarningSign MoonflyYellowAlert
highlight! link ALEVirtualTextInfo MoonflyGrey241
highlight! link ALEInfoSign MoonflySkyAlert

" GitGutter plugin
highlight! link GitGutterAdd MoonflyEmeraldAlert
highlight! link GitGutterChange MoonflyYellowAlert
highlight! link GitGutterChangeDelete MoonflyCoralAlert
highlight! link GitGutterDelete MoonflyRedAlert

" Signify plugin
highlight! link SignifySignAdd MoonflyEmeraldAlert
highlight! link SignifySignChange MoonflyYellowAlert
highlight! link SignifySignDelete MoonflyRedAlert

" FZF plugin
exec 'highlight fzf1 ctermfg=' . s:crimson.term . ' ctermbg=' . s:grey236.term . ' guifg=' . s:crimson.hex . ' guibg=' . s:grey236.hex
exec 'highlight fzf2 ctermfg=' . s:blue.term . ' ctermbg=' . s:grey236.term . ' guifg=' . s:blue.hex . ' guibg=' . s:grey236.hex
exec 'highlight fzf3 ctermfg=' . s:emerald.term . ' ctermbg=' . s:grey236.term . ' guifg=' . s:emerald.hex . ' guibg=' . s:grey236.hex
exec 'highlight fzfNormal ctermfg=' . s:grey249.term . ' guifg=' . s:grey249.hex
exec 'highlight fzfFgPlus ctermfg=' . s:grey254.term . ' guifg=' . s:grey254.hex
exec 'highlight fzfBorder ctermfg=' . s:grey236.term . ' guifg=' . s:grey236.hex
let g:fzf_colors = {
  \  'fg':      ['fg', 'fzfNormal'],
  \  'bg':      ['bg', 'Normal'],
  \  'hl':      ['fg', 'Boolean'],
  \  'fg+':     ['fg', 'fzfFgPlus'],
  \  'bg+':     ['bg', 'Pmenu'],
  \  'hl+':     ['fg', 'Boolean'],
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

" Coc plugin (see issue: https://github.com/bluz71/vim-nightfly-guicolors/issues/31)
highlight! link CocUnusedHighlight MoonflyGrey249

" indentLine plugin
if !exists('g:indentLine_defaultGroup') && !exists('g:indentLine_color_gui') && !exists('g:indentLine_color_term')
    let g:indentLine_color_term = s:grey235.term
    let g:indentLine_color_gui = s:grey235.hex
endif

" Neovim diagnostics
if has('nvim-0.6')
    " Neovim 0.6 diagnostic
    highlight! link DiagnosticError MoonflyRed
    highlight! link DiagnosticWarn MoonflyYellow
    highlight! link DiagnosticInfo MoonflySky
    highlight! link DiagnosticHint MoonflyWhite
    if g:moonflyUndercurls
        exec 'highlight DiagnosticUnderlineError ctermbg=NONE guibg=NONE gui=undercurl guisp=' . s:red.hex
        exec 'highlight DiagnosticUnderlineWarn ctermbg=NONE guibg=NONE gui=undercurl guisp=' . s:yellow.hex
        exec 'highlight DiagnosticUnderlineInfo ctermbg=NONE guibg=NONE gui=undercurl guisp=' . s:sky.hex
        exec 'highlight DiagnosticUnderlineHint ctermbg=NONE guibg=NONE gui=undercurl guisp=' . s:white.hex
    else
        exec 'highlight DiagnosticUnderlineError ctermbg=NONE guibg=NONE gui=underline guisp=' . s:red.hex
        exec 'highlight DiagnosticUnderlineWarn ctermbg=NONE guibg=NONE gui=underline guisp=' . s:blue.hex
        exec 'highlight DiagnosticUnderlineInfo ctermbg=NONE guibg=NONE gui=underline guisp=' . s:yellow.hex
        exec 'highlight DiagnosticUnderlineHint ctermbg=NONE guibg=NONE gui=underline guisp=' . s:sky.hex
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
elseif has('nvim-0.5')
    " Neovim 0.5 LSP diagnostics
    if g:moonflyUndercurls
        exec 'highlight LspDiagnosticsUnderlineError ctermbg=NONE guibg=NONE gui=undercurl guisp=' . s:red.hex
        exec 'highlight LspDiagnosticsUnderlineWarning ctermbg=NONE guibg=NONE gui=undercurl guisp=' . s:yellow.hex
        exec 'highlight LspDiagnosticsUnderlineInformation ctermbg=NONE guibg=NONE gui=undercurl guisp=' . s:sky.hex
        exec 'highlight LspDiagnosticsUnderlineHint ctermbg=NONE guibg=NONE gui=undercurl guisp=' . s:white.hex
    else
        exec 'highlight LspDiagnosticsUnderlineError ctermbg=NONE guibg=NONE gui=underline guisp=' . s:red.hex
        exec 'highlight LspDiagnosticsUnderlineWarning ctermbg=NONE guibg=NONE gui=underline guisp=' . s:blue.hex
        exec 'highlight LspDiagnosticsUnderlineInformation ctermbg=NONE guibg=NONE gui=underline guisp=' . s:yellow.hex
        exec 'highlight LspDiagnosticsUnderlineHint ctermbg=NONE guibg=NONE gui=underline guisp=' . s:sky.hex
    endif
    highlight! link LspDiagnosticsVirtualTextWarning MoonflyGrey241
    highlight! link LspDiagnosticsVirtualTextError MoonflyGrey241
    highlight! link LspDiagnosticsVirtualTextInformation MoonflyGrey241
    highlight! link LspDiagnosticsVirtualTextHint MoonflyGrey241
    highlight! link LspDiagnosticsSignError MoonflyRedAlert
    highlight! link LspDiagnosticsSignWarning MoonflyYellowAlert
    highlight! link LspDiagnosticsSignInformation MoonflySkyAlert
    highlight! link LspDiagnosticsSignHint MoonflyWhiteAlert
    highlight! link LspDiagnosticsFloatingError MoonflyRed
    highlight! link LspDiagnosticsFloatingWarning MoonflyYellow
    highlight! link LspDiagnosticsFloatingInformation MoonflySky
    highlight! link LspDiagnosticsFloatingHint MoonflyWhite
    highlight! link LspSignatureActiveParameter MoonflyVisual
endif

" Neovim only plugins
if has('nvim')
    " NvimTree plugin
    highlight! link NvimTreeFolderIcon MoonflyBlue
    highlight! link NvimTreeFolderName MoonflyBlue
    highlight! link NvimTreeIndentMarker MoonflyGrey236
    highlight! link NvimTreeOpenedFolderName MoonflyBlue
    highlight! link NvimTreeRootFolder MoonflyPurple
    highlight! link NvimTreeSpecialFile MoonflyYellow
    highlight! link NvimTreeWindowPicker DiffChange
    exec 'highlight NvimTreeExecFile ctermfg=' . s:green.term . ' guifg=' . s:green.hex . ' gui=none'
    exec 'highlight NvimTreeImageFile ctermfg=' . s:violet.term . ' guifg=' . s:violet.hex . ' gui=none'
    exec 'highlight NvimTreeOpenedFile ctermfg=' . s:yellow.term . ' guifg=' . s:yellow.hex . ' gui=none'
    exec 'highlight NvimTreeSymlink ctermfg=' . s:turquoise.term . ' guifg=' . s:turquoise.hex . ' gui=none'

    " Neo-tree plugin
    highlight! link NeoTreeDimText MoonflyGrey235
    highlight! link NeoTreeDotfile MoonflyGrey236
    highlight! link NeoTreeGitConflict MoonflyCrimson
    highlight! link NeoTreeGitModified MoonflyViolet
    highlight! link NeoTreeGitUntracked MoonflyGrey241
    highlight! link NeoTreeMessage MoonflyGrey247
    highlight! link NeoTreeModified MoonflyYellow
    highlight! link NeoTreeRootName MoonflyPurple

    " Telescope plugin
    highlight! link TelescopeBorder MoonflyGrey236
    highlight! link TelescopeMatching MoonflyCoral
    highlight! link TelescopeMultiSelection MoonflyCrimson
    highlight! link TelescopeNormal MoonflyGrey249
    highlight! link TelescopePreviewDate MoonflyGrey246
    highlight! link TelescopePreviewGroup MoonflyGrey246
    highlight! link TelescopePreviewLink MoonflyTurquoise
    highlight! link TelescopePreviewMatch MoonflyVisual
    highlight! link TelescopePreviewRead MoonflyOrange
    highlight! link TelescopePreviewSize MoonflyEmerald
    highlight! link TelescopePreviewUser MoonflyGrey246
    highlight! link TelescopePromptPrefix MoonflyBlue
    highlight! link TelescopeResultsDiffAdd MoonflyGreen
    highlight! link TelescopeResultsDiffChange MoonflyRed
    highlight! link TelescopeResultsSpecialComment MoonflyGrey241
    highlight! link TelescopeSelectionCaret MoonflyCrimson
    highlight! link TelescopeTitle MoonflyGrey241
    exec 'highlight TelescopeSelection ctermbg=' . s:grey0.term . ' ctermfg=' . s:grey254.term . ' guibg=' . s:grey0.hex . ' guifg=' . s:grey254.hex

    " gitsigns.nvim plugin
    highlight! link GitSignsAdd MoonflyEmeraldAlert
    highlight! link GitSignsAddLn MoonflyGreen
    highlight! link GitSignsChange MoonflyYellowAlert
    highlight! link GitSignsChangeDelete MoonflyCoralAlert
    highlight! link GitSignsChangeLn MoonflyYellow
    highlight! link GitSignsChangeNr MoonflyYellowAlert
    highlight! link GitSignsDelete MoonflyRedAlert
    highlight! link GitSignsDeleteLn MoonflyRed
    exec 'highlight GitSignsAddInline ctermbg=' . s:green.term . ' ctermfg=' . s:black.term . ' guibg=' . s:green.hex . ' guifg=' . s:black.hex
    exec 'highlight GitSignsChangeInline ctermbg=' . s:yellow.term . ' ctermfg=' . s:black.term . ' guibg=' . s:yellow.hex . ' guifg=' . s:black.hex
    exec 'highlight GitSignsDeleteInline ctermbg=' . s:red.term . ' ctermfg=' . s:black.term . ' guibg=' . s:red.hex . ' guifg=' . s:black.hex

    " Hop plugin
    highlight! link HopCursor IncSearch
    highlight! link HopNextKey MoonflyYellow
    highlight! link HopNextKey1 MoonflyBlue
    highlight! link HopNextKey2 MoonflyCrimson
    highlight! link HopUnmatched MoonflyGrey247

    " Barbar plugin
    highlight! link BufferCurrent MoonflyWhiteLineActive
    highlight! link BufferCurrentIndex MoonflyWhiteLineActive
    highlight! link BufferCurrentMod MoonflyYellowLineActive
    highlight! link BufferTabpages MoonflyBlueLine
    highlight! link BufferVisible MoonflyGrey246Line
    highlight! link BufferVisibleIndex MoonflyGrey246Line
    highlight! link BufferVisibleMod MoonflyYellowLine
    highlight! link BufferVisibleSign MoonflyGrey246Line
    exec 'highlight BufferCurrentSign ctermbg=' . s:grey238.term . ' ctermfg=' . s:blue.term . ' guibg=' . s:grey238.hex . ' guifg=' . s:blue.hex
    exec 'highlight BufferInactive ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey246.term . ' guibg=' . s:grey236.hex . ' guifg=' . s:grey246.hex
    exec 'highlight BufferInactiveMod ctermbg=' . s:grey236.term . ' ctermfg=' . s:yellow.term . ' guibg=' . s:grey236.hex . ' guifg=' . s:yellow.hex
    exec 'highlight BufferInactiveSign ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey247.term . ' guibg=' . s:grey236.hex . ' guifg=' . s:grey247.hex

    " Bufferline plugin
    exec 'highlight BufferLineFill ctermbg=bg ctermfg=bg guibg=bg guifg=bg'
    highlight! link BufferLineBackground MoonflyGrey246Line
    highlight! link BufferLineBuffer BufferLineBackground
    highlight! link BufferLineBufferSelected MoonflyWhiteLineActive
    highlight! link BufferLineBufferVisible MoonflyGrey247Line
    highlight! link BufferLineCloseButton BufferLineBackground
    highlight! link BufferLineCloseButtonSelected MoonflyBlueLineActive
    highlight! link BufferLineCloseButtonVisible MoonflyGrey247Line
    highlight! link BufferLineIndicatorSelected MoonflyBlueLineActive
    highlight! link BufferLineIndicatorVisible MoonflyGrey247Line
    highlight! link BufferLineModified BufferLineBackground
    highlight! link BufferLineModifiedSelected MoonflyEmeraldLineActive
    highlight! link BufferLineModifiedVisible MoonflyEmeraldLine
    highlight! link BufferLineSeparator BufferLineFill
    highlight! link BufferLineSeparatorSelected BufferLineFill
    highlight! link BufferLineTab BufferLineBackground
    highlight! link BufferLineTabClose MoonflyBlueLine
    highlight! link BufferLineTabSelected MoonflyBlueLineActive

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
    exec 'highlight IndentBlanklineChar ctermfg=' . s:grey235.term . ' guifg=' . s:grey235.hex . ' gui=nocombine'
    exec 'highlight IndentBlanklineSpaceChar ctermfg=' . s:grey235.term . ' guifg=' . s:grey235.hex . ' gui=nocombine'
    exec 'highlight IndentBlanklineSpaceCharBlankline ctermfg=' . s:grey235.term . ' guifg=' . s:grey235.hex . ' gui=nocombine'

    " Mini.nvim plugin
    highlight! link MiniCompletionActiveParameter MoonflyVisual
    highlight! link MiniCursorword MoonflyUnderline
    highlight! link MiniCursorwordCurrent MoonflyUnderline
    highlight! link MiniIndentscopePrefix MoonflyNoCombine
    highlight! link MiniIndentscopeSymbol MoonflyWhite
    highlight! link MiniJump SpellRare
    highlight! link MiniStarterCurrent MoonflyNoCombine
    highlight! link MiniStarterFooter Title
    highlight! link MiniStarterHeader MoonflyViolet
    highlight! link MiniStarterInactive Comment
    highlight! link MiniStarterItem Normal
    highlight! link MiniStarterItemBullet Delimiter
    highlight! link MiniStarterItemPrefix MoonflyYellow
    highlight! link MiniStarterQuery MoonflySky
    highlight! link MiniStarterSection MoonflyCrimson
    highlight! link MiniStatuslineModeCommand MoonflyYellowMode
    highlight! link MiniStatuslineModeInsert MoonflyEmeraldMode
    highlight! link MiniStatuslineModeNormal MoonflyBlueMode
    highlight! link MiniStatuslineModeOther MoonflyTurquoiseMode
    highlight! link MiniStatuslineModeReplace MoonflyCrimsonMode
    highlight! link MiniStatuslineModeVisual MoonflyPurpleMode
    highlight! link MiniSurround IncSearch
    highlight! link MiniTablineCurrent MoonflyWhiteLineActive
    highlight! link MiniTablineFill TabLineFill
    highlight! link MiniTablineModifiedCurrent MoonflyYellowLineActive
    highlight! link MiniTablineModifiedVisible MoonflyYellowLine
    highlight! link MiniTablineTabpagesection MoonflyBlueMode
    highlight! link MiniTablineVisible MoonflyGrey246Line
    highlight! link MiniTestEmphasis MoonflyUnderline
    highlight! link MiniTestFail MoonflyRed
    highlight! link MiniTestPass MoonflyGreen
    highlight! link MiniTrailspace MoonflyCrimsonMode
    exec 'highlight MiniJump2dSpot ctermfg=' . s:yellow.term . ' cterm=underline,nocombine guifg=' . s:yellow.hex . ' gui=underline,nocombine'
    exec 'highlight MiniStatuslineDevinfo ctermbg=' . s:grey241.term   . ' ctermfg=' . s:white.term   . ' cterm=none guibg=' . s:grey241.hex . ' guifg=' . s:white.hex . ' gui=none'
    exec 'highlight MiniStatuslineFileinfo ctermbg=' . s:grey241.term   . ' ctermfg=' . s:white.term   . ' cterm=none guibg=' . s:grey241.hex . ' guifg=' . s:white.hex . ' gui=none'
    exec 'highlight MiniStatuslineFilename ctermbg=' . s:grey236.term   . ' ctermfg=' . s:grey247.term . ' guibg=' . s:grey236.hex . ' guifg=' . s:grey247.hex
    exec 'highlight MiniStatuslineInactive ctermbg=' . s:grey236.term   . ' ctermfg=' . s:grey247.term . ' guibg=' . s:grey236.hex   . ' guifg=' . s:grey247.hex
    exec 'highlight MiniTablineHidden ctermbg=' . s:grey236.term . ' ctermfg=' . s:grey246.term . ' guibg='   . s:grey236.hex . ' guifg=' . s:grey246.hex
    exec 'highlight MiniTablineModifiedHidden ctermbg=' . s:grey236.term . ' ctermfg=' . s:yellow.term   . ' guibg=' . s:grey236.hex . ' guifg=' . s:yellow.hex

    " Dashboard plugin
    highlight! link DashboardCenter MoonflyViolet
    highlight! link DashboardFooter MoonflyCoral
    highlight! link DashboardHeader MoonflyBlue
    highlight! link DashboardShortCut MoonflyTurquoise
endif

set background=dark
