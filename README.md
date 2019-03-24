# moonfly

_moonfly_ is a dark color scheme for Vim and Neovim that has taken inspiration
from:

-  [sunburst](http://vimcolors.com/177/Sunburst/dark)
-  [xoria256](https://github.com/vim-scripts/xoria256.vim)
-  [One Dark](https://github.com/atom/one-dark-syntax)
-  [One](https://github.com/rakr/vim-one)
-  [monokai](https://atom.io/themes/monokai)

Note, the _moonfly_ color scheme does incrementally change from time to time,
primarily in regards to language and plugin theming. However, the core color
palette will not change; **except** the time I changed crimson (July 1 2017),
sorry.

## Primary Colors

| Normal     | Color                                                       | Bright      | Color                                                        |
| ---------- | ----------------------------------------------------------- | ----------- | ------------------------------------------------------------ |
| Background | ![background](https://placehold.it/64/080808/000000?text=+) | Foreground  | ![foreground](https://placehold.it/64/b2b2b2/000000?text=+)  |
| Grey       | ![grey](https://placehold.it/64/373c40/000000?text=+)       | Coral       | ![coral](https://placehold.it/64/f09479/000000?text=+)       |
| Red        | ![red](https://placehold.it/64/ff5454/000000?text=+)        | Crimson     | ![crimson](https://placehold.it/64/f74782/000000?text=+)     |
| Green      | ![green](https://placehold.it/64/8cc85f/000000?text=+)      | Emerald     | ![emerald](https://placehold.it/64/42cf89/000000?text=+)     |
| Khaki      | ![khaki](https://placehold.it/64/e3c78a/000000?text=+)      | Wheat       | ![wheat](https://placehold.it/64/cfcfb0/000000?text=+)       |
| Blue       | ![blue](https://placehold.it/64/80a0ff/000000?text=+)       | Light Blue  | ![light-blue](https://placehold.it/64/78c2ff/000000?text=+)  |
| Magenta    | ![magenta](https://placehold.it/64/ce76e8/000000?text=+)    | Purple      | ![purple](https://placehold.it/64/ae81ff/000000?text=+)      |
| Turquoise  | ![turquoise](https://placehold.it/64/7ee0ce/000000?text=+)  | Light Green | ![light-green](https://placehold.it/64/85dc85/000000?text=+) |
| Orange     | ![orange](https://placehold.it/64/de935f/000000?text=+)     | Violet      | ![violet](https://placehold.it/64/e2637f/000000?text=+)      |

## Screenshots

#### Ruby

<img width="800" alt="ruby" src="https://raw.githubusercontent.com/bluz71/misc-binaries/master/moonfly/ruby_moonfly.png">

#### JavaScript

<img width="800" alt="javascript" src="https://raw.githubusercontent.com/bluz71/misc-binaries/master/moonfly/javascript_moonfly.png">

The font in use is [Iosevka](https://github.com/be5invis/Iosevka).

## Languages explicitly styled

-  C/C++
-  Shell
-  Python
-  Ruby
-  Crystal
-  Elixir
-  [JavaScript](https://github.com/pangloss/vim-javascript)
-  CoffeeScript
-  PureScript
-  [TypeScript](https://github.com/HerringtonDarkholme/yats.vim)
-  [Markdown](https://github.com/plasticboy/vim-markdown)
-  Go
-  Rust
-  Java
-  Scala
-  PHP
-  Haskell
-  Clojure
-  Elm
-  Lua

## Plugins explicity styled

-  [NERDTree](https://github.com/scrooloose/nerdtree)
-  [Neomake](https://github.com/neomake/neomake)
-  [ALE](https://github.com/w0rp/ale)
-  [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
-  [clever-f](https://github.com/rhysd/clever-f.vim)
-  [BufExplorer](https://github.com/jlanzarotta/bufexplorer)
-  [Tagbar](https://github.com/majutsushi/tagbar)
-  [fzf.vim](https://github.com/junegunn/fzf.vim)
-  [indentLine](https://github.com/Yggdroot/indentLine) (please set `let g:indentLine_setColors = 0` in your _vimrc_)

## Statusline

The _moonfly_ color scheme supports
[lightline.vim](https://github.com/itchyny/lightline.vim). To enable the
_moonfly_ lightline colorscheme, after the _lightline.vim_ plugin has been
installed, please add the following to your _vimrc_:

```viml
let g:lightline = { 'colorscheme': 'moonfly' }
```

The _moonfly_ color scheme also supports
[vim-airline](https://github.com/vim-airline/vim-airline). To enable the
_moonfly_ airline theme, after the _vim-airline_ plugin has been installed,
please add the following to your _vimrc_:

```viml
let g:airline_theme = 'moonfly'
```

Alternatively, a companion status line,
[vim-moonfly-statusline](https://github.com/bluz71/vim-moonfly-statusline), is
available for those that just want a simple _moonfly_ themed statusline.

## Installation

Use your favoured plugin manager to install **bluz71/vim-moonfly-colors** then
set the colorscheme in your _vimrc_ file.

If using [vim-plug](https://github.com/junegunn/vim-plug) do the following:

1. Add `Plug 'bluz71/vim-moonfly-colors'` to your _vimrc_
2. Run `:PlugInstall`
3. Add `colorscheme moonfly` to your _vimrc_, make sure this line appears
   **after** the _Plug_ declaration.

## Options

The `g:moonflyCursorLineNr` option specifies whether to highlight the cursor
line, as blue, in the number column if the `relativenumber` or `cursorline`
settings are in effect. By default the cursor line will be highlighted as such.

To disable highlighting of the current cursor line in the number column please
add the following to your _vimrc_:

```viml
let g:moonflyCursorLineNr = 0
```

The `g:moonflyCursorColor` option specifies whether to color the cursor or not.
By default the cursor will **NOT** be colored. If you prefer a colored cursor
then add the following to your _vimrc_:

```viml
let g:moonflyCursorColor = 1
```

The `g:moonflyTerminalColors` option specifies whether to use the moonfly color
palette in `:terminal` windows when `termguicolors` is set. By default this
option is **enabled**, if you prefer not to use the moonfly color palette for
the first 16 terminal colors then add the following to your _vimrc_:

```viml
let g:moonflyTerminalColors = 0
```

The `g:moonflyUnderlineMatchParen` options specifies whether to underline
matching parentheses. By default this option is **disabled**. If you want to
underline matching parentheses then add the following to your _vimrc_:

```viml
let g:moonflyUnderlineMatchParen = 1
```

## True Color Terminals

Many terminal programs, such as [iTerm2](http://www.iterm2.com) and
[GNOME Terminal](https://wiki.gnome.org/Apps/Terminal), support
[24-bit true colors](https://gist.github.com/XVilka/8346728). Modern versions
of Vim and Neovim, on such terminals, support true colors when
`set termguicolors` is enabled.

Caveat, _Terminal.app_ on macOS and _xterm_ on Unix do **not** support true
colors.

On terminals that do support true colors, and when `termguicolors` is set,
the _moonfly_ color scheme will not require any terminal configuration to emit
the correct _moonfly_ colors.

For the true colors _moonfly_ color scheme to display correctly inside _tmux_
the following setting will be required in _~/.tmux.conf_:

```
set -ga terminal-overrides ',xterm-256color:Tc'
```

Vim, as against Neovim, inside _tmux_, will also require the following setting
be added to _vimrc:_

```viml
set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum
```

Note: `^[` in the above snippet is a real escape character; to insert it,
enter `Ctrl-v` followed by `Esc`. Repeating, the above `t_8*` settings are
**not** required for Neovim.

If consistency between Vim colors and `$SHELL` colors is important then I
recommend proceeding with the 256-color configurations listed in the next
section.

## 256 Color Terminals

The _moonfly_ color scheme, when used with Vim absent `termguicolors`,
**requires** the host terminal be configured with a specific color palette.

Firstly, the [terminal
emulator](https://en.wikipedia.org/wiki/Terminal_emulator) must be configured
for 256 colors, which usually means setting the terminal's type to
**xterm-256color** or **screen-256color** when used inside
[tmux](https://tmux.github.io/).

The terminal can now be configured with the following _moonfly_ colors:

| Type           | Category         | Value    | Color                                                       |
| -------------- | ---------------- | -------- | ----------------------------------------------------------- |
| Background     | Background       | `080808` | ![background](https://placehold.it/32/080808/000000?text=+) |
| Foreground     | Forground        | `b2b2b2` | ![background](https://placehold.it/32/b2b2b2/000000?text=+) |
| Bold           | Bold             | `eeeeee` | ![background](https://placehold.it/32/eeeeee/000000?text=+) |
| Cursor         | Cursor           | `9e9e9e` | ![background](https://placehold.it/32/9e9e9e/000000?text=+) |
| Cursor Text    | Cursor Text      | `080808` | ![background](https://placehold.it/32/080808/000000?text=+) |
| Highlight      | Highlight        | `b2ceee` | ![background](https://placehold.it/32/b2ceee/000000?text=+) |
| Highlight Text | Highlight Text   | `080808` | ![background](https://placehold.it/32/080808/000000?text=+) |
| Color 1        | Black (normal)   | `373c40` | ![background](https://placehold.it/32/373c40/000000?text=+) |
| Color 2        | Red (normal)     | `ff5454` | ![background](https://placehold.it/32/ff5454/000000?text=+) |
| Color 3        | Green (normal)   | `8cc85f` | ![background](https://placehold.it/32/8cc85f/000000?text=+) |
| Color 4        | Yellow (normal)  | `e3c78a` | ![background](https://placehold.it/32/e3c78a/000000?text=+) |
| Color 5        | Blue (normal)    | `80a0ff` | ![background](https://placehold.it/32/80a0ff/000000?text=+) |
| Color 6        | Magenta (normal) | `ce76e8` | ![background](https://placehold.it/32/ce76e8/000000?text=+) |
| Color 7        | Cyan (normal)    | `7ee0ce` | ![background](https://placehold.it/32/7ee0ce/000000?text=+) |
| Color 8        | White (normal)   | `de935f` | ![background](https://placehold.it/32/de935f/000000?text=+) |
| Color 9        | Black (bright)   | `f09479` | ![background](https://placehold.it/32/f09479/000000?text=+) |
| Color 10       | Red (bright)     | `f74782` | ![background](https://placehold.it/32/f74782/000000?text=+) |
| Color 11       | Green (bright)   | `42cf89` | ![background](https://placehold.it/32/42cf89/000000?text=+) |
| Color 12       | Yellow (bright)  | `cfcfb0` | ![background](https://placehold.it/32/cfcfb0/000000?text=+) |
| Color 13       | Blue (bright)    | `78c2ff` | ![background](https://placehold.it/32/78c2ff/000000?text=+) |
| Color 14       | Magenta (bright) | `ae81ff` | ![background](https://placehold.it/32/ae81ff/000000?text=+) |
| Color 15       | Cyan (bright)    | `85dc85` | ![background](https://placehold.it/32/85dc85/000000?text=+) |
| Color 16       | White (bright)   | `e2637f` | ![background](https://placehold.it/32/e2637f/000000?text=+) |

_iterm2_ users on macOS can import [this](moonfly.itermcolors) color scheme.

_Gnome Terminal_ users can run [this](gnome-terminal-moonfly.sh) script to
create a _Moonfly_ profile. Firstly before executing the script, please install
the `dconf-cli` command line utility for modern versions of Gnome (3.28 and
later), for example `sudo apt install dconf-cli`. Lastly after executing the
script, please set the _cursor_ and _highlight_ colors by hand, with the color
values listed above, in `Preferences` / `Moonfly` / `Colors`.

_xterm_ users on Linux can add the following snippet to their _~/.Xresources_
file and launch xterm with `xterm -name xterm-moonfly`.

```
xterm-moonfly*background:  #080808
xterm-moonfly*foreground:  #b2b2b2
xterm-moonfly*cursorColor: #9e9e9e
xterm-moonfly*colorBD:     #eeeeee
xterm-moonfly*color0:      #373c40
xterm-moonfly*color1:      #ff5454
xterm-moonfly*color2:      #8cc85f
xterm-moonfly*color3:      #e3c78a
xterm-moonfly*color4:      #80a0ff
xterm-moonfly*color5:      #ce76e8
xterm-moonfly*color6:      #7ee0ce
xterm-moonfly*color7:      #de935f
xterm-moonfly*color8:      #f09479
xterm-moonfly*color9:      #f74782
xterm-moonfly*color10:     #42cf89
xterm-moonfly*color11:     #cfcfb0
xterm-moonfly*color12:     #78c2ff
xterm-moonfly*color13:     #ae81ff
xterm-moonfly*color14:     #85dc85
xterm-moonfly*color15:     #e2637f
```

A complete _Xresources_ file is available
[here](https://github.com/bluz71/dotfiles/blob/master/Xresources).

## License

[MIT](https://opensource.org/licenses/MIT)
