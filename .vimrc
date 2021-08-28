" refs: https://github.com/vim/vim/blob/master/runtime/defaults.vim

"------------------------------
""" basic
"------------------------------
scriptencoding utf-8
let mapleader = ";"

syntax enable
set verbose=0
set encoding=utf-8
set noswapfile
set list
set number
set nopaste
set noautoindent
set tabstop=2
set shiftwidth=2
set expandtab
set showtabline=2
set laststatus=2
set hlsearch
set completeopt=menu,menuone,preview
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%

"------------------------------
""" map
"------------------------------
map <F4> :set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%<CR><Esc>
map <F5> :set listchars=""<CR><ESC>
nmap <F6> :TagbarToggle<CR>
nmap <Esc><Esc> :nohlsearch<CR><Esc>

map  <C-t><C-n> :tabnew<CR>
map  <C-t><C-w> :tabclose<CR>
map  <C-t><C-t> :tabn<CR>
map  <C-t><C-p> :tabp<CR>

au BufWritePre * :%s/\s\+$//ge
augroup cch
  au! cch
  au WinLeave * set nocursorline
  au WinEnter,BufRead * set cursorline
augroup END

"------------------------------
""" PLUGINS
"------------------------------
source ~/.vim/dein.vimrc
source ~/.vim/nerdtree.vimrc
source ~/.vim/tagbar.vimrc
source ~/.vim/go.vimrc
source ~/.vim/shfmt.vimrc

" NeoVim
if has('nvim')
  if has('mouse')
    set mouse-=a
  endif
endif
