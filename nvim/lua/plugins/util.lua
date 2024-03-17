return {
    {
        "rcarriga/nvim-notify",
        keys = {
            {"<leader>n", "<cmd>Notifications<CR>"},
        },
        opts = {
            renfer = "compact",
        },
        config = function ()
            vim.notify = require("notify")
        end
    },

    -- 内置终端 toggleterm
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        keys = {
            { "<leader>1", "<cmd>exe v:count1 . 'ToggleTerm'<CR>" },
            { "<leader>g", "<cmd>lua _lazygit_toggle() <CR>" },
            { "<leader>bt", "<cmd>lua _btop_toggle() <CR>" },
        },
        config = function()
            require("plugins.configs.toggleterm")
        end
    },

    -- markdown-preview
    {
        "iamcco/markdown-preview.nvim",
        lazy = true,
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
        keys = {
            { "<leader>mp", "<cmd>MarkdownPreview<CR>" },
            { "<leader>mps", "<cmd>MarkdownPreviewStop<CR>" },
            { "<leader>mpt", "<cmd>MarkdownPreviewToggle<CR>" },
        },
    },

    -- rnvimr
    {
        "kevinhwang91/rnvimr",
        lazy = true,
        keys = {
            { "<leader>rt", "<cmd>RnvimrToggle<CR>" },
            { "<leader>rr", "<cmd>RnvimrResize<CR>" },
        },
    },

    -- vimtex
    {
      "lervag/vimtex",
      lazy = true,
    },

    -- session-manager
    {
      "Shatur/neovim-session-manager",
      dependencies = {
        "nvim-lua/plenary.nvim",
      },
      config = function ()
        require("plugins.configs.session")
      end
    }
}
