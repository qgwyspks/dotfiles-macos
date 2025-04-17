 我在 macOS 上的 dotfiles 配置文件和自用的一些软件 :sparkles:。

# 编程 :tophat:

## Shell :ghost:

- [**Alacritty**](https://alacritty.org/)：极简主义的跨平台终端模拟器，非常快速，在 **MacOS** 上提供了很多额外的 `action` 功能支持。

- [**Homebrew**](https://brew.sh/zh-cn/)：**MacOS** 的包管理器。

  > **Important**：非常推荐使用 `homebrew` 来安装环境和软件。
  
- **zsh**：[zinit](https://zdharma-continuum.github.io/zinit/wiki/) + :rocket:[starship](https://starship.rs/)。

- [**Tmux**](https://github.com/tmux/tmux/wiki)：终端复用器 [tpm](https://github.com/tmux-plugins/tpm) + [tmux-open](https://github.com/tmux-plugins/tmux-open) + [tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight)。

- [**fzf**](https://github.com/junegunn/fzf)：通用的命令行模糊查找器 :mag_right:。

- [**zoxide**]()：`cd` 的替代品，可以记住以前使用的文件路径，直接使用 `z` 命令自动建议文件路径。

- [**bat**](https://github.com/sharkdp/bat)：`cat` 的替代品，它使用图表和语法突出显示而不是纯文本来显示文件。

- [**lsd**](https://github.com/lsd-rs/lsd)：`ls` 的替代品。

- [**dust**](https://github.com/bootandy/dust)：`du` 的替代品，查看磁盘的使用情况。

- [**tokei**](https://github.com/XAMPPRocky/tokei)：显示代码信息的统计程序。

- [**Bottom**](https://github.com/ClementTsang/bottom)：系统监视器。

- ~~[**nvm**](https://github.com/nvm-sh/nvm)：Node.js 的版本管理器。~~

- [**NeoVim**](https://neovim.io/)：基于 Vim 的文本编辑器，具有强大的插件系统 [lazy.nvim](https://lazy.folke.io/) :zzz:。

- [**Miniforge**](https://github.com/conda-forge/miniforge)：包含 `Conda` 和  `Mamba` 、使用 `conda-forge` 作为默认 channel 的最小安装环境。

  > **Tip**：Anaconda :vs: Miniconda :vs: Micromamba :vs: Miniforge，相比较下来，我还是比较推荐最轻量的 Miniforge，它同时包含 `conda` 和 `mamba`，`mamba` 真的非常快 :zap:！
  
- [**uv**](https://docs.astral.sh/uv/)：Python 包和项目管理器​ :hammer_and_wrench:。

  > **Note**：替代了很多常见的工具，如 `pip`、`pipx`、`poetry`、`pyenv` 等等。
  
- [**OrbStack**](https://orbstack.dev/)：:whale: 快速、轻量、简单的 Docker 虚拟机容器软件。

## 笔记 :book:

### Markdown :pencil:

- [**Typora**](https://typoraio.cn/)：所见即所得的 [Markdown](https://markdown.com.cn/) 编辑器和阅读器。

  > **Tip**：89 块 3 台设备我感觉还是蛮划算的，如果想要用免费版可以下载 0.11.18 版本。
  
- [**Obsidian**](https://obsidian.md/)：强大的插件系统，笔记存储在本地，同步需要付费，如果都是苹果设备的话，iCloud 同步会比较方便。

- [**Notion**](https://www.notion.so/)：美观的笔记软件，块状的设计非常灵湖，多系统同步方便。笔记存储在云端，服务器在国外，速度会比较慢。

  > **Note**：我这边安装 Notion，是为了方便 Obsidian 通过插件发布至 Notion，借用 Notion 分享一些笔记。

### LaTeX :mortar_board:

[$\mathbb{Latex}$](https://www.latex-project.org/) 是一个高质量的排版系统，专为生产技术文档和科学文档而设计的。

>  [!note]
>
> 我个人是推荐本地使用 `VSCode` + `LaTex Workshop`，在线 :cloud: 的话就 [**Overleaf**](https://cn.overleaf.com/)。

- [**MacTex**](https://tug.org/mactex/)：LaTeX 环境 = TextLive。

  > - 有精简版本的 BasicTeX，但不建议安装，后续装包可能会有些不必要的麻烦。
  >
  > - :star: 使用 **Homebrew** 安装可以选择 `mactex-no-gui`，少了好多不必要的 GUI 软件。
  
- [**Texifier**](https://www.texifier.com/)：非常漂亮的 LaTeX 编辑器，支持实时预览。

  > **Caution**：实时预览是基于它自身的 TexpadTex 引擎渲染的，会需要额外安装那些需要的库。
  
- [**TeXstudio**](https://texstudio.sourceforge.net/)：跨系统的 LaTex 编辑器，开箱即用。

> [!note]
>
> 还有个轻量级的用于排版文档的标记语言 [**Typst**](https://typst.app/)，有兴趣可以试试。 

### 学术 :school_satchel:

- [**Zotero**](https://www.zotero.org/)：文献管理软件。支持「[**插件功能**](https://zotero-chinese.com/plugins/)」 :arrow_down: ：
  - [**Ethereal Style**](https://github.com/MuiseDestiny/zotero-style)：增强界面功能，:heavy_plus_sign: [**easyScholar**](https://www.easyscholar.cc/) 显示影响因子。
  - [**Translate for Zotero**](https://github.com/windingwind/zotero-pdf-translate)：翻译插件。

## 数据库

- ~~[**SQLiteFlow**](https://www.sqliteflow.com/zh-Hans/)：SQLite 数据库管理器（收费）。~~

- [**Native SQLite Manager**](https://apps.apple.com/cn/app/native-sqlite-manager/id1416282836?mt=12)：SQLite 数据库管理器（App Store 下载，收费）。

- [**Navicat Premium Lite**](https://www.navicat.com.cn/download/navicat-premium-lite)：Navicat 精简版，支持 MySQL、PostgreSQL、SQL Server、Oracle、MariaDB，以及 Redis 和 MongoDB 等 NoSQL 数据库。

- [**Sequel Ace**](https://sequel-ace.com/)：MySQL/MariaDB 数据库管理（App Store 下载）。

- [**DbGate**](https://dbgate.org/)：SQLite/MySQL/MariaDB/PostgreSQL/SQL Server/Oracle/MongoDB/Redis/Amazon Redshift/CockroachDB 支持 SQL+noSQL 的数据库管理。

- [**Beekeeper Studio**](https://www.beekeeperstudio.io/)：MySQL/PostgreSQL/SQLite/SQL Server 等的数据库管理，非常美观、易用。

- [**Tiny RDM**](https://github.com/tiny-craft/tiny-rdm)：轻量级跨平台 Redis 桌面管理器。

- ~~[**harlequin**](https://github.com/tconbeer/harlequin)：终端的 SQL IDE，支持 DuckDB/SQLite。~~

# Software​ :green_apple:

自用的一些软件清单，尽量**免费**为主。

> [!tip]
>
> 大部分的软件都推荐使用 **Homebrew Cask** 安装，因为它会帮你选择适合的版本，且方便管理。

推荐些好网站​ :+1:：
- **MacApp**：https://macapp.org.cn/
- **MacKed**：https://macked.app/
- **appstorent**：https://appstorrent.ru/

## Tool  :hammer_and_wrench:

- [**CotEditor**](https://coteditor.com/)：轻量的文本编辑器。

- [**Raycast**](https://www.raycast.com/)：替代 `Spotlight`，有插件功能（免费版够用）。

- ~~**CheatSheet**：长按**⌘**快速查看应用程序的快捷键。~~

- [**Keka**](https://www.keka.io/zh-cn/)：解压缩软件（App Store 里付费，官网免费）。

- [**The Unarchiver**](https://theunarchiver.com/)：解压缩软件，支持打开 RAR。

- ~~[**Latest**](https://github.com/mangerlahn/Latest)：检查应用是否都是最新版本，提供更新以及具体的更新内容（开源免费）。~~

- ~~[**Mac Mouse Fix**](https://macmousefix.com/)：鼠标滚动平滑工具。~~

- [**LOGI OPTIONS+**](https://www.logitech.com/zh-cn/setup/ergosetup/logi-options.html)：罗技官方提供的鼠标增强工具。

  > 最近换了 Logi 的 `MX Master 3s` 无线办公鼠标，手感各种都很舒服（不愧是上了苹果官网图片的鼠标）。
  >
  > 也有部分原因是罗技游戏鼠标配套的 [**G Hub**](https://www.logitechg.com/zh-cn/innovation/g-hub.html) 在 Mac 下实在是太难受了。
  
- [**Loop**](https://github.com/MrKai77/Loop)：简化窗口管理，使用左 `Fn` 键。

- [**Maccy**](https://maccy.app)：轻量级的剪贴板工具 :clipboard:。

- [**Gopeed**](https://gopeed.com/zh-CN)：开源的现代化下载器（支持插件扩展）。

- ~~[**Shottr**](https://shottr.cc/)：轻量级截图工具，支持滚动长截图和贴图。~~

- [**Snipaste**](https://zh.snipaste.com/)：截图+贴图（Windows 下也一直用这款）。

- ~~[**Kap**](https://getkap.co/)：屏幕录制工具。~~

- [**QuickRecorder**](https://lihaoyun6.github.io/quickrecorder/)：轻量级的开源屏幕录制工具。

- [**IINA**](https://iina.io/)：现代媒体播放器 :clapper:。

  - [**IINA-Plus**](https://github.com/xjbeta/iina-plus)：IINA 添加弹幕功能。

- [**Pika**](https://superhighfives.com/pika)：开源颜色选择器。

- [**Monitor Control**](https://monitorcontrol.app/)：控制外接显示器亮度、音量。

- ~~[**AppCleaner**](https://freemacsoft.net/appcleaner/)：轻量级的卸载小工具。~~

- [**Pearcleaner**](https://itsalin.com/appInfo/?id=pearcleaner)：开源免费的 Mac 应用清理工具。

- [**Aldente Pro**](https://apphousekitchen.com/zh-hans/)：电池管理软件，限制最大充电电量 :battery:（收费）。

- ~~[**BatteryBoi**](https://github.com/thebarbican19/BatteryBoi)：**MacOS** 菜单栏的替代电池 :battery: ​指示器。~~

- ~~[**Dropover**](https://apps.apple.com/cn/app/dropover-%E6%9B%B4%E5%8A%A0%E5%AE%B9%E6%98%93%E6%8B%96%E6%94%BE%E6%96%87%E4%BB%B6/id1355679052?mt=12)：拖动文件更加容易（收费）。~~

- ~~[**Easydict**](https://github.com/tisfeng/Easydict)：词典翻译 App，[Bob](https://bobtranslate.com/guide/) 的免费替代品。~~

- **Silicon**：识别软件的兼容，也可以使用 [Silicon Info](https://apps.apple.com/cn/app/silicon-info/id1542271266?mt=12)。

- ~~[**AirBuddy**](https://v2.airbuddy.app/)：在 macOS 上查看你的无线设备。~~

- [**iStat Menus**](https://bjango.com/mac/istatmenus/)：我个人认为最好用的系统检监测工具 :bar_chart:（同类型免费替代产品很多）

- [**Hot**](https://github.com/macmade/Hot)：CPU 温度 :fire: 检测。

- [**WattsConnected**](https://apps.apple.com/us/app/wattsconnected/id1639692859?mt=12)：显示充电器 :battery: ​提供的瓦数。

- [**BetterDisplay**](https://github.com/waydabber/BetterDisplay/blob/landing/README.md)：非4K显示器开启 **HiDPI**（收费）。

- [**SwitchHosts**](https://switchhosts.vercel.app/zh)：管理 hosts 文件，切换多个 hosts 方案。

  > **Important**：配合 [Github520](https://github.com/521xueweihan/GitHub520) 项目蛮好的，最后前往 `/etc/hosts` 修改下文件的权限，修改 **everyone** 的权限 [**只读**] -> [**读与写**]
  
- [**Hammerspoon**](https://www.hammerspoon.org/)：:hammer: ​自动化工具，使用 Lua 脚本实现各种操作。

- [**Bruno**](https://www.usebruno.com/)：免费开源的 API 测试工具（离线）。

- [**Rapid API**](https://paw.cloud/)：原名 `Paw`， 专为 Mac 设计的 API 工具，背靠 [Rapid API Hub](https://rapidapi.com/) 中心。

- [**Reqable**](https://reqable.com/zh-CN/)：``Fiddler` + `Charles` + `Postman`，新一代 API 开发工具。

- [**Hoppscotch**](https://hoppscotch.io/)：开源免费的 API 开发工具。

- [**OpenInTerminal**](https://github.com/Ji4n1ng/OpenInTerminal)：`Finder` 工具栏应用程序，用于打开终端、打开指定 App 等。

- [**OpenInTerminal-Lite**](https://github.com/Ji4n1ng/OpenInTerminal/blob/master/Resources/README-Lite-zh.md)：上面的功能删减版，如果只有打开终端的需求的话 。

- [**NeoHtop**](https://abdenasser.github.io/neohtop/)：跨平台的系统监视器。

- [**Sentinel**](https://itsalin.com/appInfo/?id=sentinel)：修复软件、自动签名的工具。

- [**ChatGPT**](https://openai.com/chatgpt/download/)：ChatGPT 客户端软件。

## :underage: 科学​ :crystal_ball:

- **Clash系**：有 [ClashX](https://en.clashx.org/)、ClashX Pro、[Clash Verge Rev](https://github.com/Clash-Verge-rev/clash-verge-rev/releases) 和 CFW这些。
  
    > **Warning**：不过 Clash 的内核 `Premium` 删库跑路了，就 [Meta](https://github.com/MetaCubeX/mihomo) 的作者改名 `mihomo` 偷偷还在更新。
    >
    > 所以这边更推荐基于 [Meta](https://github.com/MetaCubeX/mihomo) 的 [Clash Verge Rev](https://github.com/Clash-Verge-rev/clash-verge-rev/releases)。 
    
- [**sing-box**](https://apps.apple.com/us/app/sing-box/id6451272673)：上手难度偏高，支持的协议非常多，比较适合自建服务器 VPS 的用户使用，也有相关的项目支持 Clash 的订阅转换。

    > **Note**：App Store 版本需要外区 「Apple ID」，也可以使用 Homebrew Cask 安装 `SFM` 图形化界面

> [!note]
>
> 如果不喜欢图形化界面的，可以选择使用命令行版本（`sing-box`、`clash-meta` 或者 `clash-premium`都行），自己写一个 `plist` 文件设置好开机自启动即可。
