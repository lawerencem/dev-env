if [[ $- == *i* ]]; then
    if [ -e "$HOME/go/bin/elvish" ]; then
        $HOME/go/bin/elvish
    fi
    if [ -e "/home/linuxbrew/.linuxbrew/bin/elvish" ]; then
        /home/linuxbrew/.linuxbrew/bin/elvish
    fi
fi
