set -xg fish_greeting ""
set -xg VISUAL nvim
set -xg EDITOR $VISUAL
set -xg GIT_EDITOR $VISUAL

alias dg="/usr/bin/git --git-dir=$HOME/.dev-env.git/ --work-tree=$HOME"

function reload
    source ~/.config/fish/config.fish
end

function grep
    command grep --color=auto $argv
end

if type -q exa
    alias l='exa'
    alias ls='exa'
    alias ll='exa -l'
else
    alias l='ls --color'
    alias ls='ls --color'
    alias ll='ls --color -l'
end

alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias md='mkdir -p'
alias rd=rmdir

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

if test -d /usr/local/go/bin
    set -gx PATH $PATH /usr/local/go/bin
    set -gx GOPATH $HOME/go
end
if test -d $HOME/.cargo/bin
    set -gx PATH $PATH $HOME/.cargo/bin
end

[ -f /home/linuxbrew/.linuxbrew/share/autojump/autojump.fish ]; and source /home/linuxbrew/.linuxbrew/share/autojump/autojump.fish
