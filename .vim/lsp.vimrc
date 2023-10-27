" refs: https://github.com/prabirshrestha/asyncomplete.vim
let g:asyncomplete_auto_popup = 0
let g:asyncomplete_auto_completeopt = 0
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_float_cursor = 1
let g:lsp_settings_servers_dir = "~/.local/share/vim-lsp-settings/servers"

" Vim
let g:lsp_settings_filetype_vim = ['vim-language-server']

" Bash
let g:lsp_settings_filetype_bash = ['bash-language-server']

" Go
let g:lsp_settings_filetype_go = ['gopls', 'golangci-lint-langserver']

" TypeScript/JavaScript
let g:lsp_settings_filetype_typescript = ['typescript-language-server', 'eslint-language-server']

" GraphQL
let g:lsp_settings_filetype_graphql = ['gql-language-server']

" Mappings
"autocmd FileType go setlocal omnifunc=lsp#complete
"autocmd FileType go nmap <buffer> gd <plug>(lsp-definition)
"autocmd FileType go nmap <buffer> ,n <plug>(lsp-next-error)
"autocmd FileType go nmap <buffer> ,p <plug>(lsp-previous-error)
autocmd FileType go nmap <C-g>df :LspDefinition<CR>
autocmd BufWritePre *.go LspDocumentFormatSync
