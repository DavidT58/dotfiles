set number
"set autoindent
set cino=
set cinwords=if,else,switch,case,for,while,do
set cindent
set mouse=a
syntax on
set wrap
set nocompatible
filetype off
set laststatus=2
set noshowmode

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'
	Plugin 'itchyny/lightline.vim'
	Plugin 'tpope/vim-surround'
	Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on

let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ 'active' : { 'left' : [[ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ]], },
	\ }

