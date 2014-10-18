#!/bin/bash

declare -a dotfiles
dotfiles=(~/.bash_profile ~/.bashrc ~/.bash_logout)

cp "${dotfiles[@]}" $(dirname "$BASH_SOURCE")
