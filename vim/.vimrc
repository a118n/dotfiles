call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'haishanh/night-owl.vim'
call plug#end()

" Use Vim settings rather than Vi
set nocompatible

filetype off

" Make backspace behave in a sane manner
set backspace=indent,eol,start

" Set default encoding to utf
set encoding=utf-8

" Set colors to 256
set t_Co=256
if (has("termguicolors"))
 set termguicolors
endif

" Set colorscheme
set background=dark
colorscheme night-owl

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting
filetype plugin indent on

" Show line numbers
set number
"set relativenumber

" Set title and allow hidden buffers
set title
set hidden

" Always wrap long lines:
set wrap

" Some indenting stuff
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab

" Visually highlight 80 character column
" set colorcolumn=80

set laststatus=2
set wildmenu

" Highlight current line
" set cursorline

" Highlight matching [{()}]
set showmatch

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Set leader key as Space
let mapleader = "\<Space>"

" Auto remove all trailing whitespace on :w
autocmd BufWritePre * :%s/\s\+$//e

" Backup and Swap
set nobackup
set nowritebackup
set noswapfile

" Improves redrawing
set ttyfast

" No delay when switching between modes
set timeoutlen=0

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Airline settings
let g:airline#extensions#tabline#enabled = 1 "Show all buffers if one window
let g:airline_powerline_fonts = 1
