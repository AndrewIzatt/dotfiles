return {
  -- Mason
  {
    -- "williamboman/mason.nvim",
    "mason-org/mason.nvim",
    enabled = true,
    opts = {}
    -- config = function()
    -- require("mason").setup()
    -- end
  },
  -- Mason LSP Config
  {
    "mason-org/mason-lspconfig.nvim",
    enabled = true,
    opts = {
      ensure_installed = {
        "lua_ls",
        "ruff"
      },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "neovim/nvim-lspconfig",
    enabled = true,
    dependencies = {
      "saghen/blink.cmp",
      {
        "folke/lazydev.nvim",
        -- ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            -- { path = "LazyVim", words = { "LazyVim" } },
            { path = "snacks.nvim",        words = { "Snacks" } },
            { path = "lazy.nvim",          words = { "LazyVim" } },
          },
        },
      },
    },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()

      vim.lsp.config("*", { capabilities = capabilities })

      -- OLD ESLINT Setting JUST IN CASE
      -- vscode-eslint-language-server provides an EslintFixAll command that can be used to format a document on save:
      -- lspconfig.eslint.setup({
      --   ---@diagnostic disable-next-line: unused-local
      --   on_attach = function(client, bufnr)
      --     vim.api.nvim_create_autocmd("BufWritePre", {
      --       buffer = bufnr,
      --       command = "EslintFixAll",
      --     })
      --   end
      -- })
      --
      -- lspconfig.lua_ls.setup({
      --   capabilities = capabilities,
      --
      --   vim.api.nvim_create_autocmd('LspAttach', {
      --     callback = function(args)
      --       local client = vim.lsp.get_client_by_id(args.data.client_id)
      --       if not client then return end
      --
      --       if client:supports_method('textDocument/formatting') then
      --         -- Format the current buffer on save
      --         vim.api.nvim_create_autocmd('BufWritePre', {
      --           buffer = args.buf,
      --           callback = function()
      --             vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
      --           end,
      --         })
      --       end
      --     end,
      --   })
      --   -- OLD LUA SETTINGS JUST IN CASE
      --   settings = {
      --     Lua = {
      --       diagnostics = {
      --         -- eliminate `Undefined global "vim" error
      --         globals = { "vim" }
      --       }
      --     }
      --   }
      -- })

      -- LSP Keymaps
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      -- Global mappings.
      -- See `:help vim.diagnostic.*` for documentation on any of the below functions
      vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
      vim.keymap.set('n', '[d', function()
        vim.diagnostic.jump({ count = -1, float = true })
      end, { desc = "Go to previous diagnostic" })
      vim.keymap.set('n', ']d', function()
        vim.diagnostic.jump({ count = 1, float = true })
      end, { desc = "Go to next diagnostic" })
      vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

      -- Use LspAttach autocommand to only map the following keys
      -- after the language server attaches to the current buffer
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          -- Enable completion triggered by <c-x><c-o>
          vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

          -- Buffer local mappings.
          -- See `:help vim.lsp.*` for documentation on any of the below functions
          local opts = { buffer = ev.buf }
          vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
          vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
          vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
          vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
          vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
          end, opts)
          vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
          vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
          vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
          vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
          end, opts)
        end,
      })

      vim.lsp.enable(
        { "bashls",
          "cmake",
          "lua_ls",
          "emmet_language_server",
          "eslint",
          "ruff",
          "sqlls",
          "vimls"
        }
      )
    end
  }
}
