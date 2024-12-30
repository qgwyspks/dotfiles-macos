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

    -- vimtex
    -- {
    --   "lervag/vimtex",
    --   lazy = true,
    -- },

}
