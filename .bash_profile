if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f ~/.setup_proxy ]; then
   source ~/.setup_proxy
fi

export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/.poetry/bin:$PATH"
