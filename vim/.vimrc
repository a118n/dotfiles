" Use Vim settings rather than Vi
set nocompatible

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

" Set colors
" :colorscheme base16-flat

" Let Vim use 265 colors
let base16colorspace=256
