return {
  "folke/tokyonight.nvim",
  enabled = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    local bg = "#011628"
    local bg_dark = "#011423"
    local bg_highlight = "#143652"
    local bg_search = "#0A64AC"
    local bg_visual = "#275378"
    local fg = "#CBE0F0"
    local fg_dark = "#B4D0E9"
    local fg_gutter = "#627E97"
    local border = "#547998"

    ---@class ColorScheme
    local colors = {
      bg = bg,
      bg_dark = bg_dark,
      bg_float = bg_dark,
      bg_highlight = bg_highlight,
      bg_popup = bg_dark,
      bg_search = bg_search,
      bg_sidebar = bg_dark,
      bg_statusline = bg_dark,
      bg_visual = bg_visual,
      border = border,
      fg = fg,
      fg_dark = fg_dark,
      fg_float = fg,
      fg_gutter = fg_gutter,
      fg_sidebar = fg_dark,
    }

    require("tokyonight").setup({
      style = "night",
      on_colors = function(c)
        for k, v in pairs(colors) do
          c[k] = v
        end
      end,
    })
    -- load the colorscheme here
    vim.cmd([[colorscheme tokyonight]])
  end,
}
