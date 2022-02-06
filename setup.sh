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

# install yay
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
cd .. && rm -rf yay
# install necessary aur packages
yay -S foot ly

# set up nvim with vimplug
pip install neovim
sh -c 'curl -fLo \
  "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim \
  --create-dirs \ 
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

systemctl enable bluetooth.service
sudo systemctl enable ly.service

# make symlinks
ln -s -i $DIR/* ~/.config
rm ~/.config README.md setup.sh
