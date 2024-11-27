source ~/.vimrc
" -- Settings shared between vim and neovim in .vimrc
" require("options")
" require("keymaps")
" require("commands")
" require("custom.lazy")

" Old Lua form
" if vim.fn.hostname() ~= "silvermachine" then
"   vim.g.node_host_prog = "~/.npm-global/bin/neovim-node-host"
" else
"   vim.g.node_host_prog = "/usr/local/bin/neovim-node-host"
" end
autocmd TextYankPost * lua vim.highlight.on_yank({higroup='Visual', timeout=300})
"autocmd TextYankPost * silent! lua vim.hl.on_yank {higroup='Visual', timeout=300}
