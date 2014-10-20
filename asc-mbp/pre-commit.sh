#!/bin/bash

rsync ~/.bash_aliases ~/.bash_profile ~/.bashrc ~/.bash_completion .
rsync ~/.ssh/config .ssh/
rsync ~/.sleep ~/.wakeup .
rsync -r --exclude '*.swp' ~/bin .
