#!/bin/bash

# install necessary programs
sudo pacman -S fish sway swaylock swayidle ranger vim vimb waybar zathura git

# make symlinks
ln -s fish ~/.config/fish
ln -s ranger ~/.config/ranger
ln -s sway ~/.config/sway
ln -s vimb ~/.config/vimb
ln -s .vimrc ~/.vimrc
ln -s waybar ~/.config/waybar
ln -s zathura ~/.config/zathura
