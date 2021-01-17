" ---------------------------------------------------------------------------------------------------------------------
" general
" ---------------------------------------------------------------------------------------------------------------------

set nu
set relativenumber
set hidden
set noerrorbells
set nocompatible
syntax enable
set number
set encoding=utf-8
set mouse=a
set wildmenu
set lazyredraw
set showmatch
set laststatus=2
set ruler
set visualbell
set title
set showcmd
set showmode
set undolevels=1000
set scrolloff=8
set colorcolumn=80
set signcolumn=yes

" ---------------------------------------------------------------------------------------------------------------------
" Whitespace and indention
" ---------------------------------------------------------------------------------------------------------------------

set autoindent
set smartindent
set smarttab
set copyindent
set nowrap
set textwidth=80
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

filetype plugin on
filetype indent on

" swap files

set noswapfile
set nobackup
set nowritebackup

" ---------------------------------------------------------------------------------------------------------------------
" searching
" ---------------------------------------------------------------------------------------------------------------------

set incsearch
set hlsearch
set ignorecase
set smartcase

set clipboard=unnamedplus
" ---------------------------------------------------------------------------------------------------------------------
" plugins
" ---------------------------------------------------------------------------------------------------------------------

" https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')



" Initialize plugin system
call plug#end()
