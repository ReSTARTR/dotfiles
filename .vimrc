"------------------------------
""" basic
"------------------------------
scriptencoding utf-8
let mapleader = ";"
set verbose=0
set encoding=utf-8

set list
set number
set nopaste
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%
"set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
"map <F4> :set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%<CR><Esc>
map <F4> :set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%<CR><Esc>
map <F5> :set listchars=""<CR><ESC>
nmap <F6> :TagbarToggle<CR>

" remove spaces at line end
au BufWritePre * :%s/\s\+$//ge

"------------------------------
""" indent
"------------------------------
set noautoindent
set tabstop=2
set shiftwidth=2
set expandtab
set showtabline=2

"------------------------------
""" tab
"------------------------------
map  <C-t><C-n> :tabnew<CR>
map  <C-t><C-w> :tabclose<CR>
map  <C-t><C-t> :tabn<CR>
map  <C-t><C-p> :tabp<CR>

"------------------------------
""" highlight
"------------------------------
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"highlight CursorLine ctermbg=1 guibg=red
"highlight CursorColumn ctermbg=16 guibg=black
"highlight LineNr ctermfg=16
augroup cch
  au! cch
  "au WinLeave * set nocursorcolumn nocursorline
  "au WinEnter,BufRead * set cursorcolumn cursorline
  au WinLeave * set nocursorline
  au WinEnter,BufRead * set cursorline
augroup END

"------------------------------
""" statusline
"------------------------------
set ruler
set laststatus=2

"------------------------------
""" Language
"------------------------------
syntax enable
au BufNewFile,BufRead *.txt setfiletype text
au BufNewFile,BufRead *.md,*.markdown setfiletype markdown
au BufNewFile,BufRead *.ex,*exs  setfiletype elixir
au BufNewFile,BufRead *.go set noexpandtab tabstop=8 filetype=go
au BufNewFile,BufRead Gemfile,Capfile setfiletype ruby

"------------------------------
""" Completion
"------------------------------
set completeopt=menu,menuone,preview

"------------------------------
""" PLUGINS
"------------------------------

" source $DOTFILES/.vim/vundle.vimrc
source $DOTFILES/.vim/neobundle.vimrc

" source $DOTFILES/.vim/neocomplcache.vimrc
source $DOTFILES/.vim/nerdtree.vimrc
" source $DOTFILES/.vim/nerdcommenter.vimrc
" source $DOTFILES/.vim/unite.vimrc
" source $DOTFILES/.vim/python-virtualenv.vimrc
source $DOTFILES/.vim/yankring.vimrc
source $DOTFILES/.vim/tagbar.vimrc

if !exists('loaded_matchit')
  runtime macros/matchit.vim
end

" NORMAL MODE
nnoremap - :Switch<CR>

" Flake8
let g:flake8_ignore="E501,E128,E124,E221"

" Go
if $GOROOT != ''
  set rtp+=$GOROOT/misc/vim
endif
if $GOPATH != ''
  exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
  exe "set rtp+=".globpath($GOPATH, "src/github.com/golang/lint/misc/vim")
  let g:syntastic_go_checkers = ['go', 'golint']
endif

colorscheme landscape
set t_Co=256


" CtrlP
let g:ctrlp_map = '<C-p>'
map  <C-p> :CtrlP<CR>
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_max_height = 20
