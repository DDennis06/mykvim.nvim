-- load settings
require 'setup.settings'
-- load key mappings
require 'setup.map'

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- load plugins
require('lazy').setup { import = 'plugins' }

vim.cmd.colorscheme 'catppuccin-mocha'
local mocha = require('catppuccin.palettes').get_palette 'mocha'

local base = mocha.base
local darken = require('catppuccin.utils.colors').darken

local bgpink = darken(mocha.pink, 0.5, base)
local bgmaroon = darken(mocha.maroon, 0.5, base)
local bgsapphire = darken(mocha.sapphire, 0.5, base)
local bgred = darken(mocha.red, 0.5, base)
local bgmauve = darken(mocha.mauve, 0.5, base)
local bglavender = darken(mocha.lavender, 0.5, base)

vim.api.nvim_set_hl(0, 'RenderMarkdownH1Bg', { bg = bgmauve })
vim.api.nvim_set_hl(0, 'RenderMarkdownH2Bg', { bg = bgpink })
vim.api.nvim_set_hl(0, 'RenderMarkdownH3Bg', { bg = bgsapphire })
vim.api.nvim_set_hl(0, 'RenderMarkdownH4Bg', { bg = bglavender })
vim.api.nvim_set_hl(0, 'RenderMarkdownH5Bg', { bg = bgred })

vim.api.nvim_set_hl(0, 'RenderMarkdownH1', { fg = mocha.mauve })
vim.api.nvim_set_hl(0, 'RenderMarkdownH2', { fg = mocha.pink })
vim.api.nvim_set_hl(0, 'RenderMarkdownH3', { fg = mocha.sapphire })
vim.api.nvim_set_hl(0, 'RenderMarkdownH4', { fg = mocha.lavender })
vim.api.nvim_set_hl(0, 'RenderMarkdownH5', { fg = mocha.red })

vim.api.nvim_set_hl(0, 'Rainbow1', { fg = mocha.mauve })
vim.api.nvim_set_hl(0, 'Rainbow2', { fg = mocha.pink })
vim.api.nvim_set_hl(0, 'Rainbow3', { fg = mocha.sapphire })
vim.api.nvim_set_hl(0, 'Rainbow4', { fg = mocha.lavender })
vim.api.nvim_set_hl(0, 'Rainbow5', { fg = mocha.red })
-- vim: ts=2 sts=2 sw=2 et
