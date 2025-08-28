return {
  'goolord/alpha-nvim',
  config = function ()
    local custom_theme = "milhouse"
    local alpha = require'alpha'
    local dashboard = require'alpha.themes.dashboard'

    local function getLen(str, start_pos)
      local byte = string.byte(str, start_pos)
      if not byte then
        return nil
      end

      return (byte < 0x80 and 1) or (byte < 0xE0 and 2) or (byte < 0xF0 and 3) or (byte < 0xF8 and 4) or 1
    end

    local function colorize(header, header_color_map, colors)
      for letter, color in pairs(colors) do
        local color_name = "AlphaJemuelKwelKwelWalangTatay" .. letter
        vim.api.nvim_set_hl(0, color_name, color)
        colors[letter] = color_name
      end

      local colorized = {}

      for i, line in ipairs(header_color_map) do
        local colorized_line = {}
        local pos = 0

        for j = 1, #line do
          local start = pos
          pos = pos + getLen(header[i], start + 1)

          local color_name = colors[line:sub(j, j)]
          if color_name then
            table.insert(colorized_line, { color_name, start, pos })
          end
        end

        table.insert(colorized, colorized_line)
      end

      return colorized
    end

    local header;
    local color_map;

    if (custom_theme == "milhouse") then

       header = {
        [[                                         ]],
        [[              ⣠⣶⣿⣿⣿⣿⣿⣷⣤                  ]],
        [[           ⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦               ]],
        [[          ⣴⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣶             ]],
        [[         ⣿⡿⠟⠋⡽        ⠉⠻⢿⣿⣿⣿⣿⣦           ]],
        [[            ⢠⣁⣤           ⠙⣿⣿⣿⣷          ]],
        [[           ⣾⣿⣿⡿⠃    ⣿⣷⣤⣀  ⣾⣿⣿⣿⣿⣦         ]],
        [[           ⣀⣁       ⠙⠿⣿⣿⠁⢸⣿⣿⣿⣿⣿⣿         ]],
        [[        ⢀⠞  ⠉⣿⣿    ⣠⠶⠶⢶⣤ ⣿⣿⣿⣿⣿⣿⡿         ]],
        [[        ⢸  ⠿⣀⣿⠿⠿⢿⣿⣿    ⠹⣿⣿⣿⣿⣿⣿⣿          ]],
        [[        ⠈⢄⡴⠉      ⣇   ⠛ ⣿⣿⣿⣿⣿⣿⠃          ]],
        [[         ⡞        ⠈⢄  ⣀⣾⣿⣿⣿⣿⣿⣿⣷          ]],
        [[         ⡇           ⠉⠉⠁⠼⢉⡉⢻⠏ ⠻⠋         ]],
        [[         ⢧               ⢁⡇⢀             ]],
        [[          ⠣     ⣤⠃      ⠲⣤⢤⠋             ]],
        [[           ⡴⠉⠙⠉⠁  ⣀      ⡇               ]],
        [[          ⠈⠦⢤⣤⣤⣤⠤⠶⠚⠓     ⡇               ]],
        [[                ⠙⠓⡄      ⣤               ]],
        [[                  ⠟⣤⣤⣤⠴⠞⠉⣤⠦⣄             ]],
        [[                ⢠⢻      ⠏   ⠹            ]],
        [[                ⡇⣼     ⣸     ⣧           ]],
      }

       color_map = {
        [[WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW]],
        [[WWWWWWWWWWWWWWBBBBBBBBBWWWWWWWWWWWWWWWWWW]],
        [[WWWWWWWWWWWBBBBBBBBBBBBBBBWWWWWWWWWWWWWWW]],
        [[WWWWWWWWWWBBBBBBBBBBBBBBBBBBWWWWWWWWWWWWW]],
        [[WWWWWWWWWBBBBBYYYYYYYYBBBBBBBBWWWWWWWWWWW]],
        [[WWWWWWWWWWWWBBBYYYYYYYYYYYBBBBBWWWWWWWWWW]],
        [[WWWWWWWWWWWBBBBBYYYYBBBBYYBBBBBBWWWWWWWWW]],
        [[WWWWWWWWWWWRRYYYYYYYBBBBBBBBBBBBWWWWWWWWW]],
        [[WWWWWWWWRRWWRRRYYYYRRRRRYBBBBBBBWWWWWWWWW]],
        [[WWWWWWWWRWWNRRRRRRRWWWWRRBBBBBBWWWWWWWWWW]],
        [[WWWWWWWWRRYYYYYYYYRWWWNWRRRRRRBWWWWWWWWWW]],
        [[WWWWWWWWWYYYYYYYYYRRWWRRBBBBBRRWWWWWWWWWW]],
        [[WWWWWWWWWYYYYYYYYYYYYRRBYYYYBWRRWWWWWWWWW]],
        [[WWWWWWWWWYYYYYYYYYYYYYYYYYYYWWWWWWWWWWWWW]],
        [[WWWWWWWWWWYYYYYYYYYYYYYYYYYYWWWWWWWWWWWWW]],
        [[WWWWWWWWWWWYYYYYYYYYYYYYYYWWWWWWWWWWWWWWW]],
        [[WWWWWWWWWWYYYYYYYYYYYYYYYYWWWWWWWWWWWWWWW]],
        [[WWWWWWWWWWWWWWWWYYYYYYYYYPWWWWWWWWWWWWWWW]],
        [[WWWWWWWWWWWWWWWWWWPPPPPPPPPPWWWWWWWWWWWWW]],
        [[WWWWWWWWWWWWWWWWPPWWWWWWPWWWPWWWWWWWWWWWW]],
        [[WWWWWWWWWWWWWWWWPPWWWWWPWWWWWPWWWWWWWWWWW]],
      }

    else
      header = {
        [[                               __                ]],
        [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
        [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
        [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
        [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
        [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
      }

      color_map = {
        [[YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY]],
        [[YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY]],
        [[YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY]],
        [[YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY]],
        [[YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY]],
        [[YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY]],
      }
    end

    local bg = vim.o.background
    local fg_color

    if (bg == 'dark') then
      fg_color = "#DDDDDD"
    else
      fg_color = "#313131"
    end

    local colors = {
      ["W"] = { fg = "#FFFFFF" },
      ["B"] = { fg = "#568cc7" },
      ["R"] = { fg = "#c9664c" },
      --["Y"] = { fg = "#e1b400" },
      ["Y"] = { fg = "#DBBC7F" },
      ["N"] = { fg = fg_color  },
      ["P"] = { fg = "#d9c3db" },
    }

    dashboard.section.header.opts = {
      hl = colorize(header, color_map, colors),
      position = "center",
    }

    dashboard.section.header.val = header

    -- Set the buttons
    dashboard.section.buttons.val = {}

    -- Function to calculate padding
    local function calculate_padding(used_lines)
      local total_lines = vim.api.nvim_get_option('lines')
      local padding = math.max(0, math.floor((total_lines - used_lines) / 2))
      return padding
    end

    -- Calculate padding to center the content
    local used_lines = #dashboard.section.header.val + #dashboard.section.buttons.val + #dashboard.section.footer.val
    dashboard.config.layout = {
      { type = "padding", val = calculate_padding(used_lines) },
      dashboard.section.header,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
      { type = "padding", val = 2 },
      dashboard.section.footer,
    }

    vim.cmd[[autocmd User AlphaReady set laststatus=0 | autocmd User AlphaClosed set laststatus=2]]
    alpha.setup(dashboard.opts)
  end
}
