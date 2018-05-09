#!/usr/bin/env fish
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap burntsushi/ripgrep https://github.com/BurntSushi/ripgrep.git

brew install \
wemux \
neovim \
ripgrep-bin \
fzf \
fasd \
fd \
watchman \
ccze \
git \
python3 \
node \
autossh \
heroku \
clang-format

# fish fasd plugin
if type -q fresco
else
    curl https://raw.githubusercontent.com/masa0x80/fresco/master/install | fish
    exec fish -l
end

fresco fishgretel/fasd

# plug for neovim
if test ! -e ~/.local/share/nvim/site/autoload/plug.vim
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
end

# wemux
if test ! (grep $USER /usr/local/etc/wemux.conf)
    sed -i '' "s/brew/$USER/" /usr/local/etc/wemux.conf
end

# fzf
if test ! (grep fzf_key_bindings $HOME/.config/fish/functions/fish_user_key_bindings.fish)
    yes | sh (brew --prefix)/opt/fzf/install
end

# watchman
if test ! (grep kern.maxfiles=10485760 /etc/sysctl.conf)
    sudo sysctl -w kern.maxfiles=10485760
    sudo fish -c 'echo kern.maxfiles=10485760 >> /etc/sysctl.conf'
end
if test ! (grep kern.maxfilesperproc=1048576 /etc/sysctl.conf)
    sudo sysctl -w kern.maxfilesperproc=1048576
    sudo fish -c 'echo kern.maxfilesperproc=1048576 >> /etc/sysctl.conf'
end

brew cask install \
iterm2 \
font-robotomono-nerd-font \
font-robotomono-nerd-font-mono \
font-sourcecodepro-nerd-font \
font-sourcecodepro-nerd-font-mono \
spectacle \
slack \
vnc-viewer \
amazon-drive \
flux \
licecap \
dash \
visual-studio-code

python3 -m pip3 install --upgrade pip setuptools wheel

pip3 install \
pipenv \
cookiecutter \
neovim \
pylint \
flake8 \
yapf

npm install -g \
create-react-app \
js-beautify \
remark
