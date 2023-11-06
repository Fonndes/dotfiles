local latte = require("catppuccin.palettes").get_palette "latte"
local frappe = require("catppuccin.palettes").get_palette "frappe"
local macchiato = require("catppuccin.palettes").get_palette "macchiato"
local mocha = require("catppuccin.palettes").get_palette "mocha"



function Colors(color)
  vim.o.termguicolors = true
  color = color or "gruvbox-material"
  vim.o.background = "dark" -- or "light" for light mod
  vim.cmd [[ colorscheme gruvbox-material ]]
  return color
end

Colors()
