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
    -- "taplo",  -- TOML
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
            require("plugins.configs.lspconfig")
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
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",     -- 文件路径
            "hrsh7th/cmp-cmdline",  -- 补全底部命令行
            "andersevenrud/cmp-tmux",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
        config = function()
            require("plugins.configs.cmp")
        end
    }
}
