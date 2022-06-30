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
mkdir -p ~/.config/i3
ln -s ${dotdir}/i3config ~/.config/i3/config

# polybar
mkdir -p ~/.config/polybar
ln -s ${dotdir}/polybarconfig ~/.config/polybar/config
ln -s ${dotdir}/polybarlaunch.sh ~/.config/polybar/launch.sh

# alacritty
ln -s ${dotdir}/alacritty.yml ~/.alacritty.yml

# dunst
mkdir -p ~/.config/dunst
ln -s ${dotdir}/dunstrc ~/.config/dunst/dunstrc
