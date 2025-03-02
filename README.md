# Neovim Config

This repository contains my custom Neovim configuration based on NvChad.

## Installation

To clone and use this configuration on your machine, run the following commands:

```sh
# Clone the repository into your Neovim configuration
git clone https://github.com/gjohnn/neovim-config.git ~/.config/nvim

# Start Neovim (NvChad will automatically install dependencies)
nvim
```
### If you want to user my poor wezterm config

```sh
mkdir .config/wezterm
ln -s ~/.config/nvim/wezterm.lua ~/.config/wezterm/wezterm.lua

```
## Update

If you already have this configuration and want to update it, use:

```sh
cd ~/.config/nvim
git pull
```

## Requirements
- Neovim (version 0.9+)
- Nerd Fonts (for proper icon display)

## Included Plugins
- NvChad as the base
- LSP and autocompletion with nvim-cmp
- File tree with nvim-tree
- Status line with lualine
- Fuzzy finder with Telescope

## Customization
You can modify this configuration by editing the files in `~/.config/nvim/lua/custom/`.
