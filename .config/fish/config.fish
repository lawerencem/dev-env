#!/usr/bin/env fish

if test -d /home/linuxbrew/.linuxbrew/bin
    set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH
end
if test -d /home/linuxbrew/.linuxbrew/sbin
    set -gx PATH /home/linuxbrew/.linuxbrew/sbin $PATH
end
if test -d /usr/local/go/bin
    set -gx PATH $PATH /usr/local/go/bin
    set -gx GOPATH $HOME/go
end
if test -d $HOME/.cargo/bin
    set -gx PATH $PATH $HOME/.cargo/bin
end

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

alias c='cd (fd -t d | fzf)'
alias ch='cd (fd --search-path $HOME -t d | fzf)'
alias v='vi (fd | fzf)'
alias vh='vi (fd --search-path $HOME | fzf)'

if type -q nvim
    alias vim=nvim
    alias vi=nvim
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

[ -f /home/linuxbrew/.linuxbrew/share/autojump/autojump.fish ]; and source /home/linuxbrew/.linuxbrew/share/autojump/autojump.fish
