so ~/.vim/ru_keyboard_mappings

filetype indent on
syntax on

cnoremap <C-p> <up>
cnoremap <C-n> <down>

nnoremap <F4> :%s////c<Left><Left>
nnoremap <F12> :set hls!<CR>
nnoremap tt :tabnew<CR>

set encoding=utf-8
set nocompatible
set nobackup
set nowrap
set scroll=10
set scrolloff=8
set history=150
set ruler
set incsearch
set gdefault
set number
set list
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
set wildmenu
set wildmode=longest:list
set timeoutlen=200

set listchars=tab:→→,trail:.

set t_Co=256
set cursorline
hi CursorLine ctermbg=240 cterm=none
set background=dark
colorscheme xoria256

if has ("gui_running")
    set guifont=Terminus\ 12
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=l
    set guioptions+=c
    set guiheadroom=0
endif

