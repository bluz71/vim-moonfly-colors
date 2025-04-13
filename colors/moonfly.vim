" Dark Vim/Neovim colorscheme.
"
" URL:      github.com/bluz71/vim-moonfly-colors
" License:  MIT (https://opensource.org/licenses/MIT)

" Clear highlights and reset syntax.
highlight clear
if exists('syntax_on')
    syntax reset
endif

" Set colorscheme name.
let g:colors_name = 'moonfly'

" Define theme options.
let g:moonflyCursorColor = get(g:, 'moonflyCursorColor', v:false)
let g:moonflyItalics = get(g:, 'moonflyItalics', v:true)
let g:moonflyNormalFloat = get(g:, 'moonflyNormalFloat', v:false)
let g:moonflyTerminalColors = get(g:, 'moonflyTerminalColors', v:true)
let g:moonflyTransparent = get(g:, 'moonflyTransparent', v:false)
let g:moonflyUndercurls = get(g:, 'moonflyUndercurls', v:true)
let g:moonflyUnderlineMatchParen = get(g:, 'moonflyUnderlineMatchParen', v:false)
let g:moonflyVirtualTextColor =  get(g:, 'moonflyVirtualTextColor', v:false)
let g:moonflyWinSeparator = get(g:, 'moonflyWinSeparator', 1)

" Load theme style independently for Neovim and Vim.
if has('nvim')
    lua require("moonfly").style()
else
    set termguicolors " Enable Vim true-color support
    call moonfly#Style()
end

set background=dark " moonfly is a dark theme
