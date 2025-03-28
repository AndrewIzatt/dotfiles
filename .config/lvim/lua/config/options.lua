-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.scrolloff = 999
-- Use ruff as LSP server
vim.g.lazyvim_python_lsp = "ruff"
vim.g.lazyvim_python_ruff = "ruff"
