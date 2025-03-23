local opt = vim.opt

-- 编码
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

opt.modifiable = true
opt.autowrite = true                 -- 启用自动写入
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"  -- 同步系统剪切板
opt.mouse = "a"                      -- 开启鼠标模式
opt.showmode = false                 -- 不显示当前模式
opt.cmdheight = 1                    -- 命令行高度
opt.termguicolors = true             -- 开启终端的 24 位颜色
opt.wildmode = "longest:full,full"   -- 命令行补全模式

-- 缩进
opt.autoindent  = true  -- 换行自动缩进
opt.smartindent = true  -- 自动插入缩进
opt.breakindent = true
opt.wrap        = true  -- 在任意位置换行
opt.linebreak   = true  -- 换行不断开单词，只在空白处换行
opt.expandtab   = true  -- 将使用空格(spaces)代替跳格(tabs)
opt.list        = true  -- 显示行末空格和制表符
opt.tabstop     = 4
opt.shiftwidth  = 4     -- 缩进大小

-- 行
opt.number = true      -- 显示绝对行号
opt.cursorline = true  -- 高亮当前行
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.scrolloff = 8      -- 保持在上方和下方的最少行数。
opt.sidescrolloff = 8  -- 保持在左侧和右侧的最少列数

-- 搜索
opt.ignorecase = true  -- 忽略大小写
opt.smartcase = true   -- Don't ignore case with capitals
opt.hlsearch = true    -- 高亮搜索结果
opt.incsearch = true   -- 边输入边搜索

-- 窗口(默认新窗口右下)
opt.splitbelow = true  -- 将新窗口放在当前窗口下面
opt.splitright = true  -- 将新窗口放在当前窗口右面

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
