" general

set clipboard=unnamedplus
syntax enable
set number                  " show line numbers
set wrap                    " wrap lines
set encoding=utf-8          " set encoding to UTF-8 (default was "latin1")
set mouse=a                 " enable mouse support (might not work well on Mac OS X)
set wildmenu                " visual autocomplete for command menu
set lazyredraw              " redraw screen only when we need to
set showmatch               " highlight matching parentheses / brackets [{()}]
set laststatus=2            " always show statusline (even with only single window)
set ruler                   " show line and column number of the cursor on right side of statusline
set visualbell              " blink cursor on error, instead of beeping
set title
set showcmd                 " Show incomplete cmds down the bottom
set showmode                " Show current mode down the bottom
set undolevels=1000         " Set undo amount to 1000

" swap files

set noswapfile
set nobackup
set nowb

" indention Options

set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=2
set tabstop=2
set copyindent          " use existing indents for new indents

filetype plugin on
filetype indent on


" search

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

