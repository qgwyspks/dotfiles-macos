return {
    -- 消息通知
    -- {
    --     "rcarriga/nvim-notify",
    --     keys = {
    --         {"<leader>n", "<cmd>Notifications<CR>"},
    --     },
    --     opts = {
    --         render = "default",
    --         stages = "fade"
    --     },
    --     config = function ()
    --         -- 设置为默认通知
    --         vim.notify = require("notify")
    --     end
    -- },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            preset = "helix",
            keys = {
                scroll_down = "<c-d>",
                scroll_up = "<c-u>",
            },
            icons = {
                mappings = false,
            },
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "快捷键",
            },
            {
                "<leader>.",
                function()
                    require("which-key").show({ loop = true })
                end,
                desc = "快捷键窗口保持",
            }
        },
        -- config = function()
        --     require("plugins.configs.which-key")
        -- end,
    },
    {
        'folke/noice.nvim',
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
        },
        keys = {
            { "<leader>na", function() require("noice").cmd("enable") end, desc = "Noice Enable" },
            { "<leader>nd", function() require("noice").cmd("disable") end, desc = "Noice Disable" },
        },
        config = function()
            require("plugins.configs.noice")
        end,
    },
    {
        'is0n/jaq-nvim',
        ft = { 'go', 'lua', 'python', 'shell' },
        -- event = "VeryLazy",
        opts = {
            cmds = {
                internal = {
                    lua = "luafile %",
                    vim = "source %",
                },
                external = {
                    python = "python3 %",
                    go     = "go run %",
                    sh     = "sh %",
                }
            },
            behavior = {
                default = "float",
            },
            ui = {
                float = {
                    border = "rounded",
                    height = 0.2,
                    weight = 0.1,
                    x = 0.5,
                    y = 0.5,
                },
                terminal = {
                    position = "bot",
                    size = 4,
                    line_no = true,
                },
            },
        },
        keys = {
            { "<leader>jf", "<cmd>Jaq float<CR>", desc = "Run Code in Float" },
            { "<leader>jt", "<cmd>Jaq terminal<CR>", desc = "Run Code in Terminal" },
            { "<leader>jb", "<cmd>Jaq bang<CR>", desc = "Run Code in Bang" },
            { "<leader>jq", "<cmd>Jaq quickfix<CR>", desc = "QuickFix" },
        },
    },
    -- vimtex
    -- {
    --   "lervag/vimtex",
    --   lazy = true,
    -- },

}
