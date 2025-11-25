-- You can add your own plugins here or in other files in this directory!
-- I promise not to create any merge conflicts in this directory :)
-- See the kickstart.nvim README for more information

return {
  {
    'lewis6991/hover.nvim',
    -- You can set this to true if you want it loaded lazily by event, etc.
    -- For now we just load it normally:
    lazy = false,

    config = function()
      -- This is the README example from hover.nvim
      require('hover').config {
        --- List of modules names to load as providers.
        --- @type (string|Hover.Config.Provider)[]
        providers = {
          'hover.providers.diagnostic',
          'hover.providers.lsp',
          'hover.providers.dap',
          'hover.providers.man',
          'hover.providers.dictionary',
          -- Optional, disabled by default:
          -- "hover.providers.gh",
          -- "hover.providers.gh_user",
          -- "hover.providers.jira",
          -- "hover.providers.fold_preview",
          -- "hover.providers.highlight",
        },
        preview_opts = {
          border = 'single',
        },
        -- Whether the contents of a currently open hover window should be moved
        -- to a :h preview-window when pressing the hover keymap.
        preview_window = false,
        title = true,
        mouse_providers = {
          'hover.providers.lsp',
        },
        mouse_delay = 1000,
      }

      -- Setup keymaps
      vim.keymap.set('n', 'K', function()
        require('hover').open()
      end, { desc = 'hover.nvim (open)' })

      vim.keymap.set('n', 'gK', function()
        require('hover').enter()
      end, { desc = 'hover.nvim (enter)' })

      vim.keymap.set('n', '<C-p>', function()
        require('hover').switch 'previous'
      end, { desc = 'hover.nvim (previous source)' })

      vim.keymap.set('n', '<C-n>', function()
        require('hover').switch 'next'
      end, { desc = 'hover.nvim (next source)' })

      -- Mouse support
      vim.keymap.set('n', '<MouseMove>', function()
        require('hover').mouse()
      end, { desc = 'hover.nvim (mouse)' })

      vim.o.mousemoveevent = false
    end,
  },
}
