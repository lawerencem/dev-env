if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-sensible'

Plug 'sheerun/vim-polyglot'
Plug 'Quramy/vim-js-pretty-template'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'ap/vim-css-color'

Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'

Plug 'djoshea/vim-autoread'
Plug 'vim-scripts/vim-auto-save'
Plug 'mbbill/undotree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
Plug 'lotabout/skim.vim'
Plug 'wincent/ferret'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'idanarye/vim-vebugger'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'luochen1990/rainbow'

Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-vetur', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-rls', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
Plug 'iamcco/coc-angular', {'do': 'yarn install --frozen-lockfile'}
Plug 'iamcco/coc-spell-checker', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}

Plug 'honza/vim-snippets'
Plug 'mlaursen/vim-react-snippets'
call plug#end()

" leader
let mapleader = "\<Space>"

" autosave
let g:auto_save_in_insert_mode = 0
let g:auto_save = 1
nnoremap <leader>se :let g:auto_save = 1<cr>
nnoremap <leader>sd :let g:auto_save = 0<cr>
nnoremap <leader>ss :w<cr>

" style
if (has("termguicolors"))
    set termguicolors
endif
colorscheme gruvbox
set background=dark
let g:one_allow_italics = 1
let g:lightline = { 'colorscheme': 'gruvbox' }

" make esc faster
set timeoutlen=1000 ttimeoutlen=0

" general key binds
nmap <silent> <leader>v :e $MYVIMRC<cr>
nmap <silent> <leader>vv :so $MYVIMRC<cr>
nnoremap <leader>q :q<CR>
nmap <silent> <leader>/ :nohlsearch<cr>

" git gutter
let g:gitgutter_highlight_lines = 0
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

" settings
set relativenumber
set number
set list listchars=tab:▸-,trail:⊡
set showmatch
set incsearch ignorecase smartcase
set noswapfile
set nowrap
set shiftwidth=2 softtabstop=2 tabstop=2 expandtab
set spelllang=en_us
set iskeyword+=-

filetype plugin on
autocmd FileType cpp setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
autocmd FileType vue,elm,javascript,typescript,css,scss,html setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab

" fzf
nnoremap <leader>p :Files<cr>
nnoremap <leader>o :GFiles<cr>
nnoremap <leader>c :GFiles?<cr>
nnoremap <leader>b :Buffers<cr>

" elm
let g:elm_setup_keybindings = 0

" netrw
command! E Explore
nnoremap <leader>e :E<cr>
nnoremap <leader>r :Rexplore<cr>
let g:netrw_localrmdir='rm -r'
let g:netrw_banner="0"
let g:netrw_sort_sequence=""

" undotree saves to undo dir and add shortcut
let vimDir = '$HOME/.config/nvim'
let &runtimepath.=','.vimDir
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif
nnoremap <leader>u :UndotreeToggle<cr>:UndotreeFocus <cr><Paste>

" polygot
let g:polyglot_disabled = []

" ale
"let g:ale_completion_enabled = 1
"nnoremap <leader>d :ALEGoToDefinition<cr>
"nnoremap <leader>r :ALEFindReferences<cr>
"nnoremap <leader>h :ALEHover<cr>
nnoremap <leader>af :ALEFix<cr>

let g:ale_linters = {
\   'rust': ['rls'],
\   'java': ['javalsp'],
\}


let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'html': ['prettier'],
\   'json': ['prettier'],
\   'vue': ['prettier'],
\   'rust' : ['rustfmt'],
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['eslint', 'prettier'],
\   'typescriptreact': ['prettier'],
\   'markdown': ['prettier'],
\   'python': ['black'],
\   'java': ['google_java_format']
\}

" emmet
let g:user_emmet_leader_key=','

" rainbow parentheses
let g:rainbow_active = 1

" use system clipboard
set clipboard^=unnamed,unnamedplus

" coc settings
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion
if has('patch8.1.1068')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>x  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
"nmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
nnoremap <leader>f :Format<cr>
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>ka  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>ke  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>kd  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>km  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>ks  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>kj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>kk  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>kr :<C-u>CocListResume<CR>

let t:is_transparent = 1
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
        let t:is_tranparent = 0
    endif
endfunction
hi Normal guibg=NONE ctermbg=NONE
nnoremap <C-t> : call Toggle_transparent()<CR>
