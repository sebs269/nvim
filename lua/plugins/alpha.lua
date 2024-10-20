return {
  'goolord/alpha-nvim',
  config = function ()
    local alpha = require'alpha'
    local dashboard = require'alpha.themes.dashboard'

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
