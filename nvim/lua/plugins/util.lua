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
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            plugins = { spelling = true },
            -- defaults = {
            --     mode = { "n", "v" },
            --     ["g"] = { name = "+goto" },
            --     ["gs"] = { name = "+surround" },
            --     ["z"] = { name = "+fold" },
            --     ["]"] = { name = "+next" },
            --     ["["] = { name = "+prev" },
            -- },
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
