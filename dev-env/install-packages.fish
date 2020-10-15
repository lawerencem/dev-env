#!/usr/bin/env fish
brew tap \
homebrew/cask-fonts

brew install \
starship \
wemux \
neovim \
ripgrep \
TankerHQ/homebrew-repo/ruplacer \
muesli/homebrew-tap/duf \
ncdu \
fd \
sk \
tldr \
exa \
colordiff \
diff-so-fancy \
bat \
htop \
watchexec \
ccze \
svn \
git \
git-flow \
github/gh/gh \
hub \
golang \
elm \
python3 \
node \
yarn \
exercism \
autossh \
docker-completion

# rust
curl https://sh.rustup.rs -sSf | bash -s -- -y
rustup component add rls rust-analysis rust-src

# wemux
if test ! (grep host_list=\($USER\) /usr/local/etc/wemux.conf)
    sed -i ''  "s|^host_list.*|host_list=($USER)|" /usr/local/etc/wemux.conf
end

# watchman
if test ! -e /etc/sysctl.conf
    sudo touch /etc/sysctl.conf
end

if test ! (grep kern.maxfiles=10485760 /etc/sysctl.conf)
    sudo sysctl -w kern.maxfiles=10485760
    sudo fish -c 'echo kern.maxfiles=10485760 >> /etc/sysctl.conf'
end
if test ! (grep kern.maxfilesperproc=1048576 /etc/sysctl.conf)
    sudo sysctl -w kern.maxfilesperproc=1048576
    sudo fish -c 'echo kern.maxfilesperproc=1048576 >> /etc/sysctl.conf'
end

brew cask install \
google-chrome \
firefox \
brave-browser \
spectacle \
alacritty \
iterm2 \
docker \
slack \
discord \
gitter \
insomnia \
simplenote \
grammarly \
font-lato \
font-open-sans \
font-raleway \
font-source-code-pro \
font-source-code-pro-for-powerline \
spotify \
amazon-music \
sonic-pi


pip3 install --upgrade \
pip \
setuptools \
wheel

pip3 install \
virtualenv \
cookiecutter \
neovim \
pylint \
flake8

curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
mkdir -p $HOME/.config/fish/completions/
$HOME/.poetry/bin/poetry completions fish > $HOME/.config/fish/completions/poetry.fish

npm install -g \
typescript \
eslint \
eslint-config-prettier \
eslint-plugin-prettier \
stylelint \
stylelint-config-recommended \
prettier \
@vue/cli \
@vue/cli-init \
@angular/cli \
expo-cli
