# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ll='ls -al --color=auto'

browse() {
    if [ -z "$1" ]
    then
        directory="$PWD"
    else
        directory="$1"
    fi
    (nautilus "$directory" > /dev/null &)
}

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
source /usr/bin/virtualenvwrapper.sh
