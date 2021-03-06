" install junegunn/vim-plug if it is not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
" reload vimrc and run :PlugInstall to install
"""""""""
" vim-plug
call plug#begin('~/.vim/plugged')
" a colorscheme
Plug 'morhetz/gruvbox'
" tree view
Plug 'preservim/nerdtree'
" show git status in nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'
" snippets
Plug 'SirVer/ultisnips'
" comment with gcc
Plug 'tpope/vim-commentary'
" change cwd to configured directory
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
" GitHub integration
Plug 'tpope/vim-rhubarb'
" Rust support
Plug 'rust-lang/rust.vim'
" fish support
Plug 'dag/vim-fish'
" highlight rgb colors
Plug 'ap/vim-css-color'
call plug#end()

" General settings
"""""""""""""""""""
set nocompatible " don't force VI rules
set scrolloff=5 " How many lines at the boundary
set relativenumber " relative line numbers
set number " absolute line number in current line
set breakindent " stay indented after line break
set expandtab " spaces rather than tabs
set shiftwidth=2 " tabs are replaced by 2 spaces
set tabstop=2 " tab characters encode 2 spaces
set ruler " always display cursor position
let &showbreak='---->' " line break symbols
set timeoutlen=1000 ttimeoutlen=0 " no delay for visual mode
set hlsearch " highlight searched terms
set incsearch " highlight as you type
set laststatus=2 " make lightline appear
set showcmd " show what command you're typing
set smartindent
set cursorline
set clipboard=unnamed " sync with system clipboard

filetype plugin indent on " make vim recognize filetypes
syntax on " syntax highlighting


" Cosmetics
""""""""""""
colorscheme gruvbox 
set background=dark


" Keybindings
"""""""""""""
" leaders
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

" files
nnoremap <leader>fs :write<CR>
inoremap <C-l> <esc>:write<CR>a

" opening things
nnoremap <leader>op :NERDTreeToggle<CR>
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

" git
nnoremap <leader>ga :G add .<CR>
nnoremap <leader>gc :G commit<CR>
nnoremap <leader>gp :G push<CR>
nnoremap <leader>gf :G pull<CR>

" searching
nnoremap <leader>s /
" (turn off highlighting till next search)
nnoremap <leader>h :noh<CR>

" clipboard
xnoremap <leader>cy "+y
xnoremap <C-c> "+y
nnoremap <leader>cp "+p
inoremap <C-v> <C-r>+

" autocomplete
""""""""""""""""""""""""""""
"inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-x><C-o>

" vim-rooter
let g:rooter_patterns = ['.git']
let g:rooter_silent_chdir = 1

" NerdTree ignore
set wildignore+=*.aux,*.log,*.out,*.synctex.gz,*.toc,*.pdf,*.fls,*.fdb_latexmk,*.blg,*.bbl,*.lock,target
let NERDTreeRespectWildIgnore=1

" vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_delim_stopline=2500

" ultisnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" nerdtree
" hide Press ? for help and u for up a dir
let g:NERDTreeMinimalUI=1

" ale
let g:ale_linters = {
  \    'tex': ['chktex', 'lacheck'],
  \    'bib': ['bibclean'],
  \    'rust': ['analyzer'],
  \    'py': ['pylint']
\}
let g:ale_completion_enabled = 1

" statusline
let g:lightline = {
  \ 'colorscheme': 'gruvbox',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'FugitiveHead'
  \ },
\}
