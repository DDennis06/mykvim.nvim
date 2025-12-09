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
            rainbow1 = { fg = mocha.rosewater, bg = mocha.rosewater },
            rainbow2 = { fg = mocha.flamingo, bg = mocha.flamingo },
            rainbow3 = { fg = mocha.pink, bg = mocha.pink },
            rainbow4 = { fg = mocha.mauve, bg = mocha.mauve },
            rainbow5 = { fg = mocha.red, bg = mocha.red },

            RenderMarkDownH1 = { fg = mocha.rosewater, bg = mocha.rosewater },
            RenderMarkDownH2 = { fg = mocha.flamingo, bg = mocha.flamingo },
            RenderMarkDownH3 = { fg = mocha.pink, bg = mocha.pink },
            RenderMarkDownH4 = { fg = mocha.mauve, bg = mocha.mauve },
            RenderMarkDownH5 = { fg = mocha.red, bg = mocha.red },

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
