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
set exrc
set termguicolors

let mapleader="\\"
let g:jsx_ext_required = 0
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_contrast_light = 'hard'

highlight Comment cterm=italic
highlight htmlArg cterm=italic
highlight xmlAttrib cterm=italic

colorscheme gruvbox

hi Normal guibg=NONE ctermbg=NONE

nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR>

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" NERDCommenter config
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

function! RunMochaSpec()
    call SendToTmux("gulp test:mocha --file=" . @% . "\n")
endfunction

function! RunJestSpec()
    call SendToTmux("gulp test:jest --file=" . @% . "\n")
endfunction

function! RunSpec()
    let filename = expand('%')

    if filename =~# 'Spec.js[x]\=$'
      call RunMochaSpec()
    elseif filename =~# 'jest.js[x]\=$'
      call RunJestSpec()
    else
      echo "Not a test file: " . filename
    endif

endfunction

nnoremap <Leader>t :call RunSpec()<CR>

" markdown
let g:markdown_fenced_languages = ['javascript', 'sh']
