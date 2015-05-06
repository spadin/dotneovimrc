set nocompatible

for vimfile in split(glob('~/.vimrc.d/*.vim'), '\n')
  exec "source" vimfile
endfor

filetype plugin indent on
syntax on
colorscheme Tomorrow-Night

set backspace=2
set expandtab
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set modeline
set mouse=a
set nonumber
set noshowmode
set noswapfile
set nowrap
set shiftwidth=2
set smartcase
set smartindent
set splitbelow
set splitright
set tabstop=2
set ttyfast
set ttymouse=xterm2
