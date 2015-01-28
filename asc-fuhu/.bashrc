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

# myssh: ssh with username and key passed as environments
myssh()
{
    declare -a arg=($(echo "$1" | sed 's/@/ /g'))
    if [ ${#arg[@]} -eq 1 ]
    then
        hostname=${arg[0]}
        username=$MYSSH_USERNAME
    elif [ ${#arg[@]} -eq 2 ]
    then
        hostname=${arg[1]}
        username=${arg[0]}
    fi
    host="$username@$hostname"
    if declare -p MYSSH_KEY &> /dev/null
    then
        echo ssh -i "$MYSSH_KEY" $host
    else
        echo ssh $host
    fi
}


