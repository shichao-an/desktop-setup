# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/.local/bin:$HOME/bin

# Fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
PATH="$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Set default editor
export EDITOR=/usr/bin/vim
export VISUAL=$EDITOR

# Export PATH at last
export PATH
export foo=bar
