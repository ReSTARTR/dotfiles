" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set Dein base path (required)
let s:dein_base = '~/.vim/bundle'

" Set Dein source path (required)
let s:dein_src = '~/.vim/bundle/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
call dein#add('vim-scripts/ctrlp.vim')
call dein#add("scrooloose/nerdtree")
call dein#add('majutsushi/tagbar')
call dein#add('vim-scripts/ctags.vim')
call dein#add('itchyny/lightline.vim')
let g:lightline = {
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }
call dein#add('tpope/vim-fugitive')
call dein#add('prabirshrestha/async.vim')
call dein#add('prabirshrestha/asyncomplete.vim')
call dein#add('prabirshrestha/asyncomplete-lsp.vim')
call dein#add('prabirshrestha/vim-lsp')
call dein#add('mattn/vim-lsp-settings')
call dein#add('mattn/vim-lsp-icons')
call dein#add('Shougo/deoplete.nvim')
call dein#add('lighttiger2505/deoplete-vim-lsp')
call dein#add('cespare/vim-toml')
call dein#add('mattn/vim-goimports')
call dein#add('z0mbix/vim-shfmt', {'on_ft': 'sh'})

" Finish Dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Uncomment if you want to install not-installed plugins on startup.
"if dein#check_install()
" call dein#install()
"endif
