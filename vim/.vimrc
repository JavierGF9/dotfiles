set nocompatible

" Pathogen
let mapleader = ","

execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

" Status bar (always shown)
set laststatus=2
"set statusline=

" Configuración global de las tabulaciones
"set tabstop=8  " Cuantas columnas usan las tabulaciones al mostrar archivos
"set softtabstop=0  " Cuantas columnas usan las tabulaciones al insertarlas
"set shiftwidth=0  " Columnas indentadas con el atajo << o >>
"set noexpandtab  " TAB usa tabulaciones, no espacios

" Números de columna
set number

if &t_Co == 256
	colorscheme mojave
else
	colorscheme desert
endif

" Swapfiles
set swapfile
set directory=$HOME/.vim/swp

" Mejores búsquedas
set incsearch
set hlsearch

" Indentación 'inteligente'
"set smartindent

" Configura la columna 80 para que se muestre
" set colorcolumn=72
" highlight ColorColumn ctermbg=darkgrey

" Utilidades para ADA
"autocmd FileType ada setlocal expandtab " Usa espacios en vez de tabs.
"autocmd FileType ada setlocal tabstop=3
"autocmd FileType ada setlocal softtabstop=3
"autocmd FileType ada setlocal shiftwidth=3

"autocmd FileType ada setlocal makeprg=gnatmake\ -gnat95\ %
"autocmd FileType ada nmap <buffer> <F4> :w<CR> :make<CR>
"autocmd FileType ada nmap <buffer> <F5> :! ./%<<CR>

" Utilidades para Python
"autocmd FileType python nmap <buffer> <F5> :w<CR> :! python3 %<CR>
"autocmd FileType python nmap <buffer> <S-F5> :w<CR> :! python2 %<CR>
"autocmd FileType python setlocal expandtab
"autocmd FileType python setlocal tabstop=4
"autocmd FileType python setlocal softtabstop=0
"autocmd FileType python setlocal shiftwidth=0

" Utilidades para Assembler
"autocmd FileType asm setlocal expandtab
"autocmd FileType asm setlocal softtabstop=8
"autocmd FileType asm setlocal shiftwidth=8

" Bindings
noremap <F3> <Esc>:noh<CR>
noremap <C-s> <Esc>:update<CR>

" NERDTree
noremap <C-e> <Esc>:NERDTreeToggle<CR>

" NERDCommenter
nmap ñ <Plug>NERDCommenterInvert
vmap ñ <Plug>NERDCommenterInvert
nmap Ñ <Plug>NERDCommenterInvert
vmap Ñ <Plug>NERDCommenterInvert

" Vim-better-whitespace
nnoremap <Space> :StripWhitespace<CR>
vnoremap <Space> :StripWhitespace<CR>

" Undotree
nnoremap <F5> :UndotreeToggle<CR>

" Move lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
"inoremap <C-j> <Esc>:m .+1<CR>==gi
"inoremap <C-k> <Esc>:m .-2<CR>==gi

" Keep selection after nesting
vnoremap > ><CR>gv
vnoremap < <<CR>gv
