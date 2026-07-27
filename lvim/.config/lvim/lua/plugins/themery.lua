return {
  "zaldih/themery.nvim",
  enabled = true,
  lazy = false,
  config = function()
    require("themery").setup({
      -- add the config here
      themes = { "gruvbox", "tokyonight", "solarized-osaka", "vscode" },
      livePreview = true,
    })
  end,
}
