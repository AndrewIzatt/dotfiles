return {
  "folke/which-key.nvim",
  enabled = false,
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  config = function(_, opts)
    require("which-key").setup(opts)
    -- custom highlights
    -- This one puts a custom color besides the one inherited from the theme
    vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = "#000000" })
    -- vim.api.nvim_set_hl(0, "WhichKeyNormal", { link = "NormalFloat" })
  end,
  opts = {
    win = {
      border = "single",
      wo = {
        winblend = 0, -- value between 0-100 0 for fully opaque and 100 for fully transparent
      },
    },
    keys = {
      scroll_down = "<c-d>", -- binding to scroll down inside the popup
      scroll_up = "<c-u>", -- binding to scroll up inside the popup
    },
  },
}
