local group = vim.api.nvim_create_augroup("custom_buffer", { clear = true })

-- see usr_05.txt online
vim.cmd.packadd("nohlsearch")
-- Highlight yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = group,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ timeout = 200 })
  end,
  desc = "Briefly highlight yanked text"
})

-- from nvim help lsp docs on format files on save
-- autocmd BufWritePre * lua vim.lsp.buf.format({ async = false })
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
