set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim

"Key bindings
source $HOME/.config/nvim/bindings.vim

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'


Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-solargraph']
call plug#end()

"Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='transparent'
"let g:airline_theme='base16_gruvbox_dark_hard'

"NerdTree config
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" " Toggle

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType ocaml setlocal shiftwidth=2 tabstop=2 expandtab
colorscheme gruvbox
set termguicolors
syntax on
filetype on
filetype indent on
filetype plugin on
set t_Co=256
set nocompatible
set background=dark
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set hidden
set mouse=a
set nowrap
set noshowmode
set nobackup
set nowritebackup
set formatoptions-=cro
set clipboard=unnamedplus
set ignorecase
set smartcase

"Relative in normal and absolute in insert
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup end
