"------------------------------
""" basic
"------------------------------
let mapleader = ";"

set list
set number
set nopaste
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
" remove spaces at line end
autocmd BufWritePre * :%s/\s\+$//ge

"------------------------------
""" indent
"------------------------------
set noautoindent
set tabstop=4
set shiftwidth=4
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
  autocmd! cch
  autocmd WinLeave * set nocursorcolumn nocursorline
  autocmd WinEnter,BufRead * set cursorcolumn cursorline
  "autocmd WinLeave * set nocursorline
  "autocmd WinEnter,BufRead * set cursorline
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
    " Detect .txt as 'text'
    autocmd! BufNewFile,BufRead *.py  setfiletype python
    autocmd! BufNewFile,BufRead *.txt setfiletype text
augroup END
autocmd FileType python compiler pylint

"------------------------------
""" PLUGINS
"------------------------------
source ~/dotfiles/.vim/vundle.vimrc
source ~/dotfiles/.vim/neocomplcache.vimrc
source ~/dotfiles/.vim/nerdtree.vimrc
" source ~/dotfiles/.vim/nerdcommenter.vimrc
" source ~/dotfiles/.vim/unite.vimrc
" source ~/dotfiles/.vim/python-virtualenv.vimrc
source ~/dotfiles/.vim/yankring.vimrc

