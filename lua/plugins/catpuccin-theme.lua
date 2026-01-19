return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    -- Load the colorscheme here.
    opts = {
      transparent_background = true,
      render_markdown = true,
      auto_integrations = true,
      highlight_overrides = {
        all = function(mocha)
          local base = mocha.base
          local darken = require('catppuccin.utils.colors').darken
          return {
            rainbow1 = { fg = mocha.rosewater, bg = darken(mocha.rosewater, 0.3, base) },
            rainbow2 = { fg = mocha.flamingo, bg = darken(mocha.flamingo, 0.3, base) },
            rainbow3 = { fg = mocha.pink, bg = darken(mocha.pink, 0.3, base) },
            rainbow4 = { fg = mocha.mauve, bg = darken(mocha.mauve, 0.3, base) },
            rainbow5 = { fg = mocha.red, bg = darken(mocha.red, 0.3, base) },

            RenderMarkDownH1 = { fg = mocha.rosewater, bg = darken(mocha.rosewater, 0.3, base) },
            RenderMarkDownH2 = { fg = mocha.flamingo, bg = darken(mocha.flamingo, 0.3, base) },
            RenderMarkDownH3 = { fg = mocha.pink, bg = darken(mocha.pink, 0.3, base) },
            RenderMarkDownH4 = { fg = mocha.mauve, bg = darken(mocha.mauve, 0.3, base) },
            RenderMarkDownH5 = { fg = mocha.red, bg = darken(mocha.red, 0.3, base) },

            RenderMarkDownH1Bg = { bg = darken(mocha.rosewater, 0.3, base) },
            RenderMarkDownH2Bg = { bg = darken(mocha.flamingo, 0.3, base) },
            RenderMarkDownH3Bg = { bg = darken(mocha.pink, 0.3, base) },
            RenderMarkDownH4Bg = { bg = darken(mocha.mauve, 0.3, base) },
            RenderMarkDownH5Bg = { bg = darken(mocha.red, 0.3, base) },
          }
        end,
      },
    },
  },
}
