return {
  -- lsp/lspconfig.lua
  { "neovim/nvim-lspconfig", enabled = true },
  -- lsp/mason.lua
  { "williamboman/mason.nvim", enabled = true },
  -- tmux-navigator (requires plenary) (found in ~/.config/nvim/lua/custom/plugins/"
  { "nvim-lua/plenary.nvim", enabled = true },

  { "christoomey/vim-tmux-navigator", enabled = true },
  -- alpha.lua
  { "goolord/alpha-nvim", enabled = true },
  -- auto-session.lua
  { "rmagatti/auto-session", enabled = true },
  -- bufferline.lua
  { "akinsho/bufferline.nvim", enabled = true },
  -- Colorschemes Don't forget to change lualine
  -- and bufferline if necessary
  -- colorscheme_flow.lua
  { "0xstepit/flow.nvim", enabled = false },
  -- colorscheme_tokyonight.lua
  { "folke/tokyonight.nvim", enabled = true },
  -- colorscheme_vscode.lua
  { "Mofiqul/vscode.nvim", enabled = false },

  -- copilot-cmp.lua
  { "zbirenbaum/copilot-cmp", enabled = true },
  -- copilot.lua
  { "zbirenbaum/copilot.lua", enabled = true },
  -- copilotchat.lua
  { "CopilotC-Nvim/CopilotChat.nvim", enabled = true },
  -- dressing.lua
  { "stevearc/dressing.nvim", enabled = true },
  -- formatting.lua
  { "stevearc/conform.nvim", enabled = true },
  -- indent-blankline.lua
  { "lukas-reineke/indent-blankline.nvim", enabled = true },
  -- linting.lua
  { "mfussenegger/nvim-lint", enabled = true },
  -- lualine.lua
  { "nvim-lualine/lualine.nvim", enabled = true },
  -- nvim-cmp.lua
  { "hrsh7th/nvim-cmp", enabled = true },
  -- nvim-tree.lua
  -- Depends on nvim-web-devicons
  { "nvim-tree/nvim-tree.lua", enabled = true },
  -- substitute.lua
  { "gbprod/substitute.nvim", enabled = true },
  -- surround.lua
  { "kylechui/nvim-surround", enabled = false },
  -- telescope.lua
  -- Depends on plenary, nvim-web-devicons, todo-comments, and trouble
  { "nvim-telescope/telescope.nvim", enabled = true },
  -- todo-comments.lua
  { "folke/todo-comments.nvim", enabled = true },
  -- treesitter.lua
  { "nvim-treesitter/nvim-treesitter", enabled = true },
  -- trouble.lua
  -- Depends on nvim-web-devicons and todo-comments
  { "folke/trouble.nvim", enabled = true },
  -- vim-maximizer.lua
  { "szw/vim-maximizer", enabled = true },
  -- which-key.lua
  { "folke/which-key.nvim", enabled = true },
}
