set nocompatible

for vimfile in split(glob('~/.config/nvim/configs/*.vim'), '\n')
  exec "source" vimfile
endfor

filetype plugin indent on
syntax on

set nobackup
set nowritebackup
set background=dark
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
set nofoldenable
set cindent
set cinkeys-=0#
set indentkeys-=0#

let g:jsx_ext_required = 0
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_contrast_light = 'hard'

highlight Comment cterm=italic
highlight htmlArg cterm=italic
highlight xmlAttrib cterm=italic

colorscheme gruvbox
