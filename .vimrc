runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  call pathogen#runtime_prepend_subdirectories(expand('~/.vimbundles'))
endif

syntax on
filetype plugin indent on

set visualbell
set wildmenu
set history=1000
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2
set showmatch
set incsearch
set hls
set switchbuf=useopen

let mapleader=","

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
