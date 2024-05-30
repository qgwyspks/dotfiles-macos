return {

    {
        "goolord/alpha-nvim",
        -- dependencies = {
        --     "nvim-tree/nvim-web-devicons",
        --     "nvim-lua/plenary.nvim"
        -- },
        config = function ()
            require("plugins.configs.alpha")
        end
    },

    -- 文件树
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        keys = {
            { "<C-n>", "<cmd>NvimTreeToggle<CR>" },  -- 打开或关闭树
            { "<leader>nf", "<cmd>NvimTreeFocus<CR>" },  -- 如果树已关闭，则将其打开，然后将焦点放在该树上
            -- { "<leader>nff, "<cmd>NvimTreeFindFile<CR>" },  -- 在当前缓冲区的树中移动光标，如果需要，打开文件夹
            { "<leader>nc", "<cmd>NvimTreeCollapse<CR>" },  -- 递归折叠 nvim tree
        },
        config = function ()
            require("plugins.configs.nvim-tree")
        end
    },

    -- 状态栏
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require("plugins.configs.lualine")
        end
    },

    -- 缓冲区
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        keys = {
            { "<leader>bp", "<cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
            { "<leader>bP", "<cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
        },
        opts = {
            options = {
                -- 使用 nvim 内置 nvim_lsp 获取错误
                diagnostics = "nvim_lsp",
                -- 左侧让出 nvim-tree 的位置
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left",
                    },
                },
            },
        },
    },
}
