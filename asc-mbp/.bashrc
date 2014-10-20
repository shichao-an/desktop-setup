xee()
{
    open -a "Xee" "$1"
    osascript -e 'tell application "System Events" to keystroke "0" using command down'
}

pcd()
{
    local target
    if [ -d "$1" ]
    then
        target="$1"
    else
        target="$PROJECT_DIR/$1"
    fi
    cd "$target" 
}

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
