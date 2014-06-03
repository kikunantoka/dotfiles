" -- Config
" -
syntax on
set tabstop=2
set smartindent
set number
set nocompatible
filetype off

" -- NeoBundle
" -
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim'

filetype plugin indent on     " required!
filetype indent on

" -- Search
" -
set ignorecase
set smartcase
set wrapscan