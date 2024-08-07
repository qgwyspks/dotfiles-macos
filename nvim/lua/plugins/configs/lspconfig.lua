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

for _, language in ipairs(languages) do
    if language == "gopls" then
        lspconfig.gopls.setup({
            settings = {
                gopls = {
                    gofumpt = true,                     -- 使用 gofumpt 格式化代码
                    codelenses = {
                        gc_details = false,             -- 不显示垃圾回收详细信息的代码镜头
                        generate = true,                -- 显示生成代码的代码镜头
                        regenerate_cgo = true,          -- 显示重新生成 cgo 文件的代码镜头
                        run_govulncheck = true,         -- 显示运行 go vuln check 的代码镜头
                        test = true,                    -- 显示运行测试的代码镜头
                        tidy = true,                    -- 显示运行 go mod tidy 的代码镜头
                        upgrade_dependency = true,      -- 显示升级依赖项的代码镜头
                        vendor = true,                  -- 显示运行 go mod vendor 的代码镜头
                    },
                    hints = {
                        assignVariableTypes = true,     -- 启用变量类型分配提示
                        compositeLiteralFields = true,  -- 启动复合字面量字段提示
                        compositeLiteralTypes = true,   -- 启用复合字面量类型提示
                        constantValues = true,          -- 启用常量值提示
                        functionTypeParameters = true,  -- 启用函数类型参数提示
                        parameterNames = true,          -- 启用参数名称提示
                        rangeVariableTypes = true,      -- 启用范围变量类型提示
                    },
                    analyses = {
                        fieldalignment = true,          -- 检查结构体字段是否对齐，建议优化字段顺序以减少内存占用
                        nilness = true,                 -- 检查可能的 nil 值错误
                        unusedparams = true,            -- 检查未使用的函数参数
                        unusedwrite = true,             -- 检查对变量的未使用参数
                        useany = true,                  -- 检查使用 interface{} 类型的变量
                    },
                    staticcheck = true,                 -- 使用静态分析工具
                    usePlaceholders = true,             -- 在代码补全时使用占位符
                    completeUnimported = true,          -- 自动补全未导入的包
                    directoryFilters = {                -- 过滤特定目录，不再这些目录中进行分析
                        "-.git",
                        "-.vscode",
                        "-.idea",
                        "-.vscode-test",
                        "-node_modules"
                    },
                    semanticTokens = true,              -- 启用语义令牌支持，提供更丰富的语法高亮
                },
            }
        })
    else
        lspconfig[language].setup({})
    end
end
