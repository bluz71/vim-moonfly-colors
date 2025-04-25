-- moonfly color scheme for lualine
--
-- URL:      github.com/bluz71/vim-moonfly-colors
-- License:  MIT (https://opensource.org/licenses/MIT)

local colors = {
  -- StatusLine background colors.
  color_bg1 = "#2e2e2e",
  color_bg2 = "#131313",

  -- Mode colors.
  color1 = "#80a0ff",
  color2 = "#36c692",
  color3 = "#ae81ff",
  color4 = "#e3c78a",
  color5 = "#ff5189",

  -- Mode text color.
  color6 = "#1c1c1c",

  -- StatusLineNC foreground.
  color7 = "#9e9e9e",

  -- Text colors.
  color8 = "#c6c6c6",
  color9 = "#b2b2b2"
}

return {
  normal = {
    a = { bg = colors.color1, fg = colors.color6 },
    b = { bg = colors.color_bg1, fg = colors.color1 },
    c = { bg = colors.color_bg2, fg = colors.color9 },
  },
  insert = {
    a = { bg = colors.color2, fg = colors.color6 },
    b = { bg = colors.color_bg1, fg = colors.color2 },
  },
  visual = {
    a = { bg = colors.color3, fg = colors.color6 },
    b = { bg = colors.color_bg1, fg = colors.color3 },
  },
  command = {
    a = { bg = colors.color4, fg = colors.color6 },
    b = { bg = colors.color_bg1, fg = colors.color4 },
  },
  replace = {
    a = { bg = colors.color5, fg = colors.color6 },
    b = { bg = colors.color_bg1, fg = colors.color5 },
  },
  terminal = {
    a = { bg = colors.color2, fg = colors.color6 },
    b = { bg = colors.color_bg1, fg = colors.color2 },
  },
  inactive = {
    a = { bg = colors.color_bg1, fg = colors.color7 },
    b = { bg = colors.color_bg1, fg = colors.color7 },
    c = { bg = colors.color_bg2, fg = colors.color7 },
  },
}
