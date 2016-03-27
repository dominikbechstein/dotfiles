syntax on                     " syntax highlighting
color molokai
filetype plugin indent on     " filetype specific indentation

set encoding=utf-8
set t_Co=256                  " 256 colors
set ai                        " auto indenting
set vb                        " use visual bell instead of a beep
set nu
set expandtab                 " spaces instead of tabs
set tabstop=4                 " tabs are two spaces wide
set shiftwidth=4              " indent by two spaces
set ruler                     " show cursor position info
set hlsearch                  " highlight search terms
set modifiable                " set modifiable so NERDTree can modify files
set softtabstop=4             " how far to backspace over tabs
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

if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'tpope/vim-unimpaired.git'
NeoBundle 'mhinz/vim-signify'

" syntax highlight
NeoBundle 'tomasr/molokai'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'ujihisa/unite-colorscheme'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
" End NeoBundle Scripts-------------------------

set background=dark
let g:solarized_termcolors = 256
colorscheme solarized

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

au BufWinLeave * mkview
au BufWinEnter * silent loadview

nnoremap <leader>n <Esc>:NERDTreeToggle<CR>
nnoremap <leader>fa <Esc>:call Beautifier()<CR>

