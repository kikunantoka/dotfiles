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
	call neobundle#begin(expand('~/.vim/bundle/'))
	NeoBundleFetch 'Shougo/neobundle.vim'
	call neobundle#end()
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
call neobundle#end()

filetype plugin indent on     " required!
filetype indent on

" -- Search
" -
set ignorecase
set smartcase
set wrapscan

" -- Unite
" -
let g:unite_enable_start_insert = 1
let g:unite_enable_split_vertically = 0
let g:unite_winwidth = 40
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file file/new
nnoremap <silent> ,um :<C-u>Unite  file_mru
nnoremap <silent> ,urc :<C-u>Unite file_rec/async:app/controllers/
nnoremap <silent> ,urfc :<C-u>Unite file file/new -input=app/controllers/
nnoremap <silent> ,urm :<C-u>Unite file_rec/async:app/models/
nnoremap <silent> ,urfm :<C-u>Unite file file/new -input=app/models/
nnoremap <silent> ,urv :<C-u>Unite file_rec/async:app/views/
nnoremap <silent> ,urfv :<C-u>Unite file file/new -input=app/views/
nnoremap <silent> ,urs :<C-u>Unite file_rec/async:app/assets/stylesheets/
nnoremap <silent> ,urfs :<C-u>Unite file file/new -input=app/assets/stylesheets/
nnoremap <silent> ,urj :<C-u>Unite file_rec/async:app/assets/javascripts/
nnoremap <silent> ,urfj :<C-u>Unite file file/new -input=app/assets/javascripts/
nnoremap <silent> ,uro :<C-u>Unite file_rec/async:config/
nnoremap <silent> ,urfo :<C-u>Unite file file/new -input=config/
nnoremap <silent> ,url :<C-u>Unite file_rec/async:lib/
nnoremap <silent> ,urfl :<C-u>Unite file file/new -input=lib/
nnoremap <silent> ,urr :<C-u>Unite file_rec/async:spec/
nnoremap <silent> ,urfr :<C-u>Unite file file/new -input=spec/
