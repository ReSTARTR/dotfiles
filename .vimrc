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
map <F6> :TlistToggle<CR>

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

" taglist
let Tlist_Show_One_File=1
let Tlist_Sort_Type='order'
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Use_Left_Window=1
let Tlist_WinWidth=50
"let Tlist_Use_Horiz_Window=1
"let Tlist_WinHeight=10

" Flake8
let g:flake8_ignore="E501,E128,E124,E221"
