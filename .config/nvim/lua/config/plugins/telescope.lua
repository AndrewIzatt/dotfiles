return {
  "nvim-telescope/telescope.nvim",
  enabled = true,
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    -- "nvim-tree/nvim-web-devicons",
    -- "folke/todo-comments.nvim",
  },
  config = function()
    require('telescope').setup({
      pickers = {
        find_files = {
          theme = "ivy"
        }
      },
      extensions = {
        fzf = {}
      }
    })
    require('telescope').load_extension('fzf')

    vim.keymap.set("n", "<leader>fh", require('telescope.builtin').help_tags)
    vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
    vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
    vim.keymap.set("n", "<leader>en", function()
      require('telescope.builtin').find_files {
        cwd = vim.fn.stdpath("config")
      }
    end, { desc = "Take you to your Neovim config directory" })
    vim.keymap.set("n", "<leader>ep", function()
      require('telescope.builtin').find_files {
        cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
      }
    end, { desc = "Search for every file installed in a plugin" })
  end
}
