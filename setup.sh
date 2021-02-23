#!/bin/bash

# parent directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
# install necessary programs
# sudo pacman -S fish sway swaylock swayidle ranger vim vimb waybar zathura git brightnessctl qutebrowser nvim

# make symlinks
ln -s -i $DIR/fish ~/.config
ln -s -i $DIR/ranger ~/.config
ln -s -i $DIR/sway ~/.config
ln -s -i $DIR/vimb ~/.config
ln -s -i $DIR/vimrc ~/.vimrc
ln -s -i $DIR/waybar ~/.config
ln -s -i $DIR/zathura ~/.config
ln -s -i $DIR/alacritty ~/.config
ln -s -i $DIR/qutebrowser ~/.config
ln -s -i $DIR/nvim ~/.config
