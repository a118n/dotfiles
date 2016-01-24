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

" Access colors present in 256 colorspace
let base16colorspace=256 

" Set colorscheme
colorscheme base16-flat

set laststatus=2
set wildmenu

" set t_Co=256

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
