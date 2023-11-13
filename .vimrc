call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
call plug#end()

syntax on                   " syntax highlighting
set ignorecase              " case insensitive 
set mouse=                  " middle-click paste with 
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           
set shiftwidth=2            " width for autoindents
set expandtab               " converts tabs to white space
set number                  " add line numbers
set relativenumber
set noswapfile              " disable creating swap file
set linebreak
set nowrap
set nolist
set ai

set cursorline
highlight Cursorline cterm=bold

colorscheme gruvbox
set background=dark

let mapleader = " "
nmap <leader>e :NERDTreeToggle<CR>

set encoding=utf-8
set nobackup
set nowritebackup
set updatetime=300

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

