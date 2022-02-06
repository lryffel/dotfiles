#!/bin/bash

# parent directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# install necessary programs
sudo pacman -S \
  fish git ranger highlight neovim pass lsd \
  sway swaylock swayidle waybar xorg-xwayland fuzzel gammastep \
  zathura zathura-pdf-poppler zathura-djvu xournalpp \
  brightnessctl \
  foot \
  dunst wl-clipboard \
  noto-fonts noto-fonts-emoji otf-font-awesome \
  grim slurp \
  cadence jack2 a2jmidid \
  pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-jack pavucontrol \
  python python-pip \
  texlive-most \
  bluez-utils

git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
cd .. && rm -rf yay
yay -S foot ly

pip install neovim

systemctl enable bluetooth.service
sudo systemctl enable ly.service

# make symlinks, e.g., like this.
ln -s -i $DIR/* ~/.config
rm ~/.config README.md setup.sh
