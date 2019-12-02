#!/usr/bin/env bash
set -e

brew install git
dg="/usr/bin/git --git-dir=$HOME/.dev-env.git/ --work-tree=$HOME"
echo ".dev-env.git" >> .gitignore
[[ -d $HOME/.dev-env.git ]] || git clone --bare git@github.com:kjivan/dev-env.git $HOME/.dev-env.git
$dg checkout
$dg config --local status.showUntrackedFiles no
