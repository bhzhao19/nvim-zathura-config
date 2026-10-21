# Neovim + VimTeX + Zathura LaTeX写作环境配置

本项目是专为 LaTeX 写作打造的 Neovim 配置，集成了 **VimTeX**（用于高效编译、正反向检索）和 **nvim-tree**（文件树侧边栏）。配合 **Zathura** 阅读器，可以实现极其流畅的正反向同步。

---

## 📂 项目结构

```text
nvim-zathura-config/
├── init.lua          # Neovim 主入口配置
├── lazy-lock.json    # 插件版本锁定文件
├── lua/
│   └── plugins/
│       ├── vimtex.lua     # VimTeX 及 Zathura 耦合配置
│       └── nvim-tree.lua  # 文件树插件配置
└── LICENSE
```

---

## 🚀 新电脑快速部署指南

在新电脑上复刻这套环境，只需依次执行以下步骤：

### 1. 安装系统依赖

在开始之前，请确保新电脑安装了以下工具：

- **Neovim** (建议 >= 0.9)
- **LaTeX 发行版** (如 TeX Live / MacTeX，确保包含 `latexmk`)
- **Zathura** 及 PDF 后端插件 (支持正反向同步)：
  - Ubuntu/Debian: `sudo apt install zathura zathura-pdf-poppler`
  - Arch Linux: `sudo pacman -S zathura zathura-pdf-poppler`
  - macOS: `brew install --cask zathura`
- **neovim-remote** (`nvr`) —— **实现 Zathura 反向检索的核心**：
  ```bash
  pip install neovim-remote
  # 或者: pipx install neovim-remote
  ```

---

### 2. 克隆配置到 Neovim 目录

将本项目克隆或软链接到你的 Neovim 配置目录（通常为 `~/.config/nvim`）：

```bash
# 如果 ~/.config/nvim 已经存在，建议先备份
mv ~/.config/nvim ~/.config/nvim.bak

# 克隆仓库到 ~/.config/nvim
git clone https://github.com/bhzhao19/nvim-zathura-config.git ~/.config/nvim
```

---

### 3. 启动 Neovim 并自动安装插件

打开终端并输入：
```bash
nvim
```
Neovim 的插件管理器（`lazy.nvim`）会根据 `lazy-lock.json` 自动下载并安装所有插件（包括 VimTeX 和 nvim-tree）。安装完成后重启即可。

---

## ⌨️ 常用快捷键与功能测试

- **开启/关闭文件树**：在 Neovim 中按下对应快捷键（可在 `lua/plugins/nvim-tree.lua` 中查看）。
- **编译 LaTeX 文档**：打开 `.tex` 文件后输入 `:VimtexCompile`。
- **正向检索 (Neovim -> PDF)**：在 Neovim 中输入 `<leader>lv`（通常 `<leader>` 是空格键），Zathura 会自动弹出并高亮光标对应的 PDF 行。
- **反向检索 (PDF -> Neovim)**：在 Zathura 阅读器中，按住 `Ctrl` 键并用**鼠标左键**点击 PDF 中的某一行文字，即可自动跳回 Neovim 对应的源码行。
