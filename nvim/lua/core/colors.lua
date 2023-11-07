local latte = require("catppuccin.palettes").get_palette "latte"
local frappe = require("catppuccin.palettes").get_palette "frappe"
local macchiato = require("catppuccin.palettes").get_palette "macchiato"
local mocha = require("catppuccin.palettes").get_palette "mocha"



function Colors(color)
  vim.o.termguicolors = true
  color = color or "gruvbox-material"
  vim.o.background = "dark" -- or "light" for light mod
  vim.cmd [[ colorscheme gruvbox-material ]]
  -- Fonts
  vim.g.gruvbox_material_disable_italic_comment = 1
  vim.g.gruvbox_material_enable_italic = 0
  vim.g.gruvbox_material_enable_bold = 0
      -- Themes
  vim.g.gruvbox_material_foreground = 'mix'
  vim.g.gruvbox_material_background = 'medium'
  vim.g.gruvbox_material_ui_contrast = 'high' -- The contrast of line numbers, indent lines, etc.
  vim.cmd.colorscheme('gruvbox-material')
  return color
end

Colors()
