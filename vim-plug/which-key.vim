let g:mapleader = "\<Space>"
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
let g:which_key_map =  {}
let g:which_key_map.a = {
            \ 'name':"Test",
            \ '<Tab>':"Hello world"
            \}

let g:which_key_map.1 = "One"
