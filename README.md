# My Dev Setup

This is my personal development environment setup, including **ZSH**, **Tmux**, and **LazyVim** for an optimized terminal and editing experience.

---

## Table of Contents

- [ZSH Setup](#zsh-setup)
- [Tmux Setup](#tmux-setup)
- [Neovim Setup](#neovim-setup)
- [Finalizing Setup](#finalizing-setup)
- [Installed Plugins](#installed-plugins)
- [Customization](#customization)

---

## ZSH Setup

### Install ZSH

```bash
brew install zsh
```

### Install Oh-My-Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install Plugins

#### zsh-autosuggestions

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
```

#### zsh-syntax-highlighting

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

#### autojump

```bash
git clone https://github.com/wting/autojump.git ~/.oh-my-zsh/custom/plugins/autojump
```

#### Dracula theme

```bash
git clone https://github.com/dracula/zsh.git ~/.oh-my-zsh/custom/themes/dracula
```

### Symbolic Link for .zshrc

```bash
ln -s ~/.settings/.zshrc ~/.zshrc
```

---

## Tmux Setup

### Install Tmux

```bash
brew install tmux
```

### Symbolic Link for .tmux.conf

```bash
ln -s ~/.settings/.tmux.conf ~/.tmux.conf
```

---

## Neovim Setup

### Install Neovim

```bash
brew install neovim
```

### Install LazyVim

```bash
git clone https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/site/pack/packer/start/lazy.nvim
```

### Symbolic Link for Neovim Config

```bash
ln -s ~/.settings/.config ~/.config
```

---

# 📦 Finalizing Setup

(Mention any final steps here like sourcing files, restarting shell, etc.)

---

# 🔌 Installed Plugins

(List the plugins you installed via LazyVim, ZSH, Tmux)

---

# 🎨 Customization

(Write any customizations you made.)

---

