if [[ $- == *i* ]]; then
    if [[ -x "/home/linuxbrew/.linuxbrew/bin/fish" ]]; then
        exec /home/linuxbrew/.linuxbrew/bin/fish
    fi
    if [[ -x "$HOME/go/bin/elvish" ]]; then
        exec $HOME/go/bin/elvish
    fi
    if [[ -x "/home/linuxbrew/.linuxbrew/bin/elvish" ]]; then
        exec /home/linuxbrew/.linuxbrew/bin/elvish
    fi
fi
