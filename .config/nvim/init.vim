call plug#begin('~/.local/share/nvim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'rakr/vim-one'
Plug 'itchyny/lightline.vim'
Plug 'djoshea/vim-autoread'
Plug 'vim-scripts/vim-auto-save'
Plug 'mbbill/undotree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Chiel92/vim-autoformat'
Plug 'w0rp/ale'
call plug#end()

" leader
let mapleader = "\<Space>"

" ack.vim
if executable('rg')
    let g:ackprg = 'rg --vimgrep'
elseif executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
nnoremap <leader>g :Ack! <cword> <cr>
nnoremap <leader>f :Ack!

" autosave
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

" style
if (has("termguicolors"))
    set termguicolors
endif
colorscheme one
set background=dark
let g:one_allow_italics = 1
let g:lightline = { 'colorscheme': 'one' }

" make esc faster
set timeoutlen=1000 ttimeoutlen=0

" general key binds
nmap <silent> <leader>v :e $MYVIMRC<cr>
nmap <silent> <leader>vv :so $MYVIMRC<cr>
nnoremap <leader>q :q<CR>
nmap <silent> <leader>/ :nohlsearch<cr>

" git gutter
let g:gitgutter_highlight_lines = 1
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

" settings
set number
set list listchars=tab:▸-,trail:⊡
set colorcolumn=80
set showmatch
set incsearch ignorecase smartcase
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" fzf
nnoremap <leader>o :GFiles<cr>
nnoremap <leader>a :GFiles?<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>l :Lines<cr>
nnoremap <leader>t :Tags<cr>

" netrw
command! E Explore
nnoremap <leader>e :E<cr>
let g:netrw_localrmdir='rm -r'

au BufWrite * :Autoformat
