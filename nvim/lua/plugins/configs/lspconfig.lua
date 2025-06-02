local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
    return
end

-- local has_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
-- local has_blink, blink = pcall(require, "blink.cmp")

-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
local capabilities = require("blink.cmp").get_lsp_capabilities()

---@class PluginLspOpts
local opts = {
    servers = {},
    capabilities = capabilities,
}

-- opts.capabilities = vim.tbl_deep_extend(
--     "force",
--     {},
--     vim.lsp.protocol.make_client_capabilities(),
--     has_cmp and cmp_nvim_lsp.default_capabilities or {},
--     has_blink and blink.get_lsp_capabilities() or {}
-- )

local server_configs = {}

server_configs.basedpyright = {
    cmd = { "basedpyright-langserver", "--stdio" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", "pyrightconfig.json", ".git" },
    settings = {
        basedpyright = {
            analysis = {
                autoSearchPaths = true,  -- 自动添加常见搜索路径
                diagnosticMode = "openFilesOnly",  -- 仅分析打开的文件
                useLibraryCodeForTypes = true,
                inlayHints = {
                    variableTypes = true,  -- 变量赋值时显示类型提示
                    callArgumentNames = true,  -- 在函数参数上显示类型提示
                    functionReturnTypes = true,  -- 在函数返回类型上显示提示
                    genericTypes = true,  -- 在推断的泛型类型上显示提示
                }
            }
        }
    }
}

server_configs.bashls = {
    cmd = { "bash-language-server", "start" },
    filetypes = { "bash", "sh" },
    root_markers = { ".git" },
    settings = {
        bashIde = {
            globPattern = "*@(.sh|.inc|.bash|.command)"
        }
    }
}

server_configs.clangd = {
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
    root_markers = { ".clangd", ".clang-tidy", ".clang-format", "compile_commands.json", "compile_flags.txt", "configure.ac", ".git" },
}

server_configs.gopls = {
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    settings = {
        gopls = {
            -- gofumpt = true,  -- 使用 gofumpt 格式化代码
            codelenses = {
                gc_details = false, -- 不显示垃圾回收详细信息的代码镜头
                generate = true, -- 显示生成代码的代码镜头
                regenerate_cgo = true, -- 显示重新生成 cgo 文件的代码镜头
                run_govulncheck = true, -- 显示运行 go vuln check 的代码镜头
                test = true, -- 显示运行测试的代码镜头
                tidy = true, -- 显示运行 go mod tidy 的代码镜头
                upgrade_dependency = true, -- 显示升级依赖项的代码镜头
                vendor = true, -- 显示运行 go mod vendor 的代码镜头
            },
            hints = {
                assignVariableTypes = true, -- 启用变量类型分配提示
                compositeLiteralFields = true, -- 启动复合字面量字段提示
                compositeLiteralTypes = true, -- 启用复合字面量类型提示
                constantValues = true, -- 启用常量值提示
                functionTypeParameters = true, -- 启用函数类型参数提示
                parameterNames = true, -- 启用参数名称提示
                rangeVariableTypes = true, -- 启用范围变量类型提示
            },
            analyses = {
                -- fieldalignment = true,          -- 检查结构体字段是否对齐，建议优化字段顺序以减少内存占用
                nilness = true, -- 检查可能的 nil 值错误
                unusedparams = true, -- 检查未使用的函数参数
                unusedwrite = true, -- 检查对变量的未使用参数
                useany = true, -- 检查使用 interface{} 类型的变量
            },
            staticcheck = true, -- 使用静态分析工具
            usePlaceholders = true, -- 在代码补全时使用占位符
            completeUnimported = true, -- 自动补全未导入的包
            directoryFilters = { -- 过滤特定目录，不再这些目录中进行分析
                "-.git",
                "-.vscode",
                "-.idea",
                "-.vscode-test",
                "-node_modules",
            },
            semanticTokens = true, -- 启用语义令牌支持，提供更丰富的语法高亮
        },
    },
}

server_configs.lua_ls = {
    cmd = {
        "lua-language-server",
        "--locale=zh-cn",
    },
    filetypes = { "lua" },
    root_markers = { ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml", ".git" },
    settings = {
        Lua = {
            diagnostics = {
                unusedLocalExclude = { "_*" },
                globals = { "vim" },
                disbale = {
                    "luadoc-miss-see-name",
                    "undefined-field",
                },
                neededFileStatus = {
                    ["codestyle-check"] = "Any", -- 代码格式化
                },
            },
            runtime = { version = "LuaJIT" }, -- 使用内置 LSP 客户端
            workspace = {
                library = {
                    [vim.fn.expand "$VIMRUNTIME/lua"] = true,
                    [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
                },
                checkThirdParty = false, -- 不检查第三方库
            },
            completion = { callSnippet = "Replace" }, -- 仅显示调用片段
            format = {
                enable = true,
                defaultConfig = {
                    indent_style = "space",
                    indent_size = "4",
                },
            },
        },
    },
}

local M = {}

M.setup = function(languages)
    for _, language in ipairs(languages) do
        vim.lsp.enable(language)

        local config = server_configs[language] or {}
        local merged_config = vim.tbl_deep_extend("force", opts, config)

        vim.lsp.config(language, merged_config)
    end
end

return M
