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
                "dockerfile",
                "html",
                "json", "jsonc",
                "lua",
                "markdown", "markdown_inline",
                "python",
                "toml", "xml", "yaml",
                "vim", "vimdoc",
                -- "go", "gomod", "gowork", "gosum"
            },
        },
        config = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                vim.list_extend(opts.ensure_installed, {"go", "gomod", "gowork", "gosum"})
                vim.list_extend(opts.ensure_installed, {"rust", "ron"})
            end
            require("nvim-treesitter").setup(opts)
        end,
    },

    -- 自动补全括号
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
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
    },

    -- markdown-preview
    {
        "OXY2DEV/markview.nvim",
        lazy = false,  -- Recommended
        -- ft = "markdown"  -- If you decide to lazy-load anyway
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        },
        keys = {
            { "<leader>mv", "<cmd>Markview<CR>" },
        }
    }

    -- obsidian
    -- {
    --     "epwalsh/obsidian.nvim",
    --     version = "*",  -- recommended, use latest release instead of latest commit
    --     lazy = true,
    --     ft = "markdown",
    --     -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    --     -- event = {
    --     --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --     --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --     --   -- refer to `:h file-pattern` for more examples
    --     --   "BufReadPre path/to/my-vault/*.md",
    --     --   "BufNewFile path/to/my-vault/*.md",
    --     -- },
    --     dependencies = {
    --         "nvim-lua/plenary.nvim",
    --     },
    --     opts = {
    --         workspaces = {
    --             {
    --                 name = "personal",
    --                 path = "~/vaults/personal",
    --             },
    --             {
    --                 name = "work",
    --                 path = "~/vaults/work",
    --             },
    --         },
    --     },
    -- }
}

