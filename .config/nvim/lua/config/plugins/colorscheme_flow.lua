-- https://github.com/0xstepit/flow.nvim
return {
  "0xstepit/flow.nvim",
  enabled = false,
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    local dark_theme = true
    local transparent = true

    local style = os.getenv("COLORSCHEME")
    if style == "light" then
      dark_theme = false
      transparent = false
      vim.notify("Changed style to light", vim.log.levels.INFO)
    end

    require("flow").setup({
      dark_theme = true,        -- Set the theme with dark background.
      high_contrast = false,    -- Make the dark background darker or the light background lighter.
      transparent = false,      -- Set transparent background.
      fluo_color = "pink",      -- Color used as fluo. Available values are pink, yellow, orange, or green.
      mode = "desaturate",      -- -- Mode of the colors. Available values are: dark, bright, desaturate, or base.
      aggressive_spell = false, -- Use colors for spell check.
    })
    vim.cmd("colorscheme flow")
  end,
}
