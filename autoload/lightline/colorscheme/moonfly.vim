" moonfly color scheme for lightline (github.com/itchyny/lightline.vim).
"
" URL:     github.com/bluz71/vim-moonfly-colors
" License: MIT (https://opensource.org/licenses/MIT)

let s:white   = ['#c6c6c6', 251]
let s:grey247 = ['#9e9e9e', 247]
let s:grey236 = ['#303030', 236]
let s:grey234 = ['#1c1c1c', 234]
let s:blue    = ['#80a0ff', 4]
let s:purple  = ['#ae81ff', 13]
let s:crimson = ['#ff5189', 9]

if exists('g:lightline')
    let s:p = {
        \ 'normal': {},
        \ 'inactive': {},
        \ 'insert': {},
        \ 'replace': {},
        \ 'visual': {},
        \ 'tabline': {}}

    let s:p.normal.left     = [[s:grey234, s:blue],    [s:white, s:grey236]]
    let s:p.normal.middle   = [[s:white,   s:grey236]]
    let s:p.normal.right    = [[s:white,   s:grey236], [s:blue, s:grey236]]
    let s:p.normal.warning  = [[s:white,   s:grey236]]
    let s:p.normal.error    = [[s:blue,    s:grey236]]

    let s:p.inactive.left   = [[s:grey247, s:grey236], [s:grey247, s:grey236]]
    let s:p.inactive.middle = [[s:grey247, s:grey236]]
    let s:p.inactive.right  = [[s:grey247, s:grey236], [s:grey247, s:grey236]]

    let s:p.insert.left     = [[s:grey234, s:white],   [s:white, s:grey236]]
    let s:p.replace.left    = [[s:grey234, s:crimson], [s:white, s:grey236]]
    let s:p.visual.left     = [[s:grey234, s:purple],  [s:white, s:grey236]]

    let s:p.tabline.left    = [[s:grey247, s:grey236]]
    let s:p.tabline.middle  = [[s:grey247, s:grey236]]
    let s:p.tabline.right   = [[s:grey247, s:grey236]]
    let s:p.tabline.tabsel  = [[s:blue,    s:grey236]]

    let g:lightline#colorscheme#moonfly#palette = lightline#colorscheme#flatten(s:p)
endif
