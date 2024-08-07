return {
    -- 消息通知
    {
        "rcarriga/nvim-notify",
        keys = {
            {"<leader>n", "<cmd>Notifications<CR>"},
        },
        opts = {
            render = "default",
            stages = "fade"
        },
        config = function ()
            -- 设置为默认通知
            vim.notify = require("notify")
        end
    },

    -- 内置终端 toggleterm
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        keys = {
            { "<leader>1", "<cmd>exe v:count1 . 'ToggleTerm'<CR>" },
            -- { "<leader>g", "<cmd>lua _lazygit_toggle() <CR>" },
            { "<leader>bt", "<cmd>lua _btm_toggle() <CR>" },
        },
        config = function()
            require("plugins.configs.toggleterm")
        end
    },

    {
        "nvim-telescope/telescope.nvim",
        -- tag = "1.6",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            { "<leader>sf", "<cmd>Telescope find_files<CR>", desc="Find Files" },
            { "<leader>sg", "<cmd>Telescope live_grep<CR>", desc="" },
            { "<leader>sb", "<cmd>Telescope buffers<CR>", desc="Buffer" },
            { "<leader>sh", "<cmd>Telescope help_tags<CR>", desc="Help Pages" },
        },
        -- config = function()
        --     require("plugins.configs.toggleterm")
        -- end,
    },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            plugins = { spelling = true },
            defaults = {
            mode = { "n", "v" },
            ["g"] = { name = "+goto" },
            ["gs"] = { name = "+surround" },
            ["z"] = { name = "+fold" },
            ["]"] = { name = "+next" },
            ["["] = { name = "+prev" },
            ["<leader><tab>"] = { name = "+tabs" },
            ["<leader>b"] = { name = "+buffer" },
            ["<leader>c"] = { name = "+code" },
            ["<leader>f"] = { name = "+file/find" },
            ["<leader>g"] = { name = "+git" },
            ["<leader>gh"] = { name = "+hunks" },
            ["<leader>q"] = { name = "+quit/session" },
            ["<leader>s"] = { name = "+search" },
            ["<leader>u"] = { name = "+ui" },
            ["<leader>w"] = { name = "+windows" },
            ["<leader>x"] = { name = "+diagnostics/quickfix" },
            },
        },
        -- config = function()
        --     require("plugins.configs.which-key")
        -- end,
    },
    -- rnvimr
    -- {
    --     "kevinhwang91/rnvimr",
    --     lazy = true,
    --     keys = {
    --         { "<leader>rt", "<cmd>RnvimrToggle<CR>" },
    --         { "<leader>rr", "<cmd>RnvimrResize<CR>" },
    --     },
    -- },

    -- vimtex
    -- {
    --   "lervag/vimtex",
    --   lazy = true,
    -- },

    -- session-manager
    -- {
    --   "Shatur/neovim-session-manager",
    --   dependencies = {
    --     "nvim-lua/plenary.nvim",
    --   },
    --   config = function ()
    --     require("plugins.configs.session")
    --   end
    -- }
}
