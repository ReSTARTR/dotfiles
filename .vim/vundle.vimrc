set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle "unite.vim"
Bundle "neocomplcache"
Bundle "scrooloose/nerdtree"
Bundle 'rainbow_parentheses.vim'
" Bundle 'tmhedberg/SimpylFold'

" Git
Bundle 'tpope/vim-fugitive'

" Python
Bundle "pythoncomplete"
Bundle "pylint.vim"
Bundle 'lambdalisue/vim-python-virtualenv'
Bundle 'pyflakes'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

