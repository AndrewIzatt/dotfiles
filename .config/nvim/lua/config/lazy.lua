local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- vim.print(lazypath)
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  import = "config.plugins",
  -- { import = "custom.plugins.lsp" },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false, -- suppresses change detected message at bottom
  },
})
