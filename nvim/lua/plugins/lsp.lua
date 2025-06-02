local languages = {
    "bashls", -- Bash
    "clangd",  -- C/C++
    -- "csharp_ls", -- C#
    -- "dockerls", -- Docker
    -- "docker_compose_language_service",  -- Docker Compose
    -- "html",  -- HTML
    -- "cssls",  -- CSS
    -- "tsserver",  -- JS/TS
    -- "vimls",  -- VimL
    -- "jsonls",  -- JSON
    -- "taplo",  -- TOML
    "gopls",  -- Go
    "lua_ls",  -- Lua
    -- "marksman",  -- Markdown
    "basedpyright",
    -- "pyright",  -- Python pylsp ruff rufflsp
    -- "texlab",  -- LaTeX
}


return {
    {
        'saghen/blink.cmp',
        version = '*',
        dependencies = { "rafamadriz/friendly-snippets" },
        event = { "InsertEnter" },

        ---@module 'blink.cmp'
        opts = {
            keymap = {
                preset = 'none',  -- 'default'
                ['<Tab>'] = {
                    'select_next',  -- 选择下一项，如果在底部循环到列表顶部
                    'snippet_forward',  -- 跳转到下一个片段占位符
                    'fallback',
                },
                ['<S-Tab>'] = {  -- Shift-Tab
                    'select_prev',
                    'snippet_backward',
                    'fallback',
                },
                ['<CR>'] = { 'accept', 'fallback' },
                ['<C-e>'] = { 'hide', 'fallback' },
            },
            appearance = {
                use_nvim_cmp_as_default = false,
                nerd_font_variant = 'mono',
                kind_icons = _G._kind_icons,
            },
            completion = {
                menu = {
                    auto_show = function(ctx) return ctx.mode ~= 'cmdline' end,
                    border = 'rounded',
                    winhighlight = 'Normal:None,FloatBorder:None,CursorLine:BlinkCmpMenuSelection,Search:None',
                    scrolloff = 2,
                    scrollbar = true,
                    draw = {
                        padding = 1,
                        gap = 2,
                        treesitter = { 'lsp' },
                        columns = {
                            { 'kind_icon' },
                            { 'label', 'label_description', gap = 1 },
                            { 'kind' },
                        },
                    },
                },
                documentation = {
                    auto_show = true,  -- 自动显示文档
                    auto_show_delay_ms = 200,
                    treesitter_highlighting = true,  -- CPU 卡顿可以设置为 false
                    window = {
                        max_width = 40,
                        border = 'rounded',
                        winhighlight = 'Normal:None,FloatBorder:None,Search:None',
                    },
                },
                list = { selection = { preselect = false, auto_insert = false } },  -- 选择列表 'preselect' | 'manual' | 'auto_insert'
                accept = { auto_brackets = { enabled = true } },  -- 自动补全括号
                ghost_text = { enabled = true },  -- 内联虚拟文本
            },
            sources = {
                -- default = { 'lsp', 'path', 'snippets', 'buffer' },
                default = function(ctx)
                    local success, node = pcall(vim.treesitter.get_node)
                    if vim.bo.filetype == 'lua' then
                        return { 'lsp', 'path' }
                    elseif success and node and vim.tbl_contains({ 'comment', 'line_comment', 'block_comment' }, node:type()) then
                        return { 'buffer' }
                    else
                        return { 'lsp', 'path', 'snippets', 'buffer' }
                    end
                end,
                -- cmdline = {},
                --[[
                providers = {
                    markdown = {
                        name = 'RenderMarkdown',
                        module = 'render-markdown.integ.blink',
                        fallbacks = { 'lsp' },
                    },
                },
                --]]
            },
            signature = {
                enabled = true,
                window = {
                    border = 'rounded',
                },
            }
        },
        opts_extend = { "sources.default" }
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = { 'saghen/blink.cmp' },
        opts = {
            servers = {
                lua_ls = {}
            }
        },
        config = function()
            require("plugins.configs.lspconfig").setup(languages)
        end
        -- config = function (_, opts)
        --     local lspconfig = require("lspconfig")
        --     for server, config in ipairs(opts.servers) do
        --         config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
        --         lspconfig[server].setup(config)
        --     end
        -- end
    },
    -- {
    --     "williamboman/mason.nvim",
    --     build = ":MasonUpdate",
    --     cmd = "Mason",
    --     keys = { { "<leader>m", "<cmd>Mason<cr>", desc = "Mason" } },
    --     -- opts = { ensure_installed = { "goimports", "gofumpt" } },
    --     ---@param opts MasonSettings
    --     config = function ()
    --         require("mason").setup({
    --             ui = {
    --                 icons = {
    --                     package_installed = "✓",
    --                     package_pending = "➜",
    --                     package_uninstalled = "✗"
    --                 }
    --             }
    --         })
    --     end
    -- },
    -- {
    --     "williamboman/mason-lspconfig.nvim",
    --     opts = {
    --         ensure_installed = languages,
    --         automatic_installation = true, -- 自动安装
    --     },
    --     ---@param opts MasonLspConfigSettings
    --     config = function(_, opts)
    --         -- if type(opts.ensure_installed) == "table" then
    --         --     vim.list_extend(opts.ensure_installed, {"goimports", "gofumpt"})
    --         -- end
    --         require("mason-lspconfig").setup(opts)
    --     end,
    -- },
    -- {
    --     "neovim/nvim-lspconfig",
    --     config = function()
    --         require("plugins.configs.lspconfig").setup(languages)
    --         -- local lspconfig = require("lspconfig")
    --         -- for _, language in ipairs(languages) do
    --         --     lspconfig[language].setup({})
    --         -- end
    --     end
    -- },
    -- {
    --     "hrsh7th/nvim-cmp",
    --     version = false,
    --     event = { "InsertEnter", "CmdlineEnter" },
    --     dependencies = {
    --         "onsails/lspkind.nvim",
    --         "hrsh7th/cmp-nvim-lsp",  -- 对lsp提供的补全信息进行提示
    --         "hrsh7th/cmp-buffer",
    --         "hrsh7th/cmp-path",     -- 文件内的路径进行补全
    --         -- "hrsh7th/cmp-cmdline",  -- 补全底部命令行
    --         -- "andersevenrud/cmp-tmux",
    --         "L3MON4D3/LuaSnip",
    --         "saadparwaiz1/cmp_luasnip",
    --         -- "rafamadriz/friendly-snippets",
    --         -- {
    --         --     "Saecki/crates.nvim",
    --         --     event = { "BufRead Cargo.toml" },
    --         --     opts = {
    --         --         completion = {
    --         --         cmp = { enabled = true },
    --         --         },
    --         --     },
    --         -- },
    --     },
    --     -- ---@param opts cmp.ConfigSchema
    --     -- opts = function(_, opts)
    --     --     opts.sources = opts.sources or {}
    --     --     table.insert(opts.sources, { name = "crates" })
    --     -- end,
    --     config = function()
    --         require("plugins.configs.cmp")
    --     end
    -- },
    {
        'nvimdev/lspsaga.nvim',
        after = 'nvim-lspconfig',
        dependencies = {
            'nvim-treesitter/nvim-treesitter',
            'nvim-tree/nvim-web-devicons',
        },
        opts = {
            ui = {
                border = 'single',
                devicon = true,
                title = true,
            }
        },
        keys = {
            { "t", "<cmd>Lspsaga term_toggle<CR>", desc = "浮动终端" },
            { "<C-t>", "<cmd>Lspsaga term_toggle<CR>", desc = "浮动终端" },
            { "<leader>ca", "<cmd>Lspsaga code_action<CR>", desc = "显示代码操作" },
            { "<leader>f", "<cmd>Lspsaga finder<CR>", desc = "查看用法窗口" },
            { "<leader>pd", "<cmd>Lspsaga peek_definition<CR>", desc = "查看定义" },
            { "<leader>pdt", "<cmd>Lspsaga peek_type_definition<CR>", desc = "类型定义" },
            { "<leader>gd", "<cmd>Lspsaga goto_definition<CR>", desc = "转到定义" },
            { "<leader>gdt", "<cmd>Lspsaga goto_type_definition<CR>", desc = "转到类型定义" },
            { "<leader>K", "<cmd>Lspsaga hover_doc<CR>", desc = "显示悬停文档" },
            { "<leader>rn", "<cmd>Lspsaga rename<CR>", desc = "重命名" },
            { "<leader>ol", "<cmd>Lspsaga outline<CR>", desc = "大纲" },
        },
        config = function()
            require('lspsaga').setup({})
        end,
    }
}
