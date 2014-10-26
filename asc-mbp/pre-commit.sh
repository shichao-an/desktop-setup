#!/bin/bash

local_etc_dir="/usr/local/etc"
rsync ~/.bash_aliases ~/.bash_profile ~/.bashrc ~/.bash_completion .
rsync ~/.ssh/config .ssh/
rsync ~/.sleep ~/.wakeup .
rsync -r --exclude '*.swp' ~/bin .
rsync "$local_etc_dir/dnsmasq.conf" "$local_etc_dir/dnsmasq.hosts" .
