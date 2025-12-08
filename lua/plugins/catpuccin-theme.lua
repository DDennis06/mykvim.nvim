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
          return {
            rainbow3 = { fg = mocha.pink },
            RenderMarkDownH3 = { fg = mocha.pink },
            RenderMarkDownH3Bg = { fg = mocha.pink },
            rainbow4 = { fg = mocha.mauve },
            RenderMarkDownH4 = { fg = mocha.mauve },
            RenderMarkDownH4Bg = { fg = mocha.mauve },
          }
        end,
      },
    },
  },
}
