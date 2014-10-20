export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export HISTFILESIZE=2000
export HISTSIZE=2000
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# PATH for pyenv, rbenv and $HOME/bin
export PATH="$PATH:$HOME/.pyenv/shims:$HOME/.rbenv/shims:$HOME/bin"
# PATH for Go
export PATH="$PATH:/usr/local/opt/go/libexec/bin"
# pyenv
eval "$(pyenv init -)"
# virtualenvwrapper
export WORKON_HOME=~/envs
# pcd
export PROJECT_DIR="$HOME/Documents/projects"

if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi
if [ -f "$HOME/.bash_completion" ]; then
    . "$HOME/.bash_completion"
fi
