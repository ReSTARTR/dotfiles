if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/bundles')
  call dein#begin('~/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')

  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('vim-scripts/ctrlp.vim')
  call dein#add('vim-scripts/ag.vim')
  call dein#add('junegunn/vim-easy-align')
  call dein#add("scrooloose/nerdtree")
  call dein#add('vim-scripts/rainbow_parentheses.vim')
  call dein#add('AndrewRadev/switch.vim')
  call dein#add('vim-scripts/endwise.vim')
  call dein#add('mileszs/ack.vim')
  call dein#add('majutsushi/tagbar')
  call dein#add('vim-scripts/ctags.vim')
  call dein#add('itchyny/landscape.vim')
  call dein#add('itchyny/lightline.vim')
  let g:lightline = {
        \ 'component': {
        \   'readonly': '%{&readonly?"⭤":""}',
        \ },
        \ 'separator': { 'left': '⮀', 'right': '⮂' },
        \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
        \ }
  call dein#add('tpope/vim-fugitive')
  call dein#add('elixir-lang/vim-elixir', {'on_ft': 'elixir'})
  call dein#add("nvie/vim-flake8",        {'on_ft': 'python'})
  call dein#add('scrooloose/syntastic',   {'on_ft': 'ruby'})

  call dein#add('prabirshrestha/async.vim')
  call dein#add('prabirshrestha/asyncomplete.vim')
  call dein#add('prabirshrestha/asyncomplete-lsp.vim')
  call dein#add('prabirshrestha/vim-lsp')
  call dein#add('mattn/vim-lsp-settings')
  call dein#add('mattn/vim-lsp-icons')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('lighttiger2505/deoplete-vim-lsp')

  call dein#add('mattn/vim-goimports')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
