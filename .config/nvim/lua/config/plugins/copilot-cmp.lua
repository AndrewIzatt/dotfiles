return {
  -- Rest of your Plugins
  "zbirenbaum/copilot-cmp",
  enabled = false,
  config = function()
    require("copilot_cmp").setup()
  end,
}
