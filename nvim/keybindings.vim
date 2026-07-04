" Keybindings
"""""""""""""
" leaders
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

" files
nnoremap <leader>fs :write<CR>

" opening things
nnoremap <leader>op :Neotree toggle<CR>
nnoremap <leader>ot :silent !alacritty &<CR>

" windows
nnoremap <leader>ww <C-w><C-w>
nnoremap <leader>wh <C-w>h
nnoremap <leader>wl <C-w>l
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k

" searching
nnoremap <leader>h :noh<CR>

" indenting
xnoremap < <gv
xnoremap > >gv
