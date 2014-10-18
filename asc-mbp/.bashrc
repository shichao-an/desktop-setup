function xee() {
    open -a "Xee" "$1"
    osascript -e 'tell application "System Events" to keystroke "0" using command down'
}

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
