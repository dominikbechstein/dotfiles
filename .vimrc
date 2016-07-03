syntax on                       " syntax highlighting
colorscheme monokai
set nocompatible                " be iMproved, required
filetype off                    " required

set encoding=utf-8
set t_Co=256                    " 256 colors
set ai                          " auto indenting
set vb                          " use visual bell instead of a beep
set nu
set expandtab                   " spaces instead of tabs
set tabstop=4                   " tabs are two spaces wide
set shiftwidth=4                " indent by two spaces
set ruler                       " show cursor position info
set hlsearch                    " highlight search terms
set modifiable                  " set modifiable so NERDTree can modify files
set softtabstop=4               " how far to backspace over tabs
set backspace=indent,eol,start

set ttimeoutlen=50
set so=10
set ruler
set lazyredraw
set hidden
set magic

set noerrorbells
set novisualbell
set t_vb=

set showmatch

if version < 702
    finish
endif

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif
if !1 | finish | endif


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'

    " Add or remove your Bundles here:
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'scrooloose/nerdtree'
    Plugin 'mhinz/vim-signify'

call vundle#end()            " required
filetype plugin indent on    " required

let mapleader = ","

set laststatus=2
let g:airline#extensions#branch#enabled     = 1
let g:airline#extensions#syntastic#enabled  = 1
let g:airline#extensions#tabline#enabled    = 1
let g:airline#extensions#branch#enabled     = 1
let g:airline_theme                         = 'powerlineish'

" mhinz/vim-signify
nnoremap <leader>gt SignifyToggle
nnoremap <leader>gh SignifyToggleHighlight
nnoremap <leader>gr SignifyRefresh
nnoremap <leader>gd SignifyDebug

au BufWinLeave ?* mkview 1
au BufWinEnter ?* silent loadview 1

nnoremap <leader>n <Esc>:NERDTreeToggle<CR>

