syn on
"Allow switching buffers without writing to disk
set hidden
" set number
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

"Set terminal title to filename
set title
filetype on
filetype indent on
filetype plugin on
set laststatus=2
" Search options
set hlsearch
set incsearch
set ignorecase
set smartcase
colorscheme desert
"colorscheme evening 
set printoptions=paper:A4

set autoindent 
set smartindent 
set shiftwidth=4 
set expandtab
"Mac OS X clipboard sharing
set clipboard=unnamed
