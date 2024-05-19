" Dark Vim/Neovim color scheme.
"
" URL:     github.com/bluz71/vim-moonfly-colors
" License: MIT (https://opensource.org/licenses/MIT)

if has('nvim') && !has('nvim-0.9')
    lua vim.api.nvim_echo({
        \ { "moonfly requires Neovim 0.9 or later.\n", "WarningMsg" },
        \ { "Please use the moonfly 'legacy' branch if you can't upgrade Neovim.\n", "Normal"} },
        \ false, {})
    finish
endif

" Clear highlights and reset syntax.
highlight clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name='moonfly'

" Enable terminal true-color support.
set termguicolors

let g:moonflyCursorColor = get(g:, 'moonflyCursorColor', v:false)
let g:moonflyItalics = get(g:, 'moonflyItalics', v:true)
let g:moonflyNormalFloat = get(g:, 'moonflyNormalFloat', v:false)
let g:moonflyTerminalColors = get(g:, 'moonflyTerminalColors', v:true)
let g:moonflyTransparent = get(g:, 'moonflyTransparent', v:false)
let g:moonflyUndercurls = get(g:, 'moonflyUndercurls', v:true)
let g:moonflyUnderlineMatchParen = get(g:, 'moonflyUnderlineMatchParen', v:false)
let g:moonflyVirtualTextColor =  get(g:, 'moonflyVirtualTextColor', v:false)
let g:moonflyWinSeparator = get(g:, 'moonflyWinSeparator', 1)

if has('nvim')
    lua require("moonfly").style()
else
    call moonfly#Style()
end

" moonfly is a dark theme. Note, set this at the end for startup performance
" reasons.
set background=dark
