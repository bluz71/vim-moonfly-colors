-- moonfly color scheme for lualine
--
-- URL:     github.com/bluz71/vim-moonfly-colors
-- License: MIT (https://opensource.org/licenses/MIT)

-- LuaFormatter off
local colors = {
  -- StatusLine background color.
  color0 = '#303030',

  -- Mode colors.
  color1 = '#80a0ff',
  color2 = '#36c692',
  color3 = '#ae81ff',
  color4 = '#e3c78a',
  color5 = '#ff5189',

  -- Mode text color.
  color6 = '#1c1c1c',

  -- StatusLineNC foreground.
  color7 = '#9e9e9e',

  -- Normal text color.
  color2 = '#c6c6c6',
}

-- LuaFormatter on
return {
  normal = {
    a = {fg = colors.color6, bg = colors.color1},
    b = {fg = colors.color1, bg = colors.color0},
    c = {fg = colors.color8, bg = colors.color0}
  },
  insert = {
    a = {fg = colors.color6, bg = colors.color2},
    b = {fg = colors.color2, bg = colors.color0}
  },
  visual = {
    a = {fg = colors.color6, bg = colors.color3},
    b = {fg = colors.color3, bg = colors.color0}
  },
  command = {
    a = {fg = colors.color6, bg = colors.color4},
    b = {fg = colors.color4, bg = colors.color0}
  },
  replace = {
    a = {fg = colors.color6, bg = colors.color5},
    b = {fg = colors.color5, bg = colors.color0}
  },
  inactive = {
    a = {fg = colors.color7, bg = colors.color0},
    b = {fg = colors.color7, bg = colors.color0},
    c = {fg = colors.color7, bg = colors.color0}
  },
}
