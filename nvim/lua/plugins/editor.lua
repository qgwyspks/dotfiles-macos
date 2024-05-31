return {
    -- 树解析生成
    {
        "nvim-treesitter/nvim-treesitter",
        version = false,
        build = ":TSUpdate",
        -- event = { "LazyFile", "VeryLazy" },
        lazy = vim.fn.argc(-1) == 0,
        opts = {
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = {
                "bash",
                "c",
                "json",
                "jsonc",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "toml",
                "vim",
                "vimdoc",
                "xml",
                "yaml",
            },
        },
        config = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                vim.list_extend(opts.ensure_installed, {"go", "gomod", "gowork", "gosum"})
            end
            require("nvim-treesitter.configs").setup(opts)
        end,
    },

    -- 自动补全括号
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
    },

    -- 左侧 git 提示
    {
        "lewis6991/gitsigns.nvim",
    },

    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        cmd = { "TroubleToggle", "Trouble" },
        keys = {
            { "<leader>xx", "<cmd>TroubleToggle<CR>" },
            { "<leader>xc",  "<cmd>TroubleClose<CR>" },
            { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<CR>", desc = "Document Diagnostics (Trouble)" },
            { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<CR>", desc = "Workspace Diagnostics (Trouble)" },
            { "<leader>xr",  "<cmd>TroubleToggle lsp_references<CR>" },
            { "<leader>xq",  "<cmd>TroubleToggle quickfix<CR>", desc = "Quickfix List (Trouble)" },
            { "<leader>xl", "<cmd>TroubleToggle loclist<CR>", desc = "Location List (Trouble)" },
        },
        opts = {
            use_diagnostic_signs = true
        }
    }
}
