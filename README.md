moonfly
=======
*moonfly* is a dark theme for Vim and Neovim that has taken inspiration from:

* [monokai](https://atom.io/themes/monokai)
* [sunburst](http://colorsublime.com/theme/Sunburst)
* [xoria256](https://github.com/vim-scripts/xoria256.vim)
* [One Dark](https://github.com/atom/one-dark-syntax)

Screenshots
-----------
#### Ruby
![Ruby](ruby_moonfly.png)

#### JavaScript
![Ruby](javascript_moonfly.png)

Languages explicitly styled
----------------------------
* C/C++
* Shell
* Python
* Ruby
* Elixir
* JavaScript/ES6
* CoffeeScript
* Go
* Rust
* Java

Installation
------------
Use your favoured plugin manager to install **bluz71/vim-moonfly-colors** then
set the colorscheme in your *vimrc* file.

If using [vim-plug](https://github.com/junegunn/vim-plug) do the following:

1. Add `Plug 'bluz71/vim-moonfly-colors'` to your *vimrc*
2. Run `:PlugInstall`
3. Add `colorscheme moonfly` to your *vimrc*, make sure this line appears
   **after** the *Plug* declaration.

Options
-------
The `g:moonflyCursorLineNr` option specifies whether to highlight the cursor
line, as blue, in the number column if the `relativenumber` or `cursorline`
settings are in effect. By default the cursor line will not be highlighted. 

Note, I do recommend enabling this option.

To highlight the current cursor line in the number column please add the
following to your *vimrc*:

```
let g:moonflyCursorLineNr = 1
```

Terminal Configuration
----------------------
The *moonfly* Vim color scheme when used with Vim in a terminal, as against a
GUI Vim, **requires** the host terminal be setup with the *moonfly* color
palette.

Also note, the host terminal should be configured for 256 colors, this usually
means setting the terminal's type to **xterm-256color** or **screen-256color**
when used with [tmux](https://tmux.github.io/).

*iterm2* users on macOS can import [this](moonfly.itermcolors) color scheme.

*xterm* users on Linux can add the following snippet to their *~/.Xresources*
file and launch xterm via **xterm -name xterm-moonfly**. A complete
*Xresources* file is available
[here](https://github.com/bluz71/dotfiles/blob/master/Xresources)

```
xterm-moonfly*color0:  #373c40
xterm-moonfly*color1:  #ff5454
xterm-moonfly*color2:  #8cc85f
xterm-moonfly*color3:  #e3c78a
xterm-moonfly*color4:  #80a0ff
xterm-moonfly*color5:  #ce76e8
xterm-moonfly*color6:  #7ee0ce
xterm-moonfly*color7:  #de935f
xterm-moonfly*color8:  #f09479
xterm-moonfly*color9:  #fe3b7b
xterm-moonfly*color10: #42cf89
xterm-moonfly*color11: #cfcfb0
xterm-moonfly*color12: #78c2ff
xterm-moonfly*color13: #ae81ff
xterm-moonfly*color14: #85dc85
xterm-moonfly*color15: #e2637f
```

Other terminals should be setup with the following color configuration:

* color0  / Palette 1  / Black:        `#373c40`
* color1  / Palette 2  / Red:          `#ff5454`
* color2  / Palette 3  / Green:        `#8cc85f`
* color3  / Palette 4  / Yellow:       `#e3c78a`
* color4  / Palette 5  / Blue:         `#80a0ff`
* color5  / Palette 6  / Magenta:      `#ce76e8`
* color6  / Palette 7  / Cyan:         `#7ee0ce`
* color7  / Palette 8  / White:        `#de935f`
* color8  / Palette 9  / Bold Black:   `#f09479`
* color9  / Palette 10 / Bold Red:     `#fe3b7b`
* color10 / Palette 11 / Bold Green:   `#42cf89`
* color11 / Palette 12 / Bold Yellow:  `#cfcfb0`
* color12 / Palette 13 / Bold Blue:    `#78c2ff`
* color13 / Palette 14 / Bold Magenta: `#ae81ff`
* color14 / Palette 15 / Bold Cyan:    `#85dc85`
* color15 / Palette 16 / Bold White:   `#e2637f`

License
-------
[MIT](https://opensource.org/licenses/MIT)
