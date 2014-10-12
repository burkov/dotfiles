" to add vundle do:
"   git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'bling/vim-airline'
"Plugin 'tpope/vim-fireplace'
"Plugin 'guns/vim-clojure-static'
"Plugin 'Lokaltog/powerline'
Plugin 'xoria256.vim'
call vundle#end()
filetype plugin indent on

" do the rest of initialization

source ~/.vim/ru_keymap

syntax on
set background=dark
colorscheme xoria256

nnoremap <F4> :%s////c<Left><Left>
nnoremap <F12> :set hls!<CR>
nnoremap tt :tabnew<CR>

set encoding=utf-8
set nobackup
"set nowrap
set scroll=10
set scrolloff=8
set history=150
set ruler
set incsearch
set gdefault
set number
"set list
set mouse=a
set ignorecase
set smartcase

set tabstop=4       "1 tab == 4 spaces
set shiftwidth=4    "use 4 spaces for (auto)indent
set expandtab       "replace tab with spaces (no tabs in file at all!)

set autowrite
set splitbelow
set showcmd
set hls
"set wildmenu
"set wildmode=longest:list
set timeoutlen=200
set laststatus=2
"set listchars=tab:→→,trail:.
"
set cursorline
"set background=dark

let g:vim_markdown_folding_disabled=1
