" Plugins
" reload vimrc and run :PlugInstall to install
"""""""""
" vim-plug
call plug#begin('~/.local/share/nvim/site/plugged')
" a colorscheme
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim',{'as':'dracula'}
" tree view
Plug 'preservim/nerdtree'
" show git status in nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'
" snippets
Plug 'SirVer/ultisnips'
" comment with gcc
Plug 'tpope/vim-commentary'
" change cwd to configured directory (here, the git repo)
Plug 'airblade/vim-rooter'
" show lines that change since last commit
Plug 'mhinz/vim-signify'
" surround words with ysiw) or visualmode selection with S)
Plug 'tpope/vim-surround'
" latex compilation with <localleader>ll etc
Plug 'lervag/vimtex'
" git support with :G
Plug 'tpope/vim-fugitive'
" linting and IDE-like behaviour
Plug 'dense-analysis/ale'
" status bar
Plug 'itchyny/lightline.vim'
" repeat surround commands
Plug 'tpope/vim-repeat'
" Rust support
Plug 'rust-lang/rust.vim'
" fish support
Plug 'dag/vim-fish'
" Julia
Plug 'JuliaEditorSupport/julia-vim'
" csv
Plug 'chrisbra/csv.vim'
" treesitter for syntax highlighting
call plug#end()


" plugin configuration
""""""""""""""""""""""

" vim-rooter
let g:rooter_patterns = ['.git']
let g:rooter_silent_chdir = 1

" NerdTree ignore
set wildignore+=*.aux,*.log,*.out,*.synctex.gz,*.toc,*.pdf,*.fls,*.fdb_latexmk,*.blg,*.bbl,*.lock,target,*.sage.py
let NERDTreeRespectWildIgnore=1

" vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
" let g:vimtex_quickfix_mode=0
" let g:vimtex_delim_stopline=2500
let g:vimtex_compiler_progname = 'nvr'

" ultisnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories = ['~/.config/nvim/UltiSnips']

" nerdtree
" hide Press ? for help and u for up a dir
let g:NERDTreeMinimalUI=1

" ale
let g:ale_linters = {
  \    'tex': ['chktex', 'lacheck'],
  \    'bib': ['bibclean'],
  \    'rust': ['analyzer']
\}
let g:ale_completion_enabled = 1

" statusline
let g:lightline = {
  \ 'colorscheme': 'dracula',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'FugitiveHead'
  \ },
\}

