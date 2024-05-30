-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
-- vim.opt.termguicolors = true

local tree =  require("nvim-tree")

tree.setup({
    git = { enable = true },
    sort_by = "case_sensitive",
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
    filters = {
        -- 隐藏 .文件(H 进行切换)
        dotfiles = false,
        git_ignored = false,
        custom = { "^.git$", ".DS_Store", "node_modules" },
        exclude = {},
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
