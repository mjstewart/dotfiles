#!/bin/bash

ln -s -f ~/dotfiles/zshrc ~/.zshrc
ln -s -f ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s -f ~/dotfiles/tmux/tmuxinator-dev.yml ~/.tmuxinator/dev.yml
ln -s -f ~/dotfiles/vimrc ~/.vimrc
ln -s -f ~/dotfiles/vscode-settings.json ~/.config/Code/User/settings.json
ln -s -f ~/dotfiles/gitconfig ~/.gitconfig

sudo ln -s -f /opt/java/jdk-15+36/bin/java /usr/bin/java
sudo ln -s -f /opt/intellij/idea-IC-202.7660.26/bin/idea.sh /usr/bin/idea

# sudo ln -s -f /opt/daml/bin/daml /usr/bin/daml
