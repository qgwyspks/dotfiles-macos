## Homebrew 安装

> 仅针对 **macOS** 和**暂时不能科学上网**的用户。
>
> 有条件的可以直接去[**官方网址**](https://brew.sh/zh-cn/)一步到位。

这边选择使用[**清华源**](https://mirrors.tuna.tsinghua.edu.cn/help/homebrew/)，因为清华源的教程是我个人翻阅下来最清晰明了的。

### 安装 Command Line Tools for Xcode

需要安装 CLT for Xcode。

> 这是一种**精简**的安装法。如果硬盘够大，可以选择直接 App Store 中安装 Xcode。

```shell
xcode-select install
```

### 配置镜像源

可以直接复制粘贴在命令行中运行，但这样只是临时的。

```shell
export HOMEBREW_INSTALL_FROM_API=1  # 默认行为，可以忽略
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_PIP_INDEX_URL="https://pypi.tuna.tsinghua.edu.cn/simple"
```

使用以下命令把环境配置文件写入 `~/.zshrc` 中：

```shell
cat << EOF >> ~/.zshrc
export HOMEBREW_INSTALL_FROM_API=1 # 默认行为，可以忽略
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_PIP_INDEX_URL="https://pypi.tuna.tsinghua.edu.cn/simple"
EOF
```

激活 `zsh` 环境（二选一即可）：

- `source ~/.zshrc` 
- `exec zsh` 

### 安转 Homebrew

```shell
# 从本镜像下载安装脚本并安装 Homebrew / Linuxbrew
git clone --depth=1 https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/install.git brew-install
/bin/bash brew-install/install.sh
rm -rf brew-install

# 也可从 GitHub 获取官方安装脚本安装 Homebrew / Linuxbrew
/bin/bash -c "$(curl -fsSL https://github.com/Homebrew/install/raw/master/install.sh)"
```

#### 错误情况

如果在安装过程中因为网络等因素停止了，重新安装会遇到一些问题，需要去**清理掉相关缓存**。

```shell
sudo rm -rf ~/Library/Caches/Homebrew
```

### 添加环境变量

安装成功后，需要将 `brew` 添加到环境变量中，方便系统找到 `brew` 这个命令。

这里针对基于 **Apple Silicon CPU**（m 系列芯片）的 **macOS** 系统（命令行运行 `name -m` 应输出 `arm64`）。

```shell
test -r ~/.zprofile && echo 'eval "$(/opt/homebrew/bin/brew shellenv)"'
```

执行 `brew update` 测试即可。

### 其他仓库

除 `homebrew/core` 和 `homebrew/cask` 仓库外的 tap 仓库仍然需要设置镜像

```shell
brew tap --custom-remote --force-auto-update homebrew/cask-fonts https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-cask-fonts.git
brew tap --custom-remote --force-auto-update homebrew/cask-versions https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-cask-versions.git
brew tap --custom-remote --force-auto-update homebrew/command-not-found https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-command-not-found.git
brew tap --custom-remote --force-auto-update homebrew/services https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-services.git
brew update
```

