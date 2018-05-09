set -xg fish_greeting ""
set -xg VISUAL nvim
set -xg EDITOR $VISUAL

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


alias l='ls -lah'

alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias md='mkdir -p'
alias rd=rmdir

alias mv='mv -i'
alias cp='cp -i'

# neovim
if type -q nvim
    alias vim=nvim
    alias vi=nvim
end

# fasd
if type -q fasd
    alias v='fasd -t -e vim -b viminfo'
end

alias g='git'

set -gx PATH $PATH /usr/local/go/bin $HOME/go/bin
