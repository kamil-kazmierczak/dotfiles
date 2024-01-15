#!/bin/bash

cp -r \
    ~/.zshrc \
    ~/.scripts \
    ~/repositories/dotfiles

cp -r \
    ~/.config/alacritty \
    ~/.config/hypr \
    ~/.config/swaylock \
    ~/.config/waybar \
    ~/.config/wofi \
    ~/repositories/dotfiles/.config

cp ~/.config/nvim/init.lua ~/repositories/dotfiles/.config/nvim

echo 'Files copied successfully!'

exit
