
copy_to_repo () {
    for $app in $*; do
        if [[ -e $XDG_CONFIG_HOME/$app ]]; then
            cp -r $XDG_CONFIG_HOME/$app;
        else
            echo "Could not find" $app "in" $XDG_CONFIG_HOME;
        fi
    done
}

