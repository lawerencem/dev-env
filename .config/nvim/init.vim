call plug#begin('~/.local/share/nvim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'rakr/vim-one'
Plug 'itchyny/lightline.vim'
Plug 'djoshea/vim-autoread'
Plug 'vim-scripts/vim-auto-save'
Plug 'mbbill/undotree'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

if (has("termguicolors"))
    set termguicolors
endif
colorscheme one
set background=dark
let g:one_allow_italics = 1
let g:lightline = { 'colorscheme': 'one' }
