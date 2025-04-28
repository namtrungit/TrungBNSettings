# My Dev Setup

This is my personal development environment setup, including **ZSH**, **Tmux**, and **LazyVim** for an optimized terminal and editing experience.

---

## Table of Contents

- [ZSH Setup](#zsh-setup)
- [Tmux Setup](#tmux-setup)
- [LazyVim Setup](#lazyvim-setup)
- [Finalizing Setup](#finalizing-setup)
- [Installed Plugins](#installed-plugins)
- [Customization](#customization)

---

## ZSH Setup

### Install ZSH
### Install Oh-my-zsh
#### Install zsh-autosuggestion
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

#### Install zsh-syntax-highlight
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

#### Install autojump
```bash
git clone https://github.com/wting/autojump.git ~/.oh-my-zsh/custom/plugins/autojump

#### Install dracula theme
```bash
git clone https://github.com/dracula/zsh.git ~/.oh-my-zsh/custom/themes/dracula

#### Sympol link
```bash
ln -s ~/.settings/.zshrc ~/.zshrc

## Tmux Setup
### Tmux Install
```bash
brew install tmux

#### Sympol link
```bash
ln -s ~/.settings/.tmux.conf ~/.tmux.conf

## Neovim setup
### Install Neovim
```bash
brew install neovim

### Install LazyVim
```bash
git clone https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/site/pack/packer/start/lazy.nvim
ln -s ~/.settings/.config ~/.config

