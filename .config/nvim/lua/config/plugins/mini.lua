return {
  "echasnovski/mini.nvim",
  enabled = true,
  -- version = false for 'main' branch
  -- * = use stable version
  version = '*',
  config = function()
    local statusline = require("mini.statusline")
    statusline.setup({ use_icons = true })
  end
}
