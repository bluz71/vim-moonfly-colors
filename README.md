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
![JavaScript](javascript_moonfly.png)

Installation
------------

Use your favorite plugin manager to install **bluz71/vim-moonfly-colors** then
set the colorscheme in your **vimrc**.

If using [vim-plug](https://github.com/junegunn/vim-plug) do the following:

1. Add `Plug 'bluz71/vim-moonfly-colors'` to your *~/.vimrc*
2. Run `:PlugInstall`
3. Add `colorscheme moonfly` and your *~/.vimrc*, make sure this line appears
   **after** the *Plug* declaration.

Terminal Configuration
----------------------

*moonfly* when used used with terminal Vim, as against a GUI Vim, **requires** the
host terminal be setup with the *moonfly* color palette.

Note, the host terminal should also be configured for 256 colors, this usually
means setting the terminal type to **xterm-256color** or **screen-256color**
when using [tmux](https://tmux.github.io/).

*iterm2* users on macOS can import
[this](https://github.com/bluz71/dotfiles/blob/master/moonfly.itermcolors)
color scheme.

*xterm* users on Linux can add the following snippet their **~/.Xresources**
file and launch xterm via **xterm -name xterm-moonfly**. A complete
**Xresources** file is available
[here](https://github.com/bluz71/dotfiles/blob/master/Xresources)

Other terminals should be setup with the following color configuration:

* color0 / Black: *#373c40*
* color1 / Red: *#ff5454*
* color2 / Green: *#8cc85f*
* color3 / Yellow: *#e3c78a*
* color4 / Blue: *#80a0ff*
* color5 / Magenta: *#ce76e8*
* color6 / Cyan: *#7ee0ce*
* color7 / White: *#de935f*
* color8 / Bold Black: *#f09479*
* color9 / Bold Red: *#fe3b7b*
* color10 / Bold Green: *#42cf89*
* color11 / Bold Yellow: *#cfcfb0*
* color12 / Bold Blue: *#78c2ff*
* color13 / Bold Magenta: *#ae81ff*
* color14 / Bold Cyan: *#85dc85*
* color15 / Bold White: *#e2637f*

License
-------

[MIT](https://opensource.org/licenses/MIT)
