local mason = require("mason")
local mason-lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

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

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

mason-lspconfig.setup({
    ensure_installed = languages,
    automatic_installation = true, -- 自动安装
})

for _, language in ipairs(languages) do
    lspconfig[language].setup({})
end
