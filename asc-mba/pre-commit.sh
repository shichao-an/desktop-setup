#!/bin/bash
# Copy dot files on the current host to this directory

declare -a dotfiles
dotfiles=(
    ~/.bash_aliases
    ~/.bash_completion
    ~/.bash_profile
    ~/.bashrc
    )

cp "${dotfiles[@]}" $(dirname "$BASH_SOURCE")
