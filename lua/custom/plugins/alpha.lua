-- lua/custom/plugins/alpha.lua
return {
  'goolord/alpha-nvim',
  event = 'VimEnter', -- load on startup
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional, for icons
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- Header
    dashboard.section.header.val = {
      '                                                    ',
      '   ███╗   ██╗██╗   ██╗██╗███╗   ███╗                ',
      '   ████╗  ██║██║   ██║██║████╗ ████║                ',
      '   ██╔██╗ ██║██║   ██║██║██╔████╔██║                ',
      '   ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║                ',
      '   ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║                ',
      '   ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝                ',
      '                                                    ',
    }

    -- Buttons
    dashboard.section.buttons.val = {
      dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('f', '󰱼  Find file', ':Telescope find_files<CR>'),
      dashboard.button('g', '󰱼  Live grep', ':Telescope live_grep<CR>'),
      dashboard.button('r', '  Recent files', ':Telescope oldfiles<CR>'),
      dashboard.button('q', '󰅚  Quit', ':qa<CR>'),
    }

    -- Footer (simple)
    dashboard.section.footer.val = 'kickstart.nvim + alpha-nvim'

    -- Optional: tidy spacing
    dashboard.config.layout[1] = { type = 'padding', val = 2 }

    alpha.setup(dashboard.config)

    -- Optional: disable folding on alpha buffer
    vim.cmd [[autocmd FileType alpha setlocal nofoldenable]]
  end,
}
