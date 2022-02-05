vim.g.dashboard_custom_header = {
      [[              ▄▄▄▄▄▄▄▄▄            ]],
      [[           ▄█████████████▄          ]],
      [[   █████  █████████████████  █████  ]],
      [[   ▐████▌ ▀███▄       ▄███▀ ▐████▌  ]],
      [[    █████▄  ▀███▄   ▄███▀  ▄█████    ]],
      [[    ▐██▀███▄  ▀███▄███▀  ▄███▀██▌    ]],
      [[     ███▄▀███▄  ▀███▀  ▄███▀▄███    ]],
      [[     ▐█▄▀█▄▀███ ▄ ▀ ▄ ███▀▄█▀▄█▌    ]],
      [[      ███▄▀█▄██ ██▄██ ██▄█▀▄███      ]],
      [[       ▀███▄▀██ █████ ██▀▄███▀      ]],
      [[      █▄ ▀█████ █████ █████▀ ▄█      ]],
      [[      ███        ███        ███      ]],
      [[      ███▄    ▄█ ███ █▄    ▄███      ]],
      [[      █████ ▄███ ███ ███▄ █████      ]],
      [[      █████ ████ ███ ████ █████      ]],
      [[      █████ ████▄▄▄▄▄████ █████      ]],
      [[       ▀███ █████████████ ███▀      ]],
      [[         ▀█ ███ ▄▄▄▄▄ ███ █▀        ]],
      [[            ▀█▌▐█████▌▐█▀            ]],
      [[               ███████              ]],
}

vim.g.default_executive = "telescope"

vim.g.dashboard_custom_section = {
    a = {description = {'  Find File          '}, command = 'Telescope find_files'},
    b = {description = {'  Search Text        '}, command = 'Telescope live_grep'},
    c = {description = {'  Recent Files       '}, command = 'Telescope oldfiles'},
    d = {description = {'  Colour schemes     '}, command = 'Telescope colorscheme'},
    e = {description = {'  Config             '}, command = 'edit ~/.config/nvim/init.lua'},
}
