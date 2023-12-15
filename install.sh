#!/bin/bash

# Install ZSH
sudo sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)"
echo "Installed ZSH"

# Install oh-my-zsh
cd $HOME && sh -c "$(wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -- --skip-chsh
echo "Installed oh-my-zsh"

# Rewrite ZSH configuration
rm $HOME/.zshrc
cp $HOME/dotfiles/.zshrc $HOME/.zshrc

# oh-my-zsh & plugins
# zsh -c 'git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'
# zsh -c 'git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'
echo "Done"
