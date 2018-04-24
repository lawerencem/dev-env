#!/usr/bin/env bash
set -e

alias dg="/usr/bin/git --git-dir=$HOME/.dev-env.git/ --work-tree=$HOME"
echo ".dev-env.git" >> .gitignore
git clone --bare https://www.github.com/kjivan/dev-env.git $HOME/.dev-env.git
dg checkout
dg config --local status.showUntrackedFiles no
