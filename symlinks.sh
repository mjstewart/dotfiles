#!/bin/bash

ln -s -f ~/dotfiles/zshrc ~/.zshrc
ln -s -f ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s -f ~/dotfiles/tmux/tmuxinator-dev.yml ~/.tmuxinator/dev.yml
ln -s -f ~/dotfiles/vimrc ~/.vimrc
ln -s -f ~/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
ln -s -f ~/dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -s -f ~/dotfiles/gitconfig ~/.gitconfig

sudo ln -s -f /opt/java/jdk-15+36/bin/java /usr/bin/java
sudo ln -s -f /opt/intellij/idea-IC-202.7660.26/bin/idea.sh /usr/bin/idea
sudo ln -s -f /opt/rejig /usr/bin/rejig
sudo ln -s -f /opt/opa /usr/bin/opa

ln -s -f ~/dotfiles/daml-config.yaml ~/.daml/daml-config.yaml

ln -s -f ~/dotfiles/git-templates ~/.git-templates
git config --global init.templatedir '~/.git-templates'
chmod -R a+x ~/.git-templates/hooks/

# to delete symlink only (not the file)
# rm /usr/bin/rejig
