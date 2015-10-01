" Use Vim settings rather than Vi
set nocompatible

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle plugins
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'

call vundle#end() 

" Make backspace behave in a sane manner
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting
filetype plugin indent on

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Always wrap long lines:
set wrap

" Set dark background
set background=dark

" Access colors present in 256 colorspace
let base16colorspace=256 

" Set colorscheme
colorscheme base16-flat

set laststatus=2
set wildmenu

" set t_Co=256

" Airline settings
let g:airline_powerline_fonts = 1
