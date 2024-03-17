return {
    {
        "windwp/nvim-autopairs",
    },
    {
        "lewis6991/gitsigns.nvim",
    },
    {
        "folke/trouble.nvim",
        keys = {
            -- { "<leader>t", "<cmd>Trouble<CR>" },
            { "<leader>xc",  "<cmd>TroubleClose<CR>" },
            { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<CR>" },
            { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<CR>" },
            { "<leader>xr",  "<cmd>TroubleToggle lsp_references<CR>" },
            { "<leader>xld", "<cmd>TroubleToggle lsp_definitions<CR>" },
            { "<leader>xt", "<cmd>TroubleToggle lsp_type_definitions<CR>" },
            { "<leader>xq",  "<cmd>TroubleToggle quickfix<CR>" },
            { "<leader>xl", "<cmd>TroubleToggle loclist<CR>" },
        }
    }
}
