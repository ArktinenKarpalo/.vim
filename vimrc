call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Coc extensions
Plug 'clangd/coc-clangd', {'do': 'yarn install --frozen-lockfile'}
call plug#end()

"packadd! dracula
syntax enable
colorscheme dracula
set nocompatible
highlight Normal ctermbg=None
filetype plugin indent on

set autoindent
set backupdir=$HOME/.vim/backups
set cursorline
set directory=$HOME/.vim/tmp
set encoding=utf-8
set history=2000
set hlsearch
set ignorecase
set incsearch
set number
set ruler
set shiftwidth=4
set showmatch
set smartcase
set tabstop=4
set ttimeoutlen=0
set wildmenu
set wrap
set hidden
set updatetime=300

" airline theme & fonts
let g:airline_theme='distinguished'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" Show list of open buffers in airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 1

" Open nerdtree with ctrl+n
nmap <C-n> :NERDTreeToggle<CR>
nmap bp :bp<CR>
nmap bn :bn<CR>
nmap bc :bp\|bd#<CR>
