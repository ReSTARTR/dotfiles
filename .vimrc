syntax enable

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set number
set paste
set noautoindent
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch

nmap <Esc><Esc> :nohlsearch<CR><Esc>

" カレントウィンドウにのみ罫線を引く
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorcolumn nocursorline
  autocmd WinEnter,BufRead * set cursorcolumn cursorline
  "autocmd WinLeave * set nocursorline
  "autocmd WinEnter,BufRead * set cursorline
augroup END

highlight CursorLine ctermbg=black guibg=black
highlight CursorColumn ctermbg=black guibg=black

augroup filetypedetect
    " Detect .txt as 'text'
    autocmd! BufNewFile,BufRead *.txt setfiletype text
augroup END

""" Tab Settings
" set showtabline=2
map  <C-t><C-n> :tabnew<CR>
map  <C-t><C-w> :tabclose<CR>
map  <C-t><C-t> :tabn<CR>
map  <C-t><C-p> :tabp<CR>

""" NERDTree
map <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeQuitOnOpen = 1

""" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcahce_start_length = 2

""" unite.vim
" 入力モードで開始する
" let g:unite_enable_start_insert=1
" バッファ一覧
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
" ファイル一覧
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" レジスタ一覧
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
" 最近使用したファイル一覧
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
" 常用セット
nnoremap <silent> ,uu :<C-u>Unite buffer file_mru<CR>
" 全部乗せ
nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>

" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q

if has("autocmd")
    " ファイルタイプ別インデント、プラグインを有効にする
    filetype plugin indent on
    " カーソル位置を記憶する
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
endif
