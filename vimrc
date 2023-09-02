let mapleader = ","
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mileszs/ack.vim'

call plug#end()



let g:vimtex_view_method = 'zathura'

let g:coc_global_extensions = ['coc-clangd', 'coc-cmake', "coc-json", "coc-jedi", "coc-tsserver", "coc-go", "coc-angular"]

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
set scrolloff=4
set incsearch
set number
set ruler
set shiftwidth=4
set showmatch
set smartcase
set tabstop=4
set wildmenu
set wrap
set hidden
set updatetime=300
set mouse=a
set timeoutlen=1000 ttimeoutlen=0



map <ScrollWheelUp> 6k
map <ScrollWheelDown> 6j

nnoremap Y Y
" -- coc
let g:coc_user_config = {'inlayHint.enable': 0}


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <Leader>rn <Plug>(coc-rename)

" Formatting selected code
nmap <Leader>f  <Plug>(coc-format-selected)
xmap <Leader>f  <Plug>(coc-format-selected)
nmap <Leader>F  <Plug>(coc-format)


" -- END coc
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

