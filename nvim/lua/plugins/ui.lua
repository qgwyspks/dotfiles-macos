return {

    {
        "goolord/alpha-nvim",
        -- dependencies = {
        --     "nvim-tree/nvim-web-devicons",
        --     "nvim-lua/plenary.nvim"
        -- },
        config = function()
            require("plugins.configs.alpha")
        end
    },

    -- 文件树
    -- {
    --     "nvim-tree/nvim-tree.lua",
    --     dependencies = { 'nvim-tree/nvim-web-devicons' },
    --     keys = {
    --         -- { "<C-t>", "<cmd>NvimTreeToggle<CR>" },  -- 打开或关闭树
    --         { "<leader>tt", "<cmd>NvimTreeToggle<CR>" },  -- 打开或关闭树
    --         { "<leader>tf", "<cmd>NvimTreeFocus<CR>" },  -- 如果树已关闭，则将其打开，然后将焦点放在该树上
    --         -- { "<leader>nff, "<cmd>NvimTreeFindFile<CR>" },  -- 在当前缓冲区的树中移动光标，如果需要，打开文件夹
    --         { "<leader>tc", "<cmd>NvimTreeCollapse<CR>" },  -- 递归折叠 nvim tree
    --     },
    --     config = function ()
    --         require("plugins.configs.nvim-tree")
    --     end
    -- },

    -- 状态栏
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("plugins.configs.lualine")
        end
    },

    -- 缓冲区
    -- {
    --     "akinsho/bufferline.nvim",
    --     version = "*",
    --     dependencies = { 'nvim-tree/nvim-web-devicons' },
    --     keys = {
    --         { "<leader>bp", "<cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
    --         { "<leader>bP", "<cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
    --         { "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", desc = "Close Other Buffers" },
    --         { "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    --         { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    --     },
    --     opts = {
    --         options = {
    --             -- 使用 nvim 内置 nvim_lsp 获取错误
    --             diagnostics = "nvim_lsp",
    --             -- 左侧让出 nvim-tree 的位置
    --             offsets = {
    --                 {
    --                     filetype = "NvimTree",
    --                     text = "File Explorer",
    --                     highlight = "Directory",
    --                     text_align = "left",
    --                 },
    --             },
    --         },
    --     },
    --     config = function(_, opts)
    --         require("bufferline").setup(opts)
    --         vim.api.nvim_create_autocmd({"BufAdd", "BufDelete" }, {
    --             callback = function()
    --                 vim.schedule(function()
    --                     pcall(nvim_bufferline)
    --                 end)
    --             end,
    --         })
    --     end
    -- },

    -- 左侧 git 提示
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("plugins.configs.gitsigns")
        end
    },

    -- 启动时间
    {
        "dstein64/vim-startuptime",
        cmd = "StartupTime",
        config = function()
            vim.g.startuptime_tries = 10
        end,
    },
}
