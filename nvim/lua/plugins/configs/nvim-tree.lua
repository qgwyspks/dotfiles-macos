-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
-- vim.opt.termguicolors = true

local nvim_tree_status, nvim_tree = pcall(require, "nvim-tree")
if not nvim_tree_status then
    return
end


nvim_tree.setup({
    sort_by = "case_sensitive",
    -- 是否显示 git 状态
    git = { enable = true },
    renderer = {
        root_folder_label = false,  -- 隐藏当前根目录地址显示
        -- root_folder_label = ":.:s?.*?/..?",
        highlight_git = true,
        highlight_opened_files = "none",
        special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md", "CMakeLists.txt" },
        indent_markers = {
            enable = true,
        },
        icons = {
            webdev_colors = true,
            git_placement = "after",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = false,
            },
            padding = " ",
            symlink_arrow = " 󰁔 ",
        },
    },
    update_focused_file = {
        enable = true,
        update_root = true,
        ignore_list = {},
    },
    -- 过滤文件
    filters = {
        dotfiles = false,  -- 隐藏 .文件(H 进行切换)
        git_ignored = false,
        custom = { "^.git$", ".DS_Store", "node_modules" },  -- 其他过滤文件
        exclude = {},
    },
    view = {
        side = "left",   -- 文件浏览器显示位置
        number = false,  -- 行号
        relativenumber = false,  -- 相对行号
        signcolumn = "yes", -- 显示图标
        width = 30,      -- 宽度
    },
    diagnostics = {
        enable = true,
        show_on_dirs = false,
        debounce_delay = 50,
    },
    filesystem_watchers = {
        enable = true,
        debounce_delay = 50,
    },
})
