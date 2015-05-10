" Tagbar settings
"
" ref: https://github.com/majutsushi/tagbar/blob/master/plugin/tagbar.vim

let g:tagbar_autoshowtag    = 1
let g:tagbar_autopreview    = 0 " pでタグバー内にフォーカスしたまま移動。Pでプレビューウインドウに表示。
let g:tagbar_hide_nonpublic = 0 " vでprivateをトグル
let g:tagbar_left           = 0 " 0:right 1:left
let g:tagbar_width          = 60 " default=40

" g:tagbar_type_<typename>に特殊な定義を記述
" ref: https://github.com/majutsushi/tagbar/wiki
"
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }

let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'Elixir',
    \ 'kinds' : [
        \ 'm:modules',
        \ 'f:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'p:protocols',
        \ 'r:records',
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 'a' : 'macros',
        \ 'm' : 'modules',
        \ 'i' : 'implementations',
        \ 'p' : 'protocols'
    \ },
    \ 'scope2kind' : {
        \ 'macros'          : 'a',
        \ 'modules'         : 'm',
        \ 'implementations' : 'i',
        \ 'protocols'       : 'p'
    \ },
    \ 'ctagsbin'  : '/usr/local/bin/ctags',
\ }
"
