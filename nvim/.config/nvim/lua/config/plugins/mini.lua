return {
  "echasnovski/mini.nvim",
  enabled = true,
  -- version = false for 'main' branch
  -- * = use stable version
  version = '*',
  config = function()
    local statusline = require("mini.statusline")
    statusline.setup({ use_icons = true })
    local surround = require('mini.surround')
    surround.setup(
      {
        opts = {
          mappings = {
            add = "gsa",            -- Add surrounding in Normal and Visual modes
            delete = "gsd",         -- Delete surrounding
            find = "gsf",           -- Find surrounding (to the right)
            find_left = "gsF",      -- Find surrounding (to the left)
            highlight = "gsh",      -- Highlight surrounding
            replace = "gsr",        -- Replace surrounding
            update_n_lines = "gsn", -- Update `n_lines`
          },
        }
      }
    )
  end
}
