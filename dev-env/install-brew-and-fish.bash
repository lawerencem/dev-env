#!/usr/bin/env bash
set -e

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install fish
sudo bash -c 'echo /usr/local/bin/fish > /etc/shells'
chsh -s /usr/local/bin/fish

# fresco
curl https://raw.githubusercontent.com/masa0x80/fresco/master/install | fish
exec fish -l
fresco fishgretel/fasd
