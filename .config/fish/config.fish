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

alias reload="source $HOME/.config/fish/config.fish"
alias edit="vi $HOME/.config/fish/config.fish"

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

alias grep='command grep --color=auto'

if type -q bat
    alias cat='bat'
    alias b='bat'
end

if type -q ccze
    function c
        command cat $argv | ccze -A
    end
    function t
        command tail $argv | ccze -A
    end
    function tf
        command tail -f $argv | ccze -A
    end
end

alias g='git'
alias gs='git status --short --branch'
alias gco='git checkout'
alias gcop='git checkout --patch'
alias gr='git reset'
alias ga='git add'
alias gap='git add --patch'
alias gai='git add --interactive '
alias grb='git rebase'
alias grbi='git rebase --interactive'
alias gc='git commit'
alias gb='git branch'
alias gpl='git pull'
alias gup='git stash; git pull; git stash pop'
alias gps='git push'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log --abbrev-commit --pretty=oneline'
alias gg='git log --graph --decorate --oneline --simplify-by-decoration'
alias gfg='git log --all --graph --decorate --oneline --simplify-by-decoration'

[ -f /home/linuxbrew/.linuxbrew/share/autojump/autojump.fish ]; and source /home/linuxbrew/.linuxbrew/share/autojump/autojump.fish
