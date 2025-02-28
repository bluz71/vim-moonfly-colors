![moonfly](https://raw.githubusercontent.com/bluz71/misc-binaries/master/headings/moonfly.png)
==========

_moonfly_ is a dark charcoal theme for modern Neovim and classic Vim.

Note, all _moonfly_ highlights in Neovim are implemented in Lua, whilst
highlights in Vim are implemented in legacy Vimscript.

:point_right: I maintain another dark theme named
[nightfly](https://github.com/bluz71/vim-nightfly-colors) which may be of
interest.

Screenshot
----------

![screenshot](https://raw.githubusercontent.com/bluz71/misc-binaries/master/moonfly/moonfly-screenshot.png)

Styled Features & Plugins
-------------------------

Neovim-only:

- [Neovim Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Neovim Diagnostic](https://neovim.io/doc/user/diagnostic.html)
- [Neovim LSP Semantic Highlights](https://neovim.io/doc/user/lsp.html#lsp-semantic-highlight)
- [Barbar](https://github.com/romgrk/barbar.nvim)
- [blink.cmp](https://github.com/Saghen/blink.cmp)
- [Dashboard](https://github.com/glepnir/dashboard-nvim)
- [fzf.lua](https://github.com/ibhagwan/fzf-lua)
- [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [Hop](https://github.com/phaazon/hop.nvim)
- [Indent BlankLine](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Lazy](https://github.com/folke/lazy.nvim)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [Mini](https://github.com/echasnovski/mini.nvim)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [Neogit](https://github.com/NeogitOrg/neogit)
- [Noice](https://github.com/folke/noice.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [NvCheatsheet.nvim](https://github.com/smartinellimarco/nvcheatsheet.nvim)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [Rainbow Delimiters](https://github.com/HiPhish/rainbow-delimiters.nvim)
- [snacks.nvim](https://github.com/folke/snacks.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)

Neovim & Vim compatible:

- [BufExplorer](https://github.com/jlanzarotta/bufexplorer)
- [clever-f](https://github.com/rhysd/clever-f.vim)
- [Coc.nvim](https://github.com/neoclide/coc.nvim)
- [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
- [Fern](https://github.com/lambdalisue/fern.vim)
- [fzf.vim](https://github.com/junegunn/fzf.vim) (works best with matching [fly16](https://github.com/bluz71/fly16-bat) `bat` theme)
- [lightline](https://github.com/itchyny/lightline.vim)
- [vim-airline](https://github.com/vim-airline/vim-airline)

Vim-only:

- [ALE](https://github.com/dense-analysis/ale)
- [GitGutter](https://github.com/airblade/vim-gitgutter)
- [indentLine](https://github.com/Yggdroot/indentLine)
- [NERDTree](https://github.com/preservim/nerdtree)
- [Signify](https://github.com/mhinz/vim-signify)
- [Tagbar](https://github.com/majutsushi/tagbar)

:zap: Requirements
------------------

_moonfly_ is a **GUI-only** colorscheme.

A GUI client or a modern terminal version of Vim or Neovim in a true-color
terminal is required. Details about true-color terminals are [listed
here](https://github.com/bluz71/vim-moonfly-colors#true-color-terminals).

Installation
------------

Install the **bluz71/vim-moonfly-colors** colorscheme with your preferred plugin
manager.

[lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{ "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
```

[vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
```

Usage
-----

Enable the colorscheme after the plugin declaration.

```lua
-- Lua initialization file
vim.cmd [[colorscheme moonfly]]
```

```vim
" Vimscript initialization file
colorscheme moonfly
```

Statusline
----------

- The _moonfly_ theme supports
  [lightline](https://github.com/itchyny/lightline.vim). To enable the _moonfly_
  lightline theme please add the following to your initialization file:

```vim
let g:lightline = { 'colorscheme': 'moonfly' }
```

- The _moonfly_ theme supports
  [vim-airline](https://github.com/vim-airline/vim-airline). The _moonfly_ theme
  will load once vim-airline starts.

- The _moonfly_ theme supports
  [lualine](https://github.com/nvim-lualine/lualine.nvim). The
  _moonfly_ theme will load once Lualine starts.

- My [linefly](https://github.com/bluz71/nvim-linefly) `statusline` plugin
  supports the _moonfly_ theme.

- Lastly, my legacy
  [mistfly-statusline](https://github.com/bluz71/vim-mistfly-statusline) plugin
  also supports the _moonfly_ theme.

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
| [moonflyVirtualTextColor](https://github.com/bluz71/vim-moonfly-colors#moonflyvirtualtextcolor)       | Disabled
| [moonflyWinSeparator](https://github.com/bluz71/vim-moonfly-colors#moonflywinseparator)               | `1`

---

### moonflyCursorColor

The `moonflyCursorColor` option specifies whether to color the cursor or not.
By default the cursor will **NOT** be colored. If you prefer a colored cursor
then add the following to your initialization file:

```lua
-- Lua initialization file
vim.g.moonflyCursorColor = true
```

```vim
" Vimscript initialization file
let g:moonflyCursorColor = v:true
```

---

### moonflyItalics

The `moonflyItalics` option specifies whether to use italics for comments and
certain HTML elements in GUI versions of Vim. By default this option is
**enabled**. If you do not like the appearance of italics then add the following
to your initialization file:

```lua
-- Lua initialization file
vim.g.moonflyItalics = false
```

```vim
" Vimscript initialization file
let g:moonflyItalics = v:false
```

---

### moonflyNormalFloat

The `moonflyNormalFloat` option specifies whether to use moonfly background
and foreground colors in Neovim floating windows. By default this option is
**disabled**, hence, Neovim floating windows will usually be styled with popup
menu colors. If you would like to use moonfly colors instead then add the
following to your configuration:

```lua
-- Lua initialization file
vim.g.moonflyNormalFloat = true
```

```vim
" Vimscript initialization file
let g:moonflyNormalFloat = v:true
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

:bulb: The [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) completion plugin may
be configured as follows for nicer bordered display when `g:nightflyNormalFloat`
is enabled:

```lua
local cmp = require("cmp")
cmp.setup({
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  }
})
```

:bulb: Similarly, if using the [blink.cmp](https://github.com/Saghen/blink.cmp)
completion plugin instead:

```lua
require("blink.cmp").setup({
  completion = {
    menu = { border = "single" },
    documentation = { window = { border = "single" } },
  },
})
```

---

### moonflyTerminalColors

The `moonflyTerminalColors` option specifies whether to use the moonfly color
palette in `:terminal` windows when `termguicolors` is set. By default this
option is **enabled**. If you prefer not to use the moonfly color palette for
the first 16 terminal colors then add the following to your initialization file:

```lua
-- Lua initialization file
vim.g.moonflyTerminalColors = false
```

```vim
" Vimscript initialization file
let g:moonflyTerminalColors = v:false
```

---

### moonflyTransparent

The `moonflyTransparent` option specifies whether to use an opaque or
transparent background in GUI versions of Vim. By default this option is
**disabled**. If you would like a transparent background then add the following
to your initialization file:

```lua
-- Lua initialization file
vim.g.moonflyTransparent = true
```

```vim
" Vimscript initialization file
let g:moonflyTransparent = v:true
```

---

### moonflyUndercurls

The `moonflyUndercurls` option specifies whether to use undercurls for
spelling and linting errors in GUI versions of Vim, including terminal Vim with
`termguicolors` set. By default this option is **enabled**. If you do not like
the appearance of undercurls then add the following to your initialization file:

```lua
-- Lua initialization file
vim.g.moonflyUndercurls = false
```

```vim
" Vimscript initialization file
let g:moonflyUndercurls = v:false
```

---

### moonflyUnderlineMatchParen

The `moonflyUnderlineMatchParen` option specifies whether to underline
matching parentheses. By default this option is **disabled**. If you want to
underline matching parentheses then add the following to your initialization
file:

```lua
-- Lua initialization file
vim.g.moonflyUnderlineMatchParen = true
```

```vim
" Vimscript initialization file
let g:moonflyUnderlineMatchParen = v:true
```

---

### moonflyVirtualTextColor

The `moonflyVirtualTextColor` option specifies whether to display diagnostic
virtual text in color. By default this option is **disabled**. If you want to
display diagnostic virtual text in color then add the following to your
initialization file:

```lua
-- Lua initialization file
vim.g.moonflyVirtualTextColor = true
```

```vim
" Vimscript initialization file
let g:moonflyVirtualTextColor = v:true
```

---

### moonflyWinSeparator

The `moonflyWinSeparator` option specifies the style of window separators:

- `0` will display no window separators

- `1` will display block separators; this is the default

- `2` will diplay line separators

For example, if line separators are desired then add the following to your
configuration:

```lua
-- Lua initialization file
vim.g.moonflyWinSeparator = 2
```

```vim
" Vimscript initialization file
let g:moonflyWinSeparator = 2
```

:gift: If using Neovim 0.7 (or later), the following configuration will improve
the look of line separators (if option `2` has been chosen) by selecting thicker
characters for the separators:

```lua
-- Lua initialization file
vim.opt.fillchars = { horiz = '━', horizup = '┻', horizdown = '┳', vert = '┃', vertleft = '┫', vertright = '┣', verthoriz = '╋', }
```

```vim
" Vimscript initialization file
set fillchars=horiz:━,horizup:┻,horizdown:┳,vert:┃,vertleft:┨,vertright:┣,verthoriz:╋
```

Overriding Highlights
---------------------

If a certain highlight of this theme does not suit then it is recommended to use
an `autocmd` to override that desired highlight.

For example, if one wishes to highlight functions in bold then simply add the
following to your initialization file prior to setting the colorscheme:

```lua
-- Lua initialization file
local custom_highlight = vim.api.nvim_create_augroup("CustomHighlight", {})
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "moonfly",
  callback = function()
    vim.api.nvim_set_hl(0, "Function", { fg = "#74b2ff", bold = true })
  end,
  group = custom_highlight,
})
```

```vim
" Vimscript initialization file
augroup CustomHighlight
    autocmd!
    autocmd ColorScheme moonfly highlight Function guifg=#74b2ff gui=bold
augroup END
```

Palette & Custom Colors (Neovim Only)
-------------------------------------

The `palette` field returns a table of internal theme colors; useful for
constructing custom statuslines and the like.

```lua
require("moonfly").palette
```

Meanwhile the `custom_colors` function allows customization of individual theme
colors. This needs to occur prior to invoking the colorscheme. The full list of
available colors is provided by the `palette` field.

```lua
  require("moonfly").custom_colors({
    bg = "#121212",
    violet = "#ff74b8",
  })
  vim.cmd([[colorscheme moonfly]])
```

True Color Terminals
--------------------

Many modern terminals support [24-bit true
colors](https://gist.github.com/XVilka/8346728). Current versions of Vim &
Neovim, on such terminals, support true colors when the `termguicolors` option
is enabled.

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

```vim
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
```

Extras
------

A collection of _moonfly_-flavoured extras for various terminals and tools:

| Program                                                    | Extra
|------------------------------------------------------------|----------------------------------------------------------------
| [Alacritty](https://github.com/alacritty/alacritty)        | [extras/alacritty](extras/moonfly-alacritty.toml)
| [bat](https://github.com/sharkdp/bat)                      | [fly16](https://github.com/bluz71/fly16-bat)
| [Fish Shell](https://fishshell.com)                        | [extras/fish](extras/moonfly.fish)
| [fzf](https://junegunn.github.io/fzf)                      | [extras/fzf](extras/moonfly-fzf.sh)
| [Ghostty](https://mitchellh.com/ghostty)                   | [extras/ghostty](extras/moonfly-ghostty.conf)
| [iTerm2](https://iterm2.com)                               | [extras/iterm2](extras/moonfly.itermcolors)
| [kitty](https://sw.kovidgoyal.net/kitty)                   | [extras/kitty](extras/moonfly-kitty.conf)
| [Starship](https://starship.rs/)                           | [extras/starship](extras/moonfly-starship.toml)
| [tmux](https://github.com/tmux/tmux)                       | [extras/tmux](extras/moonfly.tmux)
| [WezTerm](https://wezfurlong.org/wezterm)                  | [extras/wezterm](extras/moonfly-wezterm.toml)
| [Windows Terminal](https://github.com/microsoft/terminal)  | [extras/windows-terminal](extras/moonfly-windows-terminal.json)
| [Xresources](https://wiki.archlinux.org/title/X_resources) | [extras/Xresources](extras/moonfly.Xresources)
| [Yazi](https://yazi-rs.github.io)                          | [moonfly.yazi](https://github.com/tkapias/moonfly.yazi)
| [Zellij](https://zellij.dev)                               | [extras/zellij](extras/moonfly-zellij.kdl)

Terminal Colors
---------------

| Type           | Category        | Value     | Color
|----------------|-----------------|-----------|------------------------------------------------------
| Background     | Background      | `#080808` | ![background](https://place-hold.it/32/080808?text=+)
| Foreground     | Foreground      | `#bdbdbd` | ![background](https://place-hold.it/32/bdbdbd?text=+)
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
| Color 6        | Purple (normal) | `#cf87e8` | ![background](https://place-hold.it/32/cf87e8?text=+)
| Color 7        | Cyan (normal)   | `#79dac8` | ![background](https://place-hold.it/32/79dac8?text=+)
| Color 8        | White (normal)  | `#c6c6c6` | ![background](https://place-hold.it/32/c6c6c6?text=+)
| Color 9        | Black (bright)  | `#949494` | ![background](https://place-hold.it/32/949494?text=+)
| Color 10       | Red (bright)    | `#ff5189` | ![background](https://place-hold.it/32/ff5189?text=+)
| Color 11       | Green (bright)  | `#36c692` | ![background](https://place-hold.it/32/36c692?text=+)
| Color 12       | Yellow (bright) | `#c6c684` | ![background](https://place-hold.it/32/c6c684?text=+)
| Color 13       | Blue (bright)   | `#74b2ff` | ![background](https://place-hold.it/32/74b2ff?text=+)
| Color 14       | Purple (bright) | `#ae81ff` | ![background](https://place-hold.it/32/ae81ff?text=+)
| Color 15       | Cyan (bright)   | `#85dc85` | ![background](https://place-hold.it/32/85dc85?text=+)
| Color 16       | White (bright)  | `#e4e4e4` | ![background](https://place-hold.it/32/e4e4e4?text=+)

Sponsor
-------

[![Ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/bluz71)

License
-------

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
