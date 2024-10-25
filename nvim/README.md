[![Typing SVG](https://readme-typing-svg.demolab.com?font=Fira+Code&size=30&pause=1000&color=000000&center=true%C2%A0%E7%9C%9F&vCenter=false%C2%A0%E5%81%87&repeat=true%C2%A0%E7%9C%9F&random=false%C2%A0%E5%81%87&width=435&lines=NVIM)](https://git.io/typing-svg)

---

<!-- markdown-toc GitLab -->

- [配置结构](#配置结构)
- [插件列表](#插件列表)
- [快捷键](#快捷键)
- Lazy.nvim

<!-- markdown-toc -->


## 配置结构

```dir
.
├── README.md
├── init.lua                 -- 配置入口
└── lua/                     -- LUA 配置目录
    ├── config/              -- 设置目录
    │   ├── autocmds.lua     -- 自动命令
    │   ├── keymaps.lua      -- 快捷键
    │   ├── lazy.lua         -- Lazy.nvim 安装
    │   └── options.lua      -- 常规配置
    └── plugins/             -- 插件配置目录
        ├── colorscheme.lua  -- 主题
        ├── configs/         -- 各个插件的配置目录
        ├── editor.lua       -- 代码工具
        ├── lsp.lua          -- 代码补全
        ├── ui.lua           -- ui 界面
        └── util.lua         -- 工具
```

## 插件列表

- [onedark](https://github.com/navarasu/onedark.nvim) 主题
- [alpha-nvim](https://github.com/goolord/alpha-nvim) 欢迎界面
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) 文件树
- [lualine](https://github.com/nvim-lualine/lualine.nvim) 状态栏
- [bufferline](https://github.com/akinsho/bufferline.nvim) 缓冲区
- [nvim-notify](https://github.com/rcarriga/nvim-notify) 消息通知
- [toggleterm](https://github.com/akinsho/toggleterm.nvim) 内置终端
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) 自动配对
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim) git 装饰
- [trouble](https://github.com/folke/trouble.nvim) 诊断列表
- [mason](https://github.com/williamboman/mason.nvim) lsp 管理
- [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim) 连接 mason 和 lspconfig
- [lspconfig](https://github.com/neovim/nvim-lspconfig) nvim lsp 客户端的配置
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) 补全引擎插件
- [markview](https://github.com/OXY2DEV/markview.nvim) Markdown 预览
- [telescope](https://github.com/nvim-telescope/telescope.nvim) 列表模糊查找器

## 快捷键

| 模式   | 键                 | 说明 |
| ------ | ------------------ | ---- |
| normal | `<leader>` + ww |   |
| normal | `<leader>` + wd | 删除当前窗口（不能删除最后一个） |
| normal | `<leader>` + -  | 水平分屏 |
| normal | `<leader>` + \  | 垂直分屏 |
| normal | Ctrl + t  | 打开或关闭文件树 |
| normal | `<leader>` + t | 打开或关闭文件树 |
| normal | `<leader>` + tf | 聚焦到文件树上 |
| normal | `<leader>` + tc | 折叠文件树 |
| normal | `<leader>` + bp |  |
| normal | `<leader>` + mv | 打开或关闭 Markdown Preview |
| normal | `<leader>` + sf | 打开 Telescope 搜索文件 |
