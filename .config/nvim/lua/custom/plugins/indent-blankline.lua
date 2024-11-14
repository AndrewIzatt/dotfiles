-- return {
--   "lukas-reineke/indent-blankline.nvim",
--   -- event = { "BufReadPre", "BufNewFile" },
--   -- main = "ibl",
--   -- opts = {
--   -- indent = { char = "┊" },
--   -- },
--   opts = function()
--     require("ibl").setup()
--   end,
-- }
return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {},
}
