" Use Vim settings rather than Vi
set nocompatible

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle plugins
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'joshdick/onedark.vim'
Plugin 'joshdick/airline-onedark.vim'
Bundle 'vim-ruby/vim-ruby'

call vundle#end()

" Make backspace behave in a sane manner
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting
filetype plugin indent on

" Show line numbers
set number
"set relativenumber

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Always wrap long lines:
set wrap

" Some indenting stuff
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

"Visually highlight 80 character column
set colorcolumn=80

" Set dark background
set background=dark

" set t_Co=256

" Set colorscheme
colorscheme onedark
let g:airline_theme='onedark'
let g:onedark_termcolors=256
" let g:onedark_terminal_italics=1

set laststatus=2
set wildmenu

" Airline settings
let g:airline_powerline_fonts = 1

" Press F9 to run current file
nnoremap <F9> :!%:p<Enter><Enter>

" Highlight current line
set cursorline

" Highlight matching [{()}]
set showmatch

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Set leader key as Space
let mapleader = "\<Space>"
