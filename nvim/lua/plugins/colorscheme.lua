return {
    -- {
    --     "sainnhe/everforest",
    --     lazy = false,
    --     config = function()
    --         -- load the colorscheme here
    --         vim.cmd([[colorscheme everforest]])
    --     end,
    -- },
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     opts = { style = "moon" },
    --     config = function()
    --         vim.cmd([[colorscheme tokyonight]])
    --     end,
    -- },
    {
        "navarasu/onedark.nvim",
        lazy = false,
        config = function()
            require("onedark").setup({
                style = "dark",
                transparent = true
            })
            require("onedark").load()
            -- vim.cmd([[colorscheme onedark]])
        end,
    }
}
