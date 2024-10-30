local languages = {
    "bashls", -- Bash
    -- "clangd",  -- C/C++
    -- "csharp_ls", -- C#
    -- "dockerls", -- Docker
    -- "docker_compose_language_service",  -- Docker Compose
    -- "html",  -- HTML
    -- "cssls",  -- CSS
    -- "tsserver",  -- JS/TS
    -- "vimls",  -- VimL
    "jsonls",  -- JSON
    "taplo",  -- TOML
    "gopls",  -- Go
    "lua_ls",  -- Lua
    "marksman",  -- Markdown
    "pyright",  -- Python pylsp ruff rufflsp
    -- "texlab",  -- LaTeX
}


return {
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        cmd = "Mason",
        keys = { { "<leader>m", "<cmd>Mason<cr>", desc = "Mason" } },
        -- opts = { ensure_installed = { "goimports", "gofumpt" } },
        config = function ()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = languages,
            automatic_installation = true, -- 自动安装
        },
        config = function(_, opts)
            -- if type(opts.ensure_installed) == "table" then
            --     vim.list_extend(opts.ensure_installed, {"goimports", "gofumpt"})
            -- end
            require("mason-lspconfig").setup(opts)
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("plugins.configs.lspconfig").setup(languages)
            -- local lspconfig = require("lspconfig")
            -- for _, language in ipairs(languages) do
            --     lspconfig[language].setup({})
            -- end
        end
    },
    {
        "hrsh7th/nvim-cmp",
        version = false,
        event = { "InsertEnter", "CmdlineEnter" },
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",  -- 对lsp提供的补全信息进行提示
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",     -- 文件内的路径进行补全
            "hrsh7th/cmp-cmdline",  -- 补全底部命令行
            -- "andersevenrud/cmp-tmux",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            -- "rafamadriz/friendly-snippets",
            -- {
            --     "Saecki/crates.nvim",
            --     event = { "BufRead Cargo.toml" },
            --     opts = {
            --         completion = {
            --         cmp = { enabled = true },
            --         },
            --     },
            -- },
        },
        -- ---@param opts cmp.ConfigSchema
        -- opts = function(_, opts)
        --     opts.sources = opts.sources or {}
        --     table.insert(opts.sources, { name = "crates" })
        -- end,
        config = function()
            require("plugins.configs.cmp")
        end
    },
    {
        'nvimdev/lspsaga.nvim',
        after = 'nvim-lspconfig',
        dependencies = {
            'nvim-treesitter/nvim-treesitter',
            'nvim-tree/nvim-web-devicons',
        },
        keys = {
            { "t", "<cmd>Lspsaga term_toggle<CR>", desc = "浮动终端" },
            { "<C-t>", "<cmd>Lspsaga term_toggle<CR>", desc = "浮动终端" },
            { "<leader>ca", "<cmd>Lspsaga code_action<CR>", desc="显示代码操作"},
            { "<leader>f", "<cmd>Lspsaga finder<CR>", desc="查看用法窗口"},
            { "<leader>pd", "<cmd>Lspsaga peek_definition<CR>", desc="查看定义"},
            { "<leader>pdt", "<cmd>Lspsaga peek_type_definition<CR>", desc="类型定义"},
            { "<leader>gd", "<cmd>Lspsaga goto_definition<CR>", desc="转到定义"},
            { "<leader>gdt", "<cmd>Lspsaga goto_type_definition<CR>", desc="转到类型定义"},
            { "<leader>K", "<cmd>Lspsaga hover_doc<CR>", desc="显示悬停文档" },
            { "<leader>rn", "<cmd>Lspsaga rename<CR>", desc="重命名" },
            { "<leader>ol", "<cmd>Lspsaga outline<CR>", desc="大纲"},
        },
        config = function()
            require('lspsaga').setup({})
        end,
    }
}
