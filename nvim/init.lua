-- BASIC
require('core.plugins')
require('core.mappings')
require('core.colors')
require('core.config')
--PLUGINS
require('plugins.neotree')
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.cmp')
require('plugins.mason')
require('plugins.lualine')
require('plugins.blankline')
require('plugins.telescope')
--require('plugins.gruvbox-material')
require('plugins.bufferline')
require("luasnip.loaders.from_snipmate").lazy_load()
require('plugins.snippet')
