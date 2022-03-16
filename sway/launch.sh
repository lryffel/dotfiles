#!/bin/bash

export TERMINAL="foot"
export BROWSER="firefox"
export EDITOR="nvim"
export VISUAL="nvim"

export QT_QPA_PLATFORM=wayland
export GDK_BACKEND=wayland
export XDG_CURRENT_DESKTOP=sway
export XDG_CONFIG_HOME="$HOME/.config"

sway
