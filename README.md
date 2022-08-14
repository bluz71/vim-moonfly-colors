![moonfly](https://raw.githubusercontent.com/bluz71/misc-binaries/master/headings/moonfly.png)
==========

_moonfly_ is a dark colorscheme for Vim & Neovim.

:point_right: I maintain another dark Vim theme named
[nightfly](https://github.com/bluz71/vim-nightfly-guicolors) which may be of
interest.

Screenshot
----------

![screenshot](https://raw.githubusercontent.com/bluz71/misc-binaries/master/moonfly/moonfly-screenshot.png)

Styled Features & Plugins
-------------------------

Vim & Neovim compatible:

- [ALE](https://github.com/dense-analysis/ale)
- [BufExplorer](https://github.com/jlanzarotta/bufexplorer)
- [clever-f](https://github.com/rhysd/clever-f.vim)
- [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
- [Fern](https://github.com/lambdalisue/fern.vim)
- [fzf.vim](https://github.com/junegunn/fzf.vim) (works best with matching [fly16](https://github.com/bluz71/fly16-bat) [bat](https://github.com/sharkdp/bat) theme)
- [GitGutter](https://github.com/airblade/vim-gitgutter)
- [indentLine](https://github.com/Yggdroot/indentLine)
- [lightline](https://github.com/itchyny/lightline.vim)
- [NERDTree](https://github.com/scrooloose/nerdtree)
- [Signify](https://github.com/mhinz/vim-signify)
- [Tagbar](https://github.com/majutsushi/tagbar)
- [vim-airline](https://github.com/vim-airline/vim-airline)

Neovim-only:

- [Neovim Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Neovim Diagnostic](https://neovim.io/doc/user/diagnostic.html)
- [Barbar](https://github.com/romgrk/barbar.nvim)
- [Bufferline](https://github.com/akinsho/bufferline.nvim)
- [Dashboard](https://github.com/glepnir/dashboard-nvim)
- [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [Hop](https://github.com/phaazon/hop.nvim)
- [Indent BlankLine](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Mini](https://github.com/echasnovski/mini.nvim)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)

Installation
------------

Install the **bluz71/vim-moonfly-colors** colorscheme with your preferred plugin
manager.

[vim-plug](https://github.com/junegunn/vim-plug):

```viml
Plug 'bluz71/vim-moonfly-colors'
```

[packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use 'bluz71/vim-moonfly-colors'
```

Usage
-----

Enable the colorscheme after the plugin declaration.

```viml
" Vimscript initialization file
colorscheme moonfly
```

```lua
-- Lua initialization file
vim.cmd [[colorscheme moonfly]]
```

Statusline
----------

- The _moonfly_ colorscheme supports
  [lightline](https://github.com/itchyny/lightline.vim). To enable the _moonfly_
  lightline colorscheme please add the following to your initialization file:

```viml
let g:lightline = { 'colorscheme': 'moonfly' }
```

- The _moonfly_ colorscheme supports
  [vim-airline](https://github.com/vim-airline/vim-airline). The _moonfly_ theme
  will load once vim-airline starts.

- The _moonfly_ colorscheme supports
  [lualine](https://github.com/nvim-lualine/lualine.nvim). The
  _moonfly_ theme will load once Lualine starts.

- Lastly, my own
  [mistfly-statusline](https://github.com/bluz71/vim-mistfly-statusline) is
  available for those that want a simple, fast and informative statusline.

:wrench: Options
----------------

| Option | Default State
|--------|--------------
| [moonflyCursorColor](https://github.com/bluz71/vim-moonfly-colors#moonflycursorcolor)                 | Disabled
| [moonflyItalics](https://github.com/bluz71/vim-moonfly-colors#moonflyitalics)                         | Enabled
| [moonflyNormalFloat](https://github.com/bluz71/vim-moonfly-colors#moonflynormalfloat)                 | Disabled
| [moonflyTerminalColors](https://github.com/bluz71/vim-moonfly-colors#moonflyterminalcolors)           | Enabled
| [moonflyTransparent](https://github.com/bluz71/vim-moonfly-colors#moonflytransparent)                 | Disabled
| [moonflyUndercurls](https://github.com/bluz71/vim-moonfly-colors#moonflyundercurls)                   | Enabled
| [moonflyUnderlineMatchParen](https://github.com/bluz71/vim-moonfly-colors#moonflyunderlinematchparen) | Disabled
| [moonflyWinSeparator](https://github.com/bluz71/vim-moonfly-colors#moonflywinseparator)               | `1`

---

### moonflyCursorColor

The `moonflyCursorColor` option specifies whether to color the cursor or not.
By default the cursor will **NOT** be colored. If you prefer a colored cursor
then add the following to your initialization file:

```viml
" Vimscript initialization file
let g:moonflyCursorColor = v:true
```

```lua
-- Lua initialization file
vim.g.moonflyCursorColor = true
```

---

### moonflyItalics

The `moonflyItalics` option specifies whether to use italics for comments and
certain HTML elements in GUI versions of Vim. By default this option is
**enabled**. If you do not like the appearance of italics then add the following
to your initialization file:

```viml
" Vimscript initialization file
let g:moonflyItalics = v:false
```

```lua
-- Lua initialization file
vim.g.moonflyItalics = false
```

---

### moonflyNormalFloat

The `moonflyNormalFloat` option specifies whether to use moonfly background
and foreground colors in Neovim floating windows. By default this option is
**disabled**, hence, Neovim floating windows will usually be styled with popup
menu colors. If you would like to use moonfly colors instead then add the
following to your configuration:

```viml
" Vimscript initialization file
let g:moonflyNormalFloat = v:true
```

```lua
-- Lua initialization file
vim.g.moonflyNormalFloat = true
```

:bulb: If the above option is set then it is highly recommended to enable
floating window borders to distinguish between the edit and floating windows in
Neovim's LSP client, for example:

```lua
  vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
    vim.lsp.handlers.hover, {
      border = "single"
    }
  )
  vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
    vim.lsp.handlers.signatureHelp, {
      border = "single"
    }
  )
  vim.diagnostic.config({ float = { border = "single" } })
```

:bulb: Likewise, [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) may be
configured as follows for nicer display when `g:moonflyNormalFloat` is enabled:

```lua
local winhighlight = {
  winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel",
}
require('cmp').setup({
  window = {
    completion = cmp.config.window.bordered(winhighlight),
    documentation = cmp.config.window.bordered(winhighlight),
  }
})
```

---

### moonflyTerminalColors

The `moonflyTerminalColors` option specifies whether to use the moonfly color
palette in `:terminal` windows when `termguicolors` is set. By default this
option is **enabled**. If you prefer not to use the moonfly color palette for
the first 16 terminal colors then add the following to your initialization file:

```viml
" Vimscript initialization file
let g:moonflyTerminalColors = v:false
```

```lua
-- Lua initialization file
vim.g.moonflyTerminalColors = false
```

---

### moonflyTransparent

The `moonflyTransparent` option specifies whether to use an opaque or
transparent background in GUI versions of Vim. By default this option is
**disabled**. If you would like a transparent background then add the following
to your initialization file:

```viml
" Vimscript initialization file
let g:moonflyTransparent = v:true
```

```lua
-- Lua initialization file
vim.g.moonflyTransparent = true
```

---

### moonflyUndercurls

The `moonflyUndercurls` option specifies whether to use undercurls for
spelling and linting errors in GUI versions of Vim, including terminal Vim with
`termguicolors` set. By default this option is **enabled**. If you do not like
the appearance of undercurls then add the following to your initialization file:

```viml
" Vimscript initialization file
let g:moonflyUndercurls = v:false
```

```lua
-- Lua initialization file
vim.g.moonflyUndercurls = false
```

---

### moonflyUnderlineMatchParen

The `moonflyUnderlineMatchParen` option specifies whether to underline
matching parentheses. By default this option is **disabled**. If you want to
underline matching parentheses then add the following to your initialization
file:

```viml
" Vimscript initialization file
let g:moonflyUnderlineMatchParen = v:true
```

```lua
-- Lua initialization file
vim.g.moonflyUnderlineMatchParen = true
```

---

### moonflyWinSeparator

The `moonflyWinSeparator` option specifies the style of window separators:

- `0` will display no window separators

- `1` will display block separators; this is the default

- `2` will diplay line separators

For example, if line separators are desired then add the following to your
configuration:

```viml
" Vimscript initialization file
let g:moonflyWinSeparator = 2
```

```lua
-- Lua initialization file
vim.g.moonflyWinSeparator = 2
```

:gift: If using Neovim 0.7 (or later), the following configuration will improve
the look of line separators (if option `2` has been chosen) by selecting thicker
characters for the separators:

```viml
" Vimscript initialization file
set fillchars=horiz:━,horizup:┻,horizdown:┳,vert:┃,vertleft:┨,vertright:┣,verthoriz:╋
```

```lua
-- Lua initialization file
vim.opt.fillchars = { horiz = '━', horizup = '┻', horizdown = '┳', vert = '┃', vertleft = '┫', vertright = '┣', verthoriz = '╋', }
```

True Color Terminals
--------------------

Many modern terminals support [24-bit true
colors](https://gist.github.com/XVilka/8346728). Current versions of Vim &
Neovim, on such terminals, support true colors when the `termguicolors` option
is enabled.

A list of popular terminals that support true colors:

- [iTerm2](http://www.iterm2.com)
- [GNOME Terminal](https://wiki.gnome.org/Apps/Terminal)
- [Windows Terminal](https://github.com/Microsoft/Terminal)
- [Alacritty](https://github.com/alacritty/alacritty)
- [kitty](https://sw.kovidgoyal.net/kitty/index.html)
- [konsole](https://konsole.kde.org)
- [PuTTY](https://putty.org)
- [mintty](https://mintty.github.io)

On terminals that support true colors, and when `termguicolors` is set, the
_moonfly_ colorscheme will not require any terminal configuration to emit the
correct theme colors.

For the true color _moonfly_ colorscheme to display correctly inside _tmux_
the following setting will usually be required in _~/.tmux.conf_:

```
set -ga terminal-overrides ',xterm-256color:Tc'
```

Vim, as against Neovim, inside _tmux_, will also require the following settings
be added to the `~/.vimrc` file:

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
  colorscheme.

- [Alacritty](https://github.com/alacritty/alacritty) users can copy
  [this](terminal_themes/alacritty.yml) theme into their `alacritty.yml`
  configuration.

- [Windows Terminal](https://github.com/microsoft/terminal) users can copy
  [this](terminal_themes/windows-terminal-settings.json) theme into their `settings.json`
  configuration.

- [kitty](https://sw.kovidgoyal.net/kitty) users can use
  [this](terminal_themes/kitty-theme.conf) theme.

- _Gnome Terminal_ users can run
  [this](terminal_themes/gnome-terminal-moonfly.sh) script to create a _Moonfly_
  profile. Before executing the script, please install the `dconf-cli` command
  line utility for modern versions of Gnome (3.28 and later), for example `sudo
  apt install dconf-cli`. After executing the script, please set the _cursor_
  and _selection_ colors by hand, with the appropriate color values listed
  above, in `Preferences` / `Moonfly` / `Colors`.

For other terminals please configure appropriately with the following colors:

| Type           | Category        | Value     | Color
|----------------|-----------------|-----------|------------------------------------------------------
| Background     | Background      | `#080808` | ![background](https://place-hold.it/32/080808?text=+)
| Foreground     | Foreground      | `#b2b2b2` | ![background](https://place-hold.it/32/b2b2b2?text=+)
| Bold           | Bold            | `#eeeeee` | ![background](https://place-hold.it/32/eeeeee?text=+)
| Cursor         | Cursor          | `#9e9e9e` | ![background](https://place-hold.it/32/9e9e9e?text=+)
| Cursor Text    | Cursor Text     | `#080808` | ![background](https://place-hold.it/32/080808?text=+)
| Selection      | Selection       | `#b2ceee` | ![background](https://place-hold.it/32/b2ceee?text=+)
| Selection Text | Selection Text  | `#080808` | ![background](https://place-hold.it/32/080808?text=+)
| Color 1        | Black (normal)  | `#323437` | ![background](https://place-hold.it/32/323437?text=+)
| Color 2        | Red (normal)    | `#ff5454` | ![background](https://place-hold.it/32/ff5454?text=+)
| Color 3        | Green (normal)  | `#8cc85f` | ![background](https://place-hold.it/32/8cc85f?text=+)
| Color 4        | Yellow (normal) | `#e3c78a` | ![background](https://place-hold.it/32/e3c78a?text=+)
| Color 5        | Blue (normal)   | `#80a0ff` | ![background](https://place-hold.it/32/80a0ff?text=+)
| Color 6        | Purple (normal) | `#d183e8` | ![background](https://place-hold.it/32/d183e8?text=+)
| Color 7        | Cyan (normal)   | `#79dac8` | ![background](https://place-hold.it/32/79dac8?text=+)
| Color 8        | White (normal)  | `#c6c6c6` | ![background](https://place-hold.it/32/c6c6c6?text=+)
| Color 9        | Black (bright)  | `#949494` | ![background](https://place-hold.it/32/949494?text=+)
| Color 10       | Red (bright)    | `#ff5189` | ![background](https://place-hold.it/32/ff5189?text=+)
| Color 11       | Green (bright)  | `#36c692` | ![background](https://place-hold.it/32/36c692?text=+)
| Color 12       | Yellow (bright) | `#c2c292` | ![background](https://place-hold.it/32/c2c292?text=+)
| Color 13       | Blue (bright)   | `#74b2ff` | ![background](https://place-hold.it/32/74b2ff?text=+)
| Color 14       | Purple (bright) | `#ae81ff` | ![background](https://place-hold.it/32/ae81ff?text=+)
| Color 15       | Cyan (bright)   | `#85dc85` | ![background](https://place-hold.it/32/85dc85?text=+)
| Color 16       | White (bright)  | `#e4e4e4` | ![background](https://place-hold.it/32/e4e4e4?text=+)

:tv: Legacy 256 Color Terminals
-------------------------------

The _moonfly_ colorscheme, when used absent `termguicolors`, **requires** the
host terminal be configured with a specific color palette. In that case the
legacy _moonfly_ `cterm` 256 color terminal theme will be used.

:bangbang: Nowadays it is **strongly** recommended to use a true color terminal
with a modern version of Vim or Neovim with `termguicolors` set.

If that is not possible, then the [terminal
emulator](https://en.wikipedia.org/wiki/Terminal_emulator) must be configured
for 256 colors, which usually means setting the terminal's type to
`xterm-256color`, or `screen-256color` when used inside
[tmux](https://tmux.github.io/).

The terminal should then be configured with the following _moonfly_ colors:

```
Background:               #080808
Foreground:               #b2b2b2
Bold:                     #eeeeee
Cursor:                   #9e9e9e
Cursor Text:              #080808
Selection:                #b2ceee
Selection Text:           #080808
Color 1 (Black):          #323437
Color 2 (Red):            #ff5454
Color 3 (Green):          #8cc85f
Color 4 (Yellow):         #e3c78a
Color 5 (Blue):           #80a0ff
Color 6 (Purple):         #d183e8
Color 7 (Cyan):           #79dac8
Color 8 (White):          #de935f
Color 9 (Bright Black):   #f09479
Color 10 (Bright Red):    #ff5189
Color 11 (Bright Green):  #36c692
Color 12 (Bright Yellow): #c2c292
Color 13 (Bright Blue):   #74b2ff
Color 14 (Bright Purple): #ae81ff
Color 15 (Bright Cyan):   #85dc85
Color 16 (Bright White):  #e2637f
```

Sponsor
-------

[![Ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/bluz71)

License
-------

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
