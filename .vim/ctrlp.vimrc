let g:ctrlp_map = '<C-p>'
map  <C-p> :CtrlP<CR>
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = {
      \ 'dir': '\v[\/](\.git|node_modules|vendor)$',
      \ }
