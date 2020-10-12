![moonfly](https://raw.githubusercontent.com/bluz71/misc-binaries/master/headings/moonfly.png)
==========

_moonfly_ is a dark color scheme for Vim and Neovim that has taken inspiration
from:

- [sunburst](http://vimcolors.com/177/Sunburst/dark)
- [xoria256](https://github.com/vim-scripts/xoria256.vim)
- [One Dark](https://github.com/atom/one-dark-syntax)
- [One](https://github.com/rakr/vim-one)
- [monokai](https://atom.io/themes/monokai)

Be aware, the _moonfly_ color scheme does incrementally change from time to
time, primarily with regard to language and plugin theming.

:point_right: I maintain another dark Vim theme named
[nightfly](https://github.com/bluz71/vim-nightfly-guicolors) which may be of
interest.

Color Palette
-------------

![palette](https://raw.githubusercontent.com/bluz71/misc-binaries/master/moonfly/moonfly-palette.png)

Screenshots
-----------

### Ruby

<img width="800" alt="ruby" src="https://raw.githubusercontent.com/bluz71/misc-binaries/master/moonfly/ruby_moonfly.png">

### JavaScript

<img width="800" alt="javascript" src="https://raw.githubusercontent.com/bluz71/misc-binaries/master/moonfly/javascript_moonfly.png">

The font in use is [Iosevka](https://github.com/be5invis/Iosevka).

Languages explicitly styled
---------------------------

- All Neovim Treesitter highlighted-languages
- C/C++
- Clojure
- CoffeeScript
- Crystal
- Elixir
- Elm
- Dart
- Go
- Haskell
- Java
- [JavaScript](https://github.com/pangloss/vim-javascript)
- Lua
- Markdown
- PHP
- PureScript
- Python
- Ruby
- Rust
- Scala
- Shell
- [TypeScript](https://github.com/HerringtonDarkholme/yats.vim)

Plugins explicity styled
------------------------

- [ALE](https://github.com/w0rp/ale)
- [BufExplorer](https://github.com/jlanzarotta/bufexplorer)
- [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
- [fern.vim](https://github.com/lambdalisue/fern.vim)
- [GitGutter](https://github.com/airblade/vim-gitgutter)
- [NERDTree](https://github.com/scrooloose/nerdtree)
- [Neomake](https://github.com/neomake/neomake)
- [Signify](https://github.com/mhinz/vim-signify)
- [Tagbar](https://github.com/majutsushi/tagbar)
- [clever-f](https://github.com/rhysd/clever-f.vim)
- [fzf.vim](https://github.com/junegunn/fzf.vim)
- [indentLine](https://github.com/Yggdroot/indentLine) (please set `let g:indentLine_setColors = 0` in your _vimrc_)
- [vimfiler](https://github.com/Shougo/vimfiler.vim)

Installation
------------

Use your favoured plugin manager to install **bluz71/vim-moonfly-colors** then
set the colorscheme in your _vimrc_ file.

If using [vim-plug](https://github.com/junegunn/vim-plug) do the following:

1. Add `Plug 'bluz71/vim-moonfly-colors'` to your _vimrc_
2. Run `:PlugInstall`
3. Add `colorscheme moonfly` to your _vimrc_, make sure this line appears
   **after** the _Plug_ declaration.

Status line
-----------

The _moonfly_ color scheme supports
[lightline.vim](https://github.com/itchyny/lightline.vim). To enable the
_moonfly_ lightline colorscheme, after the _lightline.vim_ plugin has been
installed, please add the following to your _vimrc_:

```viml
let g:lightline = { 'colorscheme': 'moonfly' }
```

The _moonfly_ color scheme also supports
[vim-airline](https://github.com/vim-airline/vim-airline). With modern versions
of _vim-airline_ the _moonfly_ theme will be automatically loaded.

Alternatively,
[vim-moonfly-statusline](https://github.com/bluz71/vim-moonfly-statusline), is
available for those that just want a simple yet informative _moonfly_ themed
status line.

Options
-------

The `g:moonflyCursorColor` option specifies whether to color the cursor or not.
By default the cursor will **NOT** be colored. If you prefer a colored cursor
then add the following to your _vimrc_:

```viml
let g:moonflyCursorColor = 1
```

The `g:moonflyTerminalColors` option specifies whether to use the moonfly color
palette in `:terminal` windows when `termguicolors` is set. By default this
option is **enabled**. If you prefer not to use the moonfly color palette for
the first 16 terminal colors then add the following to your _vimrc_:

```viml
let g:moonflyTerminalColors = 0
```

The `g:moonflyUnderlineMatchParen` option specifies whether to underline
matching parentheses. By default this option is **disabled**. If you want to
underline matching parentheses then add the following to your _vimrc_:

```viml
let g:moonflyUnderlineMatchParen = 1
```

The `g:moonflyUndercurls` option specifies whether to use undercurls for
spelling and linting errors in GUI versions of Vim, including terminal Vim with
`termguicolors` set. By default this option is **enabled**. If you do not like
the appearance of undercurls then add the following to your _vimrc_:

```viml
let g:moonflyUndercurls = 0
```

The `g:moonflyItalics` option specifies whether to use italics for comments and
certain HTML elements in GUI versions of Vim. By default this option is
**enabled**. If you do not like the appearance of italics then add the following
to your _vimrc_:

```viml
let g:moonflyItalics = 0
```

True Color Terminals
--------------------

Many modern terminals support [24-bit true
colors](https://gist.github.com/XVilka/8346728). Current versions of Vim and
Neovim, on such terminals, support true colors when `set termguicolors` is
enabled.

A list of prevalent terminals that support true colors:

- [iTerm2](http://www.iterm2.com)
- [GNOME Terminal](https://wiki.gnome.org/Apps/Terminal)
- [Windows Terminal](https://github.com/Microsoft/Terminal)
- [Alacritty](https://github.com/alacritty/alacritty)
- [kitty](https://sw.kovidgoyal.net/kitty/index.html)
- [konsole](https://konsole.kde.org)
- [PuTTY](https://putty.org)
- [mintty](https://mintty.github.io)

On terminals that support true colors, and when `termguicolors` is set, the
_moonfly_ color scheme will not require any terminal configuration to emit the
correct theme colors.

For the true color _moonfly_ color scheme to display correctly inside _tmux_
the following setting will usually be required in _~/.tmux.conf_:

```
set -ga terminal-overrides ',xterm-256color:Tc'
```

Vim, as against Neovim, inside _tmux_, will also require the following setting
be added to _vimrc:_

```viml
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
```

Terminal Themes
---------------

A collection of _moonfly_-flavoured terminal themes are provided for those using
_moonfly_ with `termguicolors` (`cterm` users should refer to the next section
and not use these terminal themes):

- _iTerm2_ users on macOS can import [this](terminal_themes/moonfly.itermcolors)
  color scheme.

- _Gnome Terminal_ users can run
  [this](terminal_themes/gnome-terminal-moonfly.sh) script to create a _Moonfly_
  profile. Before executing the script, please install the `dconf-cli` command
  line utility for modern versions of Gnome (3.28 and later), for example `sudo
  apt install dconf-cli`. After executing the script, please set the _cursor_
  and _selection_ colors by hand, with the appropriate color values listed
  above, in `Preferences` / `Moonfly` / `Colors`.

- [Alacritty](https://github.com/alacritty/alacritty) users can copy
  [this](terminal_themes/alacritty.yml) theme into their `alacritty.yml`
  configuration.

- [kitty](https://sw.kovidgoyal.net/kitty) users can use
  [this](terminal_themes/kitty-theme.conf) theme.

256 Color Terminals
-------------------

The _moonfly_ color scheme, when used absent `termguicolors`, **requires** the
host terminal be configured with a specific color palette. In that case the
legacy _moonfly_ `cterm` 256 color terminal theme will be used.

:bell: Nowadays it is strongly recommened to use a true color terminal with a
modern version of Vim or Neovim with `termguicolors` set.

If that is not possible, then the [terminal
emulator](https://en.wikipedia.org/wiki/Terminal_emulator) must be configured
for 256 colors, which usually means setting the terminal's type to
**xterm-256color**, or **screen-256color** when used inside
[tmux](https://tmux.github.io/).

The terminal should then be configured with the following _moonfly_ colors:

| Type           | Category        | Value     | Color                                                       |
|----------------|-----------------|-----------|-------------------------------------------------------------|
| Background     | Background      | `#080808` | ![background](https://placehold.it/32/080808/000000?text=+) |
| Foreground     | Foreground      | `#b2b2b2` | ![background](https://placehold.it/32/b2b2b2/000000?text=+) |
| Bold           | Bold            | `#eeeeee` | ![background](https://placehold.it/32/eeeeee/000000?text=+) |
| Cursor         | Cursor          | `#9e9e9e` | ![background](https://placehold.it/32/9e9e9e/000000?text=+) |
| Cursor Text    | Cursor Text     | `#080808` | ![background](https://placehold.it/32/080808/000000?text=+) |
| Selection      | Selection       | `#b2ceee` | ![background](https://placehold.it/32/b2ceee/000000?text=+) |
| Selection Text | Selection Text  | `#080808` | ![background](https://placehold.it/32/080808/000000?text=+) |
| Color 1        | Black (normal)  | `#373c40` | ![background](https://placehold.it/32/373c40/000000?text=+) |
| Color 2        | Red (normal)    | `#ff5454` | ![background](https://placehold.it/32/ff5454/000000?text=+) |
| Color 3        | Green (normal)  | `#8cc85f` | ![background](https://placehold.it/32/8cc85f/000000?text=+) |
| Color 4        | Yellow (normal) | `#e3c78a` | ![background](https://placehold.it/32/e3c78a/000000?text=+) |
| Color 5        | Blue (normal)   | `#80a0ff` | ![background](https://placehold.it/32/80a0ff/000000?text=+) |
| Color 6        | Purple (normal) | `#d183e8` | ![background](https://placehold.it/32/d183e8/000000?text=+) |
| Color 7        | Cyan (normal)   | `#79dac8` | ![background](https://placehold.it/32/79dac8/000000?text=+) |
| Color 8        | White (normal)  | `#de935f` | ![background](https://placehold.it/32/de935f/000000?text=+) |
| Color 9        | Black (bright)  | `#f09479` | ![background](https://placehold.it/32/f09479/000000?text=+) |
| Color 10       | Red (bright)    | `#ff5189` | ![background](https://placehold.it/32/ff5189/000000?text=+) |
| Color 11       | Green (bright)  | `#36c692` | ![background](https://placehold.it/32/36c692/000000?text=+) |
| Color 12       | Yellow (bright) | `#bfbf97` | ![background](https://placehold.it/32/bfbf97/000000?text=+) |
| Color 13       | Blue (bright)   | `#78c2ff` | ![background](https://placehold.it/32/78c2ff/000000?text=+) |
| Color 14       | Purple (bright) | `#ae81ff` | ![background](https://placehold.it/32/ae81ff/000000?text=+) |
| Color 15       | Cyan (bright)   | `#85dc85` | ![background](https://placehold.it/32/85dc85/000000?text=+) |
| Color 16       | White (bright)  | `#e2637f` | ![background](https://placehold.it/32/e2637f/000000?text=+) |

License
-------

[MIT](https://opensource.org/licenses/MIT)
