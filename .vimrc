"************************************************


" | |  / (_)___ ___  __________
" | | / / / __ `__ \/ ___/ ___/
" | |/ / / / / / / / /  / /__  
" |___/_/_/ /_/ /_/_/   \___/  

" Mon 26. Sep 14:00
"************************************************

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"************************************************

Plugin 'Valloric/YouCompleteMe'
Plugin 'preservim/nerdtree'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-python/python-syntax'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'

"************************************************
call vundle#end() 

filetype plugin indent on 
syntax on

"************************************************

set t_Co=256
set tabstop=4
set history=200
set softtabstop=4
set nrformats-=octal
set backspace=indent,eol,start
set display=truncate
set fileformat=unix
set ttimeoutlen=100
set shiftwidth=4
set textwidth=79
set scrolloff=5
set smartindent
set autoindent
set incsearch
set expandtab
set wildmenu
set ttimeout
set showcmd
set nohls
set ruler

"************************************************

map Q gq
sunmap Q
map <F2> :set cc=79<cr>
map <F3> :set cc=-79<cr>
inoremap <C-U> <C-G>u<C-U>
nmap <C-g> :NERDTreeToggle<CR>
map <F6> :w <cr> :! clear; bash %<cr>
map <F5> :w <cr> :!clear; python %<cr>
map <F7> :w <cr> :!clear; gcc % && ./a.out <CR>

"************************************************

let NERDTreeWinSize = 20
let NERDTreeShowBookmarks = 1
highlight LineNr ctermfg=grey
let g:python_highlight_all = 1
let g:python_highlight_operators = 1
