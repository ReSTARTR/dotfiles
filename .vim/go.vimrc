" refs: https://github.com/prabirshrestha/asyncomplete.vim
let g:asyncomplete_auto_popup = 0
let g:asyncomplete_auto_completeopt = 0

" refs: https://github.com/golang/tools/blob/master/gopls/doc/vim.md#vim-lsp
if executable('gopls')
  autocmd User lsp_setup call lsp#register_server({
    \ 'name': 'go-lang',
    \ 'cmd': {server_info->['gopls']},
    \ 'whitelist': ['go'],
    \ })

  " Mappings
  "autocmd FileType go setlocal omnifunc=lsp#complete
  "autocmd FileType go nmap <buffer> gd <plug>(lsp-definition)
  "autocmd FileType go nmap <buffer> ,n <plug>(lsp-next-error)
  "autocmd FileType go nmap <buffer> ,p <plug>(lsp-previous-error)
  autocmd FileType go nmap <C-g>df :LspDefinition<CR>
  "autocmd BufWritePre *.go LspDocumentFormatSync
endif

let g:lsp_settings_filetype_go = ['gopls', 'golangci-lint-langserver']

augroup vim_lsp_golangci_lint_langserver
  au!
  autocmd User lsp_setup call lsp#register_server({
      \ 'name': 'golangci-lint-langserver',
      \ 'cmd': {server_info->['golangci-lint-langserver']},
      \ 'initialization_options': {'command': ['golangci-lint', 'run', '--out-format', 'json']},
      \ 'whitelist': ['go'],
      \ })
augroup END
