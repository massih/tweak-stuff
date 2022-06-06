#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y

sudo apt install neovim tmux zsh 

## install oh my zshell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
