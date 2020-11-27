#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# VIM
ln -s ${BASEDIR}/vimrc ~/.vimrc
#ln -s ${BASEDIR}/vim/ ~/.vim

# zsh
ln -s ${BASEDIR}/zshrc ~/.zshrc

# bash
ln -s ${BASEDIR}/bashrc ~/.bashrc

# Git
ln -s ${BASEDIR}/gitconfig ~/.gitconfig

# i3
mkdir ~/.config/i3
ln -s ${BASEDIR}/i3config ~/.config/i3/config

# polybar
mkdir ~/.config/polybar
ln -s ${BASEDIR}/polybarconfig ~/.config/polybar/config
ln -s ${BASEDIR}/polybarlaunch.sh ~/.config/polybar/launch.sh
