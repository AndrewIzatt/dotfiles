return {
  -- lsp/lspconfig.lua
  { "neovim/nvim-lspconfig", enabled = false },
  -- lsp/mason.lua
  { "williamboman/mason.nvim", enabled = false },
  -- tmux-navigator (requires plenary) (found in ~/.config/nvim/lua/custom/plugins/"
  { "nvim-lua/plenary.nvim", enabled = false },

  { "christoomey/vim-tmux-navigator", enabled = false },
  -- alpha.lua
  { "goolord/alpha-nvim", enabled = false },
  -- auto-session.lua
  { "rmagatti/auto-session", enabled = false },
  -- bufferline.lua
  { "akinsho/bufferline.nvim", enabled = false },
  -- Colorschemes Don't forget to change lualine
  -- and bufferline if necessary
  -- colorscheme_flow.lua
  { "0xstepit/flow.nvim", enabled = false },
  -- colorscheme_tokyonight.lua
  { "folke/tokyonight.nvim", enabled = false },
  -- colorscheme_vscode.lua
  { "Mofiqul/vscode.nvim", enabled = false },

  -- copilot-cmp.lua
  { "zbirenbaum/copilot-cmp", enabled = false },
  -- copilot.lua
  { "zbirenbaum/copilot.lua", enabled = false },
  -- copilotchat.lua
  { "CopilotC-Nvim/CopilotChat.nvim", enabled = false },
  -- dressing.lua
  { "stevearc/dressing.nvim", enabled = false },
  -- formatting.lua
  { "stevearc/conform.nvim", enabled = false },
  -- indent-blankline.lua
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  -- linting.lua
  { "mfussenegger/nvim-lint", enabled = false },
  -- lualine.lua
  { "nvim-lualine/lualine.nvim", enabled = false },
  -- nvim-cmp.lua
  { "hrsh7th/nvim-cmp", enabled = false },
  -- nvim-tree.lua
  -- Depends on nvim-web-devicons
  { "nvim-tree/nvim-tree.lua", enabled = false },
  -- substitute.lua
  { "gbprod/substitute.nvim", enabled = false },
  -- surround.lua
  { "kylechui/nvim-surround", enabled = false },
  -- telescope.lua
  -- Depends on plenary, nvim-web-devicons, todo-comments, and trouble
  { "nvim-telescope/telescope.nvim", enabled = false },
  -- todo-comments.lua
  { "folke/todo-comments.nvim", enabled = false },
  -- treesitter.lua
  { "nvim-treesitter/nvim-treesitter", enabled = false },
  -- trouble.lua
  -- Depends on nvim-web-devicons and todo-comments
  { "folke/trouble.nvim", enabled = false },
  -- vim-maximizer.lua
  { "szw/vim-maximizer", enabled = false },
  -- which-key.lua
  { "folke/which-key.nvim", enabled = false },
}
