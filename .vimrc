set nocp
syntax enable

set autoindent
filetype plugin indent on

set number
set relativenumber

set showcmd
set ruler

" Encoding settings
set encoding=utf-8
set fileencoding=utf-8

colorscheme desert

set expandtab " To spaces
set tabstop=2 " How tabs are rendered
set shiftwidth=2 " Column in indent operations 


if has('gui_running')
  set guifont=Monospace
  set guioptions-=m
  set guioptions-=T
endif

" Netrw file explorer
" remove ugly header
let g:netrw_banner=0
let g:netrw_liststyle=3 " Tree
let g:netrw_bufsettings='noma nomod nu nobl nowrap ro'

" Faster window navigation
" ... this really should be default
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Esc is far
inoremap jk <Esc>

" Weak human 
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>
"inoremap <Up> <NOP>
"inoremap <Down> <NOP>
"inoremap <Left> <NOP>
"inoremap <Right> <NOP>

