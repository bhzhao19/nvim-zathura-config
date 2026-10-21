# Neovim + VimTeX + Zathura LaTeX Setup

This repository provides a streamlined Neovim configuration optimized for LaTeX editing. It integrates **VimTeX** (for compilation and sync) and **nvim-tree** (for file navigation). Paired with the **Zathura** PDF viewer, it enables a seamless workflow with forward and inverse search (SyncTeX).

---

## 📂 Project Structure

```text
nvim-zathura-config/
├── init.lua          # Neovim main entry point
├── lazy-lock.json    # Plugin version lock file
├── lua/
│   └── plugins/
│       ├── vimtex.lua     # VimTeX and Zathura coupling config
│       └── nvim-tree.lua  # File tree plugin config
└── LICENSE
```

---

## 🚀 Deployment Guide

Follow these steps to replicate this environment on a new machine.

### 1. Install System Dependencies

Ensure the following tools are installed on your system:

- **Neovim** (v0.9+)
- **LaTeX Distribution** (e.g., TeX Live, MacTeX; ensure `latexmk` is available)
- **Zathura & PDF plugins**:
  - Ubuntu/Debian: `sudo apt install zathura zathura-pdf-poppler`
  - Arch Linux: `sudo pacman -S zathura zathura-pdf-poppler`
  - macOS: `brew install --cask zathura`
- **neovim-remote** (`nvr`) — **Essential for inverse search**:
  ```bash
  pip install neovim-remote
  # Or: pipx install neovim-remote
  ```

---

### 2. Clone the Configuration

Clone this repository into your Neovim configuration directory:

```bash
# Backup existing config if necessary
mv ~/.config/nvim ~/.config/nvim.bak

# Clone the repository
git clone https://github.com/bhzhao19/nvim-zathura-config.git ~/.config/nvim
```

---

### 3. Launch and Auto-install

Open your terminal and run `nvim`. The plugin manager (`lazy.nvim`) will automatically detect and install all plugins defined in `lazy-lock.json`. Once finished, restart Neovim.

---

## ⌨️ Usage and Shortcuts

- **Toggle File Tree**: Use your defined shortcut (check `lua/plugins/nvim-tree.lua`).
- **Compile LaTeX**: Open a `.tex` file and run `:VimtexCompile`.
- **Forward Search (Neovim -> PDF)**: Use `<leader>lv` (usually `<Space>lv`), which will open Zathura and scroll to the corresponding line.
- **Inverse Search (PDF -> Neovim)**: In the Zathura window, **`Ctrl` + Left Click** on any text to jump back to the corresponding source line in Neovim.
