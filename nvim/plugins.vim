" Plugins
" reload vimrc and run :PlugInstall to install
"""""""""
" vim-plug
call plug#begin('~/.local/share/nvim/site/plugged')
" a colorscheme
Plug 'catppuccin/nvim',{'as':'catppuccin'}
" snippets
Plug 'SirVer/ultisnips'
" change cwd to configured directory (here, the git repo)
Plug 'airblade/vim-rooter'
" surround words with ysiw) or visualmode selection with S)
Plug 'tpope/vim-surround'
" latex compilation with <localleader>ll etc
Plug 'lervag/vimtex'
" linting and IDE-like behaviour
Plug 'dense-analysis/ale'
" status bar
Plug 'itchyny/lightline.vim'
" repeat surround commands
Plug 'tpope/vim-repeat'
" git signs
Plug 'lewis6991/gitsigns.nvim'
" File explorer
Plug 'nvim-neo-tree/neo-tree.nvim'
" Project root detection
Plug 'ahmedkhalf/project.nvim'
" required by many lua plugins
Plug 'nvim-lua/plenary.nvim'
" icons
Plug 'nvim-tree/nvim-web-devicons'
" ui
Plug 'MunifTanjim/nui.nvim'
call plug#end()


" plugin configuration
""""""""""""""""""""""

" vim-rooter
let g:rooter_patterns = ['.git']
let g:rooter_silent_chdir = 1

" NerdTree ignore
set wildignore+=*.aux,*.log,*.out,*.synctex.gz,*.toc,*.pdf,*.fls,*.fdb_latexmk,*.blg,*.bbl,*.lock,target,*.sage.py,*.sbx,*.sxd,*.sxc
let NERDTreeRespectWildIgnore=1

" vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
" let g:vimtex_quickfix_mode=0
" let g:vimtex_delim_stopline=2500
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_compiler_latexmk = {
  \ 'options' : [
  \   '-shell-escape',
  \   '-verbose',
  \   '-file-line-error',
  \   '-synctex=1',
  \   '-interaction=nonstopmode',
  \ ],
  \}

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

" statusline
let g:lightline = {
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'FugitiveHead'
  \ },
\}

lua require('gitsigns').setup()
