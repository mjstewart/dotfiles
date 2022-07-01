#!/bin/bash

# Before running this script, install dependencies

- https://github.com/ohmyzsh/ohmyzsh
    - https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
    - https://github.com/zsh-users/zsh-syntax-highlighting
    - https://github.com/zsh-users/zsh-completions
- https://sw.kovidgoyal.net/kitty/
- gnu stow
- fzf fuzzy finder - https://github.com/junegunn/fzf#using-git
- fd used with fzf - https://github.com/sharkdp/fd#installation
- lazygit - https://github.com/jesseduffield/lazygit#manual
- nerdfonts - https://www.chrisatmachine.com/Linux/05-nerd-fonts/
- zoxide - https://github.com/ajeetdsouza/zoxide
- glow - markdown previewer - https://github.com/charmbracelet/glow (install binary on path ~/.local/bin)
- hpack - https://github.com/sol/hpack (install binary on path ~/.local/bin)

# zsh plugins
# 
# cd ~/.zsh
# git clone https://github.com/zsh-users/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
# git clone git://github.com/zsh-users/zsh-completions.git

# fzf
#
# git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
# ~/.fzf/install


# Use this for another place to add to the PATH
mkdir ~/.local/bin

# Add kitty desktop icon 

# Create a symbolic link to add kitty to PATH (assuming ~/.local/bin is in # your PATH)
ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
# Place the kitty.desktop file somewhere it can be found by the OS
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
# Update the path to the kitty icon in the kitty.desktop file
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty.desktop


# Themes

# https://github.com/dexpota/kitty-themes
git clone --depth 1 git@github.com:dexpota/kitty-themes.git ~/.kitty-themes

ln -s ~/.kitty-themes/themes/Jetbrains_Dracula.conf ~/.dotfiles/kitty/.config/theme.conf


# Fonts 
# Download nerdfonts then clean up the files to the only of interest
rm *Winodws*
find . -type f -iregex '.*Mono.ttf$' -delete


cd ~/.local/share/fonts 
curl -fLo "JetBrains Mono Regular Nerd Font Complete" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Ligatures/Regular/complete/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete.ttf
curl -fLo "JetBrains Mono Bold Nerd Font Complete" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Ligatures/Bold/complete/JetBrains%20Mono%20Bold%20Nerd%20Font%20Complete.ttf
curl -fLo "JetBrains Mono Bold Italic Nerd Font Complete" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Ligatures/BoldItalic/complete/JetBrains%20Mono%20Bold%20Italic%20Nerd%20Font%20Complete.ttf
curl -fLo "JetBrains Mono Medium Nerd Font Complete" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Ligatures/Medium/complete/JetBrains%20Mono%20Medium%20Nerd%20Font%20Complete.ttf

# 

# stow all directories
stow */ -v

# stow zsh -v
# stow -D */ -v 
