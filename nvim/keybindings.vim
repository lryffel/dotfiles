" Keybindings
"""""""""""""

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

" quitting
nnoremap <leader>qq :q<CR>
nnoremap <leader>qw :wq<CR>
nnoremap <leader>qf :q!<CR>
nnoremap <leader>qQ :q!<CR>
nnoremap <leader>qa :qa<CR>
nnoremap <leader>qA :qa!<CR>

" searching
nnoremap <leader>h :noh<CR>

" autocomplete
"inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-x><C-o>

" indenting
xnoremap < <gv
xnoremap > >gv
