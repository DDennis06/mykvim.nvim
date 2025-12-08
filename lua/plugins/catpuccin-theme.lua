return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    -- Load the colorscheme here.
    -- You can configure highlights by doing something like:
    opts = {
      transparent_background = true,
      render_markdown = true,
      auto_integrations = true,
      highlight_overrides = {
        all = function(mocha)
          local base = mocha.base
          local darken = require('catppuccin.utils.colors').darken
          return {
            rainbow3 = { fg = mocha.pink },
            RenderMarkDownH3 = { fg = mocha.pink },
            RenderMarkDownH3Bg = { bg = darken(mocha.pink, 0.3, base) },
            rainbow4 = { fg = mocha.mauve },
            RenderMarkDownH4 = { fg = mocha.mauve },
            RenderMarkDownH4Bg = { bg = darken(mocha.mauve, 0.3, base) },
          }
        end,
      },
    },
  },
}
