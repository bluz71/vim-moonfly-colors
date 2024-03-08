" moonfly color scheme for airline (https://github.com/vim-airline/vim-airline).
"
" URL:     github.com/bluz71/vim-moonfly-colors
" License: MIT (https://opensource.org/licenses/MIT)

let s:white   = ['#c6c6c6', 251]
let s:grey62  = ["#9e9e9e", 247]
let s:grey18  = ['#303030', 236]
let s:grey11  = ['#1c1c1c', 234]
let s:blue    = ['#80a0ff', 4]
let s:emerald = ['#36c692', 10]
let s:purple  = ['#ae81ff', 13]
let s:yellow  = ['#e3c78a', 3]
let s:crimson = ['#ff5189', 9]

let s:normal1      = [s:grey11[0],  s:blue[0],    s:grey11[1],  s:blue[1]]
let s:normal2      = [s:white[0],   s:grey18[0],  s:white[1],   s:grey18[1]]
let s:normal3      = [s:white[0],   s:grey18[0],  s:white[1],   s:grey18[1]]
let s:inactive1    = [s:grey62[0],  s:grey18[0],  s:grey62[1],  s:grey18[1]]
let s:inactive2    = [s:grey62[0],  s:grey18[0],  s:grey62[1],  s:grey18[1]]
let s:inactive3    = [s:grey62[0],  s:grey18[0],  s:grey62[1],  s:grey18[1]]
let s:insert1      = [s:grey11[0],  s:emerald[0], s:grey11[1],  s:emerald[1]]
let s:insert2      = [s:white[0],   s:grey18[0],  s:white[1],   s:grey18[1]]
let s:insert3      = [s:white[0],   s:grey18[0],  s:white[1],   s:grey18[1]]
let s:visual1      = [s:grey11[0],  s:purple[0],  s:grey11[1],  s:purple[1]]
let s:visual2      = [s:white[0],   s:grey18[0],  s:white[1],   s:grey18[1]]
let s:visual3      = [s:white[0],   s:grey18[0],  s:white[1],   s:grey18[1]]
let s:commandline1 = [s:grey11[0],  s:yellow[0],  s:grey11[1],  s:yellow[1]]
let s:commandline2 = [s:white[0],   s:grey18[0],  s:white[1],   s:grey18[1]]
let s:commandline3 = [s:white[0],   s:grey18[0],  s:white[1],   s:grey18[1]]
let s:replace1     = [s:grey11[0],  s:crimson[0], s:grey11[1],  s:crimson[1]]
let s:replace2     = [s:white[0],   s:grey18[0],  s:white[1],   s:grey18[1]]
let s:replace3     = [s:white[0],   s:grey18[0],  s:white[1],   s:grey18[1]]
let s:warning      = [s:yellow[0],  s:grey18[0],  s:yellow[1],  s:grey18[1]]
let s:error        = [s:crimson[0], s:grey18[0],  s:crimson[1], s:grey18[1]]

if exists('g:airline_theme')
    let g:airline#themes#moonfly#palette = {}
    let g:airline#themes#moonfly#palette = {}

    let g:airline#themes#moonfly#palette.normal                 = airline#themes#generate_color_map(s:normal1, s:normal2, s:normal3)
    let g:airline#themes#moonfly#palette.normal.airline_warning = s:warning
    let g:airline#themes#moonfly#palette.normal.airline_error   = s:error

    let g:airline#themes#moonfly#palette.insert                 = airline#themes#generate_color_map(s:insert1, s:insert2, s:insert3)
    let g:airline#themes#moonfly#palette.insert.airline_warning = s:warning
    let g:airline#themes#moonfly#palette.insert.airline_error   = s:error

    let g:airline#themes#moonfly#palette.visual                 = airline#themes#generate_color_map(s:visual1, s:visual2, s:visual3)
    let g:airline#themes#moonfly#palette.visual.airline_warning = s:warning
    let g:airline#themes#moonfly#palette.visual.airline_error   = s:error

    let g:airline#themes#moonfly#palette.commandline                 = airline#themes#generate_color_map(s:commandline1, s:commandline2, s:commandline3)
    let g:airline#themes#moonfly#palette.commandline.airline_warning = s:warning
    let g:airline#themes#moonfly#palette.commandline.airline_error   = s:error

    let g:airline#themes#moonfly#palette.replace                 = airline#themes#generate_color_map(s:replace1, s:replace2, s:replace3)
    let g:airline#themes#moonfly#palette.replace.airline_warning = s:warning
    let g:airline#themes#moonfly#palette.replace.airline_error   = s:error

    let g:airline#themes#moonfly#palette.inactive                 = airline#themes#generate_color_map(s:inactive1, s:inactive2, s:inactive3)
    let g:airline#themes#moonfly#palette.inactive.airline_warning = s:warning
    let g:airline#themes#moonfly#palette.inactive.airline_error   = s:error
endif
