"------------------------------
"""" unite.vim
"------------------------------
"" 入力モードで開始する
"" let g:unite_enable_start_insert=1
"" バッファ一覧
"nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
"" ファイル一覧
"nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"" レジスタ一覧
"nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
"" 最近使用したファイル一覧
"nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
"" 常用セット
"nnoremap <silent> ,uu :<C-u>Unite buffer file_mru<CR>
"" 全部乗せ
"nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
"
"" ウィンドウを分割して開く
"au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
"au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
"" ウィンドウを縦に分割して開く
"au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
"au FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
"" ESCキーを2回押すと終了する
"au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
"au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q
"
"if has("autocmd")
"    " ファイルタイプ別インデント、プラグインを有効にする
"    filetype plugin indent on
"    " カーソル位置を記憶する
"    autocmd BufReadPost *
"        \ if line("'\"") > 0 && line("'\"") <= line("$") |
"        \   exe "normal g`\"" |
"        \ endif
"endif
"
