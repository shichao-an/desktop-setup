export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export HISTFILESIZE=2000
export HISTSIZE=2000
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# PATH for pyenv and rbenv
export PATH="$PATH:$HOME/.pyenv/shims:$HOME/.rbenv/shims"
# PATH for Go
export PATH="$PATH:/usr/local/opt/go/libexec/bin"
# pyenv
eval "$(pyenv init -)"
# virtualenvwrapper
export WORKON_HOME=~/envs

if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi
