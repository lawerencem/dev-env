call plug#begin('~/.local/share/nvim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'rakr/vim-one'
Plug 'itchyny/lightline.vim'
Plug 'djoshea/vim-autoread'
Plug 'vim-scripts/vim-auto-save'
Plug 'mbbill/undotree'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode

if (has("termguicolors"))
    set termguicolors
endif
colorscheme one
set background=dark
let g:one_allow_italics = 1
let g:lightline = { 'colorscheme': 'one' }
