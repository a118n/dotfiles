" Use Vim settings rather than Vi
set nocompatible

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle plugins
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-fugitive'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'jiangmiao/auto-pairs'
Plugin 'joshdick/onedark.vim'
Plugin 'joshdick/airline-onedark.vim'
Bundle 'vim-ruby/vim-ruby'

call vundle#end()

" Make backspace behave in a sane manner
set backspace=indent,eol,start

" Set default encoding to utf
set encoding=utf-8

" Set colors to 256
set t_Co=256

" Set dark background
set background=dark

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting
filetype plugin indent on

" Show line numbers
" set number
set relativenumber

" Set title and allow hidden buffers
set title
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

" Set colorscheme
colorscheme onedark
let g:airline_theme='onedark'
let g:onedark_terminal_italics=1

" hi Normal ctermbg=none  " transparent background

set laststatus=2
set wildmenu

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

" Enable mouse support
set mouse=a

" Open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Open NERDTree automatically
autocmd vimenter * NERDTree

" Jump to the main window.
autocmd VimEnter * wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close NERDTree if no windows open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Auto remove all trailing whitespace on :w
autocmd BufWritePre * :%s/\s\+$//e

" Backup and Swap
set nobackup
set nowritebackup
set noswapfile

" Undo changes even after reopening file
set undofile
set undodir=~/.vim/undodir


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

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
