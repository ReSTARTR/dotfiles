set rtp+=$GOROOT/misc/vim
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
exe "set rtp+=".globpath($GOPATH, "src/github.com/golang/lint/misc/vim")

let g:go_term_enabled = 1
let g:go_term_mode = "split"
" let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
" let g:syntastic_go_checkers = ['go', 'golint', 'goimports']
" let g:syntastic_mode_map = {}
let g:go_list_type = "quickfix"
let g:gofmt_command = 'goimports'

au FileType go nmap <C-g>b  :GoBuild<CR>
au FileType go nmap <C-g>r  :GoRun<CR>
au FileType go nmap <C-g>rt <Plug>(go-run-tab)
" :GoRun<CR>
au FileType go nmap <C-g>t  :GoTest<CR>
au FileType go nmap <C-g>cv :GoCoverage<CR>
au FileType go nmap <C-g>d  :GoDef<CR>
au FileType go nmap <C-g>dp :GoDefPop<CR>
au FileType go nmap <C-g>ds :GoDefStack<CR>
au FileType go nmap <C-g>i  :GoImports<CR>
