return {
  'goolord/alpha-nvim',
  -- dependencies = { 'nvim-mini/mini.icons' },
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local dashboard = require 'alpha.themes.dashboard'
    -- available: devicons, mini, default is mini
    -- if provider not loaded and enabled is true, it will try to use another provider
    require('alpha').setup(dashboard.config)
    dashboard.section.header.val = {
      [[                    .-.                    ]],
      [[                   ()I()                   ]],
      [[              "==.__:-:__.=="              ]],
      [[             "==.__/~|~\__.=="             ]],
      [[             "==._(  Y  )_.=="             ]],
      [[  .-'~~""~=--...,__\/|\/__,...--=~""~~'-.  ]],
      [[ (               ..=\=/=..               ) ]],
      [[  `'-.        ,.-"`;/=\ ;"-.,_        .-'` ]],
      [[      `~"-=-~` .-~` |=| `~-. `~-=-"~`      ]],
      [[           .-~`    /|=|\    `~-.           ]],
      [[        .~`       / |=| \       `~.        ]],
      [[    .-~`        .'  |=|  `.        `~-.    ]],
      [[  (`     _,.-="`    |=|    `"=-.,_     `)  ]],
      [[   `~"~"`           |=|           `"~"~`   ]],
      [[                    |=|                    ]],
      [[                    |=|                    ]],
      [[                    |=|                    ]],
      [[                    /=\                    ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button('space s f', 'Find file', ':Telescope find_files <CR>'),
      dashboard.button('space s .', 'Find recent files', ':Telescope recent_files <CR>'),
      dashboard.button('space l g', 'Open Git', ':LazyGit <CR>'),
      dashboard.button('space t o', 'Open File Tree', ':NvimTreeOpen <CR>'),
    }
  end,
}
