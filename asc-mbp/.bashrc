xee()
{
    open -a "Xee" "$1"
    osascript -e 'tell application "System Events" to keystroke "0" using command down'
}

# pcd: cd to a project directory
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

# dbb: open Dropbox books
dbb()
{
    local book_dir="$HOME/Dropbox/Books"
    local book_path=$(grep "^\b$1\b" "$HOME/.dbb" | awk -F '\t' '{ print $2 }')
    local target="$book_dir/$book_path"
    if [ -f "$target" ]
    then
        open -a 'Google Chrome' "$target"
    else
        'Book does not exist.' >&2
        return 1
    fi
}



complete -F _pcd pcd

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
