" Plugins
" reload vimrc and run :PlugInstall to install
"""""""""
" vim-plug
call plug#begin('~/.local/share/nvim/site/plugged')
" change cwd to configured directory (here, the git repo)
Plug 'airblade/vim-rooter'
" surround words with ysiw) or visualmode selection with S)
Plug 'tpope/vim-surround'
" linting and IDE-like behaviour
Plug 'dense-analysis/ale'
" repeat surround commands
Plug 'tpope/vim-repeat'
" fish support
Plug 'dag/vim-fish'
" rust doc comments syntax highlighting
Plug 'rust-lang/rust.vim'
" exact number of search results
Plug 'google/vim-searchindex'
call plug#end()


" plugin configuration
""""""""""""""""""""""

" vim-rooter
let g:rooter_patterns = ['.git']
let g:rooter_silent_chdir = 1

" NerdTree ignore
set wildignore+=*.aux,*.log,*.out,*.synctex.gz,*.toc,*.pdf,*.fls,*.fdb_latexmk,*.blg,*.bbl,*.lock,target,*.sage.py,*.sbx,*.sxd,*.sxc
let NERDTreeRespectWildIgnore=1

" nerdtree
" hide Press ? for help and u for up a dir
let g:NERDTreeMinimalUI=1

" ale
let g:ale_linters = {
  \    'tex': ['chktex', 'lacheck'],
  \    'bib': ['bibclean'],
  \    'rust': ['analyzer', 'cargo']
\}
set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_fix_on_save = 1
let g:ale_rust_cargo_use_clippy = 1
let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'rust': ['rustfmt'],
\}
let g:ale_echo_msg_format = '%s (%linter%)'
let g:ale_linters = {
      \ 'cpp': ['clangcheck', 'clangd', 'clangtidy', 'clazy', 'cppcheck', 'cpplint', 'cquery', 'cspell', 'flawfinder'],
\}
