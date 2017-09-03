if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/dein.vim/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.vim/bundle/dein.vim')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
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
call dein#add('fatih/vim-go',           {'on_ft': 'go'})

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
