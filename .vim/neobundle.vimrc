if has('vim_starting')
  set nocompatible

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" Bundles
NeoBundle 'gmarik/vundle'
NeoBundle "unite.vim"
NeoBundle "neocomplcache"
NeoBundle "scrooloose/nerdtree"
NeoBundle 'rainbow_parentheses.vim'
NeoBundle 'YankRing.vim'
NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'endwise.vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'itchyny/landscape.vim'
NeoBundle 'itchyny/lightline.vim'
  let g:lightline = {
        \ 'component': {
        \   'readonly': '%{&readonly?"⭤":""}',
        \ },
        \ 'separator': { 'left': '⮀', 'right': '⮂' },
        \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
        \ }
" Git
NeoBundle 'tpope/vim-fugitive'
" Elixir
NeoBundle 'elixir-lang/vim-elixir'
" Python
NeoBundle "nvie/vim-flake8"
" Ruby
NeoBundle 'scrooloose/syntastic'
" Go
"NeoBundle 'fatih/vim-go'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
