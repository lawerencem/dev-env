#!/usr/bin/env bash
set -e

if ! brew list -1 | grep -q git; then
    brew install git
fi

dg="/usr/bin/git --git-dir=$HOME/.dev-env.git/ --work-tree=$HOME"

FILE=$HOME/.gitignore
if [ ! -f "$FILE" ]; then
    touch $FILE
fi

if ! grep -q ".dev-env.git" $HOME/.gitignore; then
    echo ".dev-env.git" >> $HOME/.gitignore
fi

[[ -d $HOME/.dev-env.git ]] || git clone --bare git@github.com:kjivan/dev-env.git $HOME/.dev-env.git
$dg checkout
$dg config --local status.showUntrackedFiles no
