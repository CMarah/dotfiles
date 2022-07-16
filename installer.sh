#!/bin/bash

# Variables
dotdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
olddir=~/.dotfiles_old             # old dotfiles backup directory

# Create backup folder
echo "Creating directory $olddir for backup\n"
mkdir -p $olddir

# VIM
echo "Linking vimrc\n"
mv ~/.vimrc $olddir
ln -s ${dotdir}/vimrc ~/.vimrc
echo ""

# zsh
echo "Linking zsh files\n"
mv ~/.zshrc ~/.p10k.zsh $olddir
ln -s ${dotdir}/zshrc ~/.zshrc
ln -s ${dotdir}/p10k.zsh ~/.p10k.zsh
echo ""

# bash
echo "Linking bash files\n"
mv ~/.bashrc ~/.bash_aliases $olddir
ln -s ${dotdir}/bashrc ~/.bashrc
ln -s ${dotdir}/bash_aliases ~/.bash_aliases
echo ""

# Git
echo "Linking gitconfig\n"
mv ~/.gitconfig $olddir
ln -s ${dotdir}/gitconfig ~/.gitconfig

# i3
echo "Linking i3 config\n"
mkdir ~/.config/i3
mv ~/.config/i3 $olddir
ln -s ${dotdir}/config/i3/config ~/.config/i3/config

# polybar
echo "Linking polybar config\n"
mv ~/.config/polybar $olddir
mkdir ~/.config/polybar
ln -s ${dotdir}/config/polybar/launch.sh ~/.config/polybar/launch.sh
ln -s ${dotdir}/config/polybar/config.ini ~/.config/polybar/config.ini
ln -s ${dotdir}/config/polybar/glyphs.ini ~/.config/polybar/glyphs.ini
ln -s ${dotdir}/config/polybar/modules.ini ~/.config/polybar/modules.ini

# alacritty
echo "Linking alacritty config\n"
mv ~/.config/alacritty $olddir
mkdir ~/.config/alacritty
ln -s ${dotdir}/config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# dunst
echo "Linking dunst config\n"
mv ~/.config/dunst $olddir
mkdir ~/.config/dunst
ln -s ${dotdir}/config/dunst/dunstrc ~/.config/dunst/dunstrc

# eww
echo "Linking main eww config, copying rest\n"
mv ~/.config/eww $olddir
mkdir ~/.config/eww
ln -s ${dotdir}/config/eww/eww.scss ~/.config/eww
ln -s ${dotdir}/config/eww/eww.yuck ~/.config/eww
cp -r ${dotdir}/config/eww/Main ~/.config/eww
cp -r ${dotdir}/config/eww/Misc ~/.config/eww
cp -r ${dotdir}/config/eww/Player ~/.config/eww
cp -r ${dotdir}/config/eww/System\-menu ~/.config/eww

# Picom
echo "Linking picom config\n"
mv ~/.config/picom.conf $olddir
ln -s ${dotdir}/config/picom.conf ~/.config/picom.conf

# rofi
echo "Linking main rofi config, copying rest\n"
mv ~/.config/rofi $olddir
mkdir ~/.config/rofi
ln -s ${dotdir}/config/rofi/config.rasi ~/.config/rofi
cp -r ${dotdir}/config/rofi/mount ~/.config/rofi
cp -r ${dotdir}/config/rofi/music ~/.config/rofi
cp -r ${dotdir}/config/rofi/screen ~/.config/rofi
cp -r ${dotdir}/config/rofi/screenshot ~/.config/rofi
cp -r ${dotdir}/config/rofi/Themes ~/.config/rofi
