return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        -- import nvim-treesitter plugin
        local configs = require("nvim-treesitter.configs")
        -- configure treesitter
        configs.setup({
            ensure_installed = {
                "c",
                "cpp",
                "css",
                "html",
                "javascript",
                "json",
                "lua",
                "luadoc",
                "make",
                "python",
                "query",
                "sql",
                "tmux",
                "toml",
                "vim",
                "vimdoc",
                "xml",
                "yaml"
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
