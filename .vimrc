"------------------------------
""" basic
"------------------------------
let mapleader = ";"

set list
set number
set nopaste
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
map <F4> :set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%<CR><Esc>
map <F5> :set listchars=""<CR><ESC>
nmap <F6> :TagbarToggle<CR>
au! BufNewFile,BufRead * execute ":TagbarOpen"

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

highlight CursorLine ctermbg=black guibg=black
highlight CursorColumn ctermbg=black guibg=black
augroup cch
  au! cch
  au WinLeave * set nocursorcolumn nocursorline
  au WinEnter,BufRead * set cursorcolumn cursorline
  "au WinLeave * set nocursorline
  "au WinEnter,BufRead * set cursorline
augroup END

"------------------------------
""" statusline
"------------------------------
set ruler
set laststatus=2
" statusline color normal/insert mode
if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
  au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif

"------------------------------
""" Language
"------------------------------
syntax enable
augroup filetypedetect
    au! BufNewFile,BufRead *.txt setfiletype text
    au! BufNewFile,BufRead *.go  setfiletype go
augroup END

"------------------------------
""" Completion
"------------------------------
set completeopt=menu,menuone,preview

"------------------------------
""" PLUGINS
"------------------------------
source ~/dotfiles/.vim/vundle.vimrc
" source ~/dotfiles/.vim/neocomplcache.vimrc
source ~/dotfiles/.vim/nerdtree.vimrc
" source ~/dotfiles/.vim/nerdcommenter.vimrc
" source ~/dotfiles/.vim/unite.vimrc
" source ~/dotfiles/.vim/python-virtualenv.vimrc
source ~/dotfiles/.vim/yankring.vimrc
source ~/dotfiles/.vim/tagbar.vimrc

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

exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")

if expand("%") =~ ".*\.go"
  set noexpandtab
  set tabstop=4
  set shiftwidth=4
endif

