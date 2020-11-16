if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f ~/.setup_proxy.bash ]; then
   source ~/.setup_proxy.bash
fi

export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/.poetry/bin:$PATH"
