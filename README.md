# Kavi's Development Environment

Feel free to fork and manipulate the repo as you see fit. If you think I'll like something feel free to submit a pull request.

## Scripts
- dev-env/install-brew-fish - Install brew and fish
- dev-env/setup-dev-env - Checkout dev-env as a [bare git repo](https://www.atlassian.com/git/tutorials/dotfiles) overlayed with your home directory
- dev-env/install-packages - Install the packages I use most frequently (designed to be fast and idempotent)
- reindex-spotlight - If spotlight isn't indexing fwr use this script
- dev-env/create-dev-env - Create a dev-env bare repo (how I originally created a bare repo)

## iTerm Theme Files
- dev-env/gruvbox-dark.itermcolors - dark theme I use with my vim gruvbox theme
- dev-env/gruvbox-light.itermcolors - If you are into light themes

## Manual Steps
- Update System
- Keyboard
    - Under *Modifier Keys...* Set Caps Lock Key to Control
    - Set *Key Repeat* to Max
    - Set *Delay Until Repeat* to Short
- Add SSH Key to github
```
curl -s https://raw.githubusercontent.com/kjivan/dev-env/master/dev-env/install-brew-and-fish | bash
curl -s https://raw.githubusercontent.com/kjivan/dev-env/master/dev-env/setup-dev-env | bash
~/dev-env/install-packages
```
- Brave
    - Install [LastPass](https://chrome.google.com/webstore/detail/lastpass-free-password-ma/hdokiejnpimakedhajhdlcegeplioahd)
    - Install [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb)
        - Copy from [google doc](https://docs.google.com/document/d/1tBjtwWiP-zOM1NK4QjnQqlKhoUCNYLijwyKi4zzTTQM/edit?usp=sharing) to vimium
    - Install [New Tab Redirect](https://chrome.google.com/webstore/detail/new-tab-redirect/icpgjfneehieebagbmdbhnlpiopdcmna)
        - Redirect to [Daily Reminders](https://kjivan.io/posts/daily-reminders.html)
    - Install [Vue Dev Tools](https://chrome.google.com/webstore/detail/vuejs-devtools/nhdogjmejiglipccpnnnanhbledajbpd?hl=en)
- Spectacle - configure shortcut keys for screen control

## Notes
In my fish config I alias **dg** to reference my dev environment bare git repo so I'm able to add configs and do typical git stuff using dg.

For example if I want to add my neovim config I would

    dg add ~/.config/nvim/init.vim

