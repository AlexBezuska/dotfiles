scriptencoding utf-8

" ================ General Config ====================
set number                      " turn on line numbers
syntax on                       " turn on syntax highlighting
set showcmd						" Show incomplete cmds down the bottom
set showmode					" Show current mode down the bottom
set autoread					" Reload files changed outside vim

set term=ansi
set hlsearch

" ================ Indentation ======================

set noexpandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set cindent

" visible whitespace
set list listchars=tab:»·,trail:·

filetype plugin on
filetype indent on

" ================ Scrolling ========================

set scrolloff=999
set sidescrolloff=15
set sidescroll=1