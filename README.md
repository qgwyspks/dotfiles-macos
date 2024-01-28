 我在 MacOS 上的 dotfiles 配置文件和自用的软件 :sparkles:。

# Contents​ :book:

- [**Alacritty**](https://alacritty.org/)：极简主义的跨平台终端模拟器，非常快速，在 MacOS 上提供了很多额外的 action 功能支持

- **zsh**：[zinit](https://zdharma-continuum.github.io/zinit/wiki/) + :rocket:[starship](https://starship.rs/)

- [**Tmux**](https://github.com/tmux/tmux/wiki)：终端复用器 [tpm](https://github.com/tmux-plugins/tpm) + [tmux-open](https://github.com/tmux-plugins/tmux-open) + [tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight)

- [**bat**](https://github.com/sharkdp/bat)：`cat` 替代品

- [**nvm**](https://github.com/nvm-sh/nvm)：Node.js 的版本管理器

- [**Neovim**](https://neovim.io/)：基于 Vim 的文本编辑器，具有强大的插件系统

- [**fzf**](https://github.com/junegunn/fzf)：通用的命令行模糊查找器

- [**Miniforge**](https://github.com/conda-forge/miniforge)：包含 `Conda` 和  `Mamba` 的使用 `conda-forge` 作为默认 channel 的最小安装环境

  > Anaconda​ :vs: Miniconda​ :vs:Micromamba :vs: ​Miniforge，相比较下来，我还是比较推荐最轻量的 Miniforge，它同时包含 `conda` 和 `mamba`，`mamba` 真的非常快 :zap:！

- [**OrbStack**](https://orbstack.dev/)：快速、轻量、简单的 Docker 虚拟机容器软件

# Software​ :green_apple:

自用的一些软件清单，尽量免费为主。

> 大部分的软件都推荐使用 **Homebrew Cask** 安装，因为它会帮你选择适合的版本，且方便管理。

推荐些好网站​ :+1:：
- **MacApp**：https://macapp.org.cn/
- **appstorent**：https://appstorrent.ru/

## IDE :memo:

- [**CotEditor**](https://coteditor.com/)：轻量的文本编辑器

- **VSCode**：代码编辑器
  
    > 不知道为什么，感觉 Mac 下的 vscode 好看很多！
    
- JetBrains
    - [JetBrains Toolbox](https://www.jetbrains.com/toolbox-app/)：如果有账号，使用 toolbox 来管理会非常方便
    - PyCharm
    - GoLand
    
    > 大学生可以用学生邮箱申请免费使用，一般一年重新验证一次资格

## Tool

- [**Raycast**](https://www.raycast.com/)：替代 Spotlight，有插件功能（免费版够用）

- **CheatSheet**：长按**⌘**快速查看应用程序的快捷键

- [**Keka**](https://www.keka.io/zh-cn/)：解压缩软件

  > App Store里付费，官网免费

- [**Mac Mouse Fix**](https://macmousefix.com/)：鼠标滚动平滑工具

  > 同类型还有 [Mos](https://mos.caldis.me/)，但它很久不更新了

- [**Shottr**](https://shottr.cc/)：轻量级截图工具，支持滚动长截图和贴图

- [**Kap**](https://getkap.co/)：屏幕录制工具

- [**IINA**](https://iina.io/)：现代媒体播放器

- [**AppCleaner**](https://freemacsoft.net/appcleaner/)：轻量级的卸载小工具

- [**Aldente Pro**](https://apphousekitchen.com/zh-hans/)：电池管理软件，限制最大充电电量 :battery:

- [**Dropover**](https://apps.apple.com/cn/app/dropover-%E6%9B%B4%E5%8A%A0%E5%AE%B9%E6%98%93%E6%8B%96%E6%94%BE%E6%96%87%E4%BB%B6/id1355679052?mt=12)：拖动文件更加容易

- [**Easydict**](https://github.com/tisfeng/Easydict)：词典翻译 App，[Bob](https://bobtranslate.com/guide/) 的免费替代品

- **Silicon**：识别软件的兼容，也可以使用 [Silicon Info](https://apps.apple.com/cn/app/silicon-info/id1542271266?mt=12)

- [**AirBuddy**](https://v2.airbuddy.app/)：在 macOS 上查看你的无线设备

- [**iStat Menus**](https://bjango.com/mac/istatmenus/)：我个人认为最好用的系统检监测工具（同类型免费替代产品很多）

- [**BetterDisplay**](https://github.com/waydabber/BetterDisplay/blob/landing/README.md)：非4K显示器开启 HiDPI

  > 开启 HiDPI 后，又可以直接在**设置->显示器**中设置，就很奇怪 :question:

- [**SwitchHosts**](https://switchhosts.vercel.app/zh)：管理 hosts 文件，切换多个 hosts 方案

- [**Hammerspoon**](https://www.hammerspoon.org/)：自动化工具，使用 Lua 脚本实现各种操作

- [**Bruno**](https://www.usebruno.com/)：离线的 API 客户端

  > 文件都在本地，**不用登录**让人很难不喜欢

## 笔记

### Markdown

- [**Typora**](https://typoraio.cn/)：所见即所得的 Markdown 编辑器和阅读器

    > 89 块 3 台设备我感觉还是蛮划算的，如果想要用免费版可以下载 0.11.18 版本。
- [**Obsidian**](https://obsidian.md/)：强大的插件系统，笔记存储在本地，同步需要付费
- [**Notion**](https://www.notion.so/)：美观的笔记软件，块状的设计非常灵湖，多系统同步方便。笔记存储在云端，服务器在国外，速度会比较慢

    > 我这边安装 Notion，是为了方便 Obsidian 通过插件发布至 Notion，借用 Notion 分享一些笔记。

### LaTeX

- [**MacTex**](https://tug.org/mactex/)：LaTeX 环境 = TextLive

  > 有精简版本的 BasicTeX，但不建议安装，后续装包可能会有些不必要的麻烦。

- [**Texifier**](https://www.texifier.com/)：非常漂亮的 LaTeX 编辑器，支持实时预览

    > 实时预览是基于它自身的 TexpadTex 引擎渲染的，会需要额外安装那些需要的库

## 数据库

- [**Sequel Ace**](https://sequel-ace.com/)：MySQL/MariaDB 数据库管理

- [**DbGate**](https://dbgate.org/)：SQLite/MySQL/MariaDB/PostgreSQL/SQL Server/Oracle/MongoDB/Redis/Amazon Redshift/CockroachDB 支持 SQL+noSQL 的数据库管理
  
    > 真的很喜欢 DbGate，开启速度是我目前见过**最快**​ :zap: 的！
    
- [**Beekeeper Studio**](https://www.beekeeperstudio.io/)：MySQL/PostgreSQL/SQLite/SQL Server 等的数据库管理，非常美观、易用

    > 不知道为什么双击数据库文件，不会默认使用 DbGate，所以这边安装了 Beekeeper，启动速度也非常快。

## 科学​ :crystal_ball:

- **Clash系**：有 [ClashX](https://en.clashx.org/)、ClashX Pro、[Clash Verge](https://github.com/zzzgydi/clash-verge/releases) 和 CFW这些
  
    > 不过 Clash 的内核 Premium 都删库跑路了，就 [Meta](https://github.com/MetaCubeX/ClashX.Meta)（[mihomo](https://github.com/MetaCubeX/mihomo)）的作者还在更新
    
- [**sing-box**](https://apps.apple.com/us/app/sing-box/id6451272673)：上手难度偏高，支持的协议非常多，比较适合自建服务器的用户使用，也有相关的项目支持 Clash 的订阅转换

    > App Store 版本需要外区 ID，也可以使用 Homebrew Cask 安装 sfm 图形化界面

> 如果不喜欢图形化界面的，可以选择使用命令行版本，自己写一个 plist 文件设置好开启启动即可。

