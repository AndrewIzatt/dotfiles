-- vim.g.mapleader = " "
--
local keymap = vim.keymap -- for conciseness
--
-- -- Escape insert mode
-- keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })
-- keymap.set("i", "kj", "<Esc>", { desc = "Exit insert mode with kj" })
--
-- keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
--
-- -- increment/decrement numbers
-- -- keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
-- keymap.set("n", "<C-s>", "<C-x>", { desc = "Decrement number" }) -- decrement
--
-- -- window management
-- keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
-- keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
-- keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
-- keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
--
-- keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
--
-- -- Visual Maps
-- keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move selected line up in Visual Mode
-- keymap.set("v", "K", ":m '>-2<CR>gv=gv") -- Move selected line down in Visual Mode

-- Neovim only Abbreviations
-- Neovim init.vim
keymap.set('ca', 'nvrc', '~/.config/nvim/init.vim')
-- keymaps.lua
keymap.set('ca', 'nkm', '~/.config/nvim/lua/keymaps.lua')
-- commands.lua
keymap.set('ca', 'ncm', '~/.config/nvim/lua/commands.lua')
-- change disabled.lua
keymap.set('ca', 'ndis', '~/.config/nvim/lua/custom/plugins/disabled.lua')
-- run current line in Lua code
-- keymap.set("n", "<space>x", ":.lua<CR>")
-- keymap.set("v", "<space>x", ":lua<CR>")
