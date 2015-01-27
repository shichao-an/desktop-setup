# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ll='ls -al --color=auto'

whatprovides()
{
    local usage="Usage: whatprovides command_name"
    [ "$#" -ne 1 ] && { echo "$usage" >&2; return 1; }
    local filename="$(which --skip-alias "$1" 2>/dev/null)" 
    [ -z "$filename" ] && { echo "no command found" >&2; return 1; }
    rpm -q --whatprovides "$filename" 
}

browse()
{
    if [ -z "$1" ]
    then
        directory="$PWD"
    else
        directory="$1"
    fi
    ( nautilus "$directory" &> /dev/null & )
}

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
source /usr/bin/virtualenvwrapper.sh
