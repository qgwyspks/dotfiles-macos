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
    -- https://github.com/ellisonleao/gruvbox.nvim
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        proiority = 1000,
        config = function()
            require("gruvbox").setup({
                transparent_mode = true -- 透明背景
            })
            vim.o.background = "dark" -- or "light"
            vim.cmd([[colorscheme gruvbox]])
        end,
    }
    -- {
    --     "navarasu/onedark.nvim",
    --     lazy = false,
    --     config = function()
    --         require("onedark").setup({
    --             style = "dark",
    --             transparent = true
    --         })
    --         require("onedark").load()
    --         -- vim.cmd([[colorscheme onedark]])
    --     end,
    -- }
}
