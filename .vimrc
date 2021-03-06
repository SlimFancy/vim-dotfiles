set encoding=utf8
set nocompatible   " be iMproved
filetype off

" Define the Leader
let mapleader = ","

" Quick edit and source(run) .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Navigation between windows
nnoremap <c-h> <c-w><c-h>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>

" colorscheme desert

" 1 tab to 2 space
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" for python indention
autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" number line show 
set number

"in order to switch between buffers with unsaved change
"set hidden

" hightlight line, add a bottom line where cursor exists
set cursorline

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" All plugins should contains from vundle#begin to vundle#end
call vundle#begin()

" let Vundle manage Vundle, required! 
Plugin 'gmarik/Vundle.vim'

" basic dependence
Plugin 'L9'

" fugitive.vim may be the best Git wrapper of all time
" https://github.com/tpope/vim-fugitive
Plugin 'tpope/vim-fugitive'

" Auto closing braces 
" **NOTE**: This plugin should be added before endwise
Plugin 'Raimondi/delimitMate'
let delimitMate_expand_space=1
let delimitMate_expand_cr=2

" ruby wisely add end
Plugin 'tpope/vim-endwise'

" quickly comment your code, try ,cc on selected line
Plugin 'vim-scripts/The-NERD-Commenter'

" File tree like something called IDE
Plugin 'scrooloose/nerdtree'
" Shortcut to open NERDTree
nnoremap <c-n> :NERDTreeToggle<cr>
" open a nerdtree automatically when vim starts up if no files were specified
autocmd stdinreadpre * let s:std_in=1
autocmd vimenter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" quickly search file(s), use ctrl+p, F5 refresh
Plugin 'kien/ctrlp.vim'
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"" ctrl+o for LRU buffer
"map <c-o> :CtrlPBuffer<CR>

" For edit HTML
" Tutorial: https://github.com/mattn/emmet-vim/blob/master/TUTORIAL
Plugin 'mattn/emmet-vim'
let g:user_emmet_leader_key='<c-m>'
let g:user_emmet_install_global = 0
autocmd FileType html,css,php,eruby EmmetInstall

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on     " required! 
syntax on
