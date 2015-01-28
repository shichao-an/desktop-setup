HISTFILESIZE=2000
HISTSIZE=1000
PS1='asc-fuhu:\W \u\$ '
alias ll="ls -alG"
# pyenv
eval "$(pyenv init -)"
# virtualenvwrapper
export WORKON_HOME=~/envs

alias grep='grep --color=auto'
alias vw='pyenv virtualenvwrapper'

# brew coreutils
alias readlink='/usr/local/bin/greadlink'
alias realpath='/usr/local/bin/grealpath'


export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home/jre
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Environment variables for .bashrc and .bash_aliases

if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi
if [ -f "$HOME/.bash_completion" ]; then
    . "$HOME/.bash_completion"
fi
if [ -f "$HOME/.bash_aliases" ]; then
    . "$HOME/.bash_aliases"
fi
