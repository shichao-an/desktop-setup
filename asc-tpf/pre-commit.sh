#!/bin/bash
# Copy dot files on the current host to this directory

declare -a dotfiles
dotfiles=(~/.bash_profile ~/.bashrc ~/.bash_logout)

cp "${dotfiles[@]}" $(dirname "$BASH_SOURCE")
