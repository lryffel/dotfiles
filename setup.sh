#!/bin/bash

# parent directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# install necessary programs
sudo pacman -S \
  fish git ranger highlight neovim pass exa \
  sway swaylock swayidle waybar xorg-xwayland fuzzel gammastep \
  base-devel \
  xdg-desktop-portal-wlr \
  zathura zathura-pdf-poppler zathura-djvu xournalpp \
  brightnessctl \
  foot \
  dunst wl-clipboard \
  noto-fonts noto-fonts-emoji otf-font-awesome \
  grim slurp \
  cadence jack2 a2jmidid \
  pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-jack pavucontrol \
  python python-pip \
  texlive \
  bluez-utils \
  xorg \
  python-neovim

# install yay
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
cd .. && rm -rf yay
# install necessary aur packages
yay -S foot

# set up nvim with vimplug
pip install neovim
sh -c 'curl -fLo \
  "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim \
  --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

systemctl enable bluetooth.service

# make symlinks
ln -s -i $DIR/* ~/.config
rm ~/.config README.md setup.sh

# X keyboard settings
localectl set-x11-keymap ch "" de_nodeadkeys caps:swapescape

# default shell fish
chsh -s /bin/fish
