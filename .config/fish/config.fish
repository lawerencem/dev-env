set fish_greeting ""

alias dg="/usr/bin/git --git-dir=$HOME/.dev-env.git/ --work-tree=$HOME"

function reload
    source ~/.config/fish/config.fish
end

function grep
    command grep --color=auto $argv
end

function kavi
    ssh -Y jiv52755@kjivan
end
function abby
    ssh -Y jiv52755@absegar
end
function alex
    ssh -Y jiv52755@ger-tor59451-linux-1
end
function devon
    ssh -Y jiv52755@gar62155-ubuntu
end
function catan
    ssh -Y jiv52755@ger-catan
end
