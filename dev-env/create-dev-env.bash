#!/usr/bin/env bash
set -e

git init --bare $HOME/.dev-env.git
alias dg="/usr/bin/git --git-dir=$HOME/.dev-env.git/ --work-tree=$HOME"
dg config --local status.showUntrackedFiles no
