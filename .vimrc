" be iMproved, required
set nocompatible
" required for Vundle
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme desert

" 0 to first non-blank character of line
map 0 ^
let mapleader=","

" change windows
nnoremap <Leader>w <C-w>w
" space moves half page
noremap <Space> <c-d>
" empty line normal mode
map <Enter> o<ESC>
" quick normal mode
imap ii <Esc>      

" open NERDTree
map <Leader>e :NERDTreeToggle<cr>

" enable syntax processing
syntax on

set autoindent

" number of visual spaces per TAB
set tabstop=4

" number of spaces in tab when editing
set softtabstop=4

" tabs are spaces
set expandtab

" enable mouse
set mouse=a

" show line numbers
set number 
set ruler

" highlight current line
set cursorline

" highlight matching [{()}]
set showmatch

set ignorecase
set hlsearch
set wrap
set spelllang=en

"close vim if only NERDTree open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
