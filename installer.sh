#!/bin/bash

# Variables
dotdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
olddir=~/dotfiles_old             # old dotfiles backup directory

# Backup files
echo "Creating directory $olddir for backup"
mkdir -p $olddir
echo "Done"
echo ""
echo "Moving existing dotfiles"
mv ~/.vimrc ~/.zshrc ~/.p10k.zsh ~/.bashrc ~/.bash_aliases ~/.gitconfig ~/.alacritty.yml $olddir
mv ~/.config/i3/config ~/dotfiles_old/i3config
mv ~/.config/polybar/config ~/dotfiles_old/polybarconfig
mv ~/.config/polybar/launch.sh ~/dotfiles_old/polybarlaunch.sh
echo "Finished backup"
echo ""

# Create Symbolic Links
echo "Creating symbolic links"

# VIM
ln -s ${dotdir}/vimrc ~/.vimrc

# zsh
ln -s ${dotdir}/zshrc ~/.zshrc
ln -s ${dotdir}/p10k.zsh ~/.p10k.zsh

# bash
ln -s ${dotdir}/bashrc ~/.bashrc
ln -s ${dotdir}/bash_aliases ~/.bash_aliases

# Git
ln -s ${dotdir}/gitconfig ~/.gitconfig

# i3
ln -s ${dotdir}/config/i3 ~/.config/i3

# polybar
ln -s ${dotdir}/config/polybar ~/.config/polybar

# alacritty
ln -s ${dotdir}/config/alacritty ~/.config/alacritty

# dunst
ln -s ${dotdir}/config/dunst ~/.config/dunst

# eww
ln -s ${dotdir}/config/eww ~/.config/eww

# Picom
ln -s ${dotdir}/config/picom.conf ~/.config/picom.conf
