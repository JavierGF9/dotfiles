set nocompatible

" Pathogen
let mapleader = ","

execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

set novisualbell
set showbreak=↪
set writebackup

" Status bar (always shown)
set laststatus=2
set statusline=>\ Buf:#%-2n\ %f\ %r%m%h[0x%B]%=%l/%L[%3p%%],\ %v\ %#warningmsg#%{SyntasticStatuslineFlag()}%*<

" Use system's clipboard (like Ctrl-C, Ctrl-V)
set clipboard=unnamedplus

" Números de columna
set number

" Enable mouse
set mouse=a

if &term =~ '^screen' || &term =~ '^xterm'
  set ttymouse=xterm2
endif

" Theme
if has("gui_running")
  colorscheme autumn
else
  if &t_Co == 256
    colorscheme mojave
  else
    colorscheme desert
  endif
endif

" Swapfiles
set swapfile
set directory=$HOME/.vim/swp

" Better searchs
set incsearch
set hlsearch
nnoremap <F3> :noh<CR>
inoremap <F3> <Esc>:noh<CR>li

" set colorcolumn=72
" highlight ColorColumn ctermbg=darkgrey

" ADA utilities
"autocmd FileType ada setlocal expandtab " Usa espacios en vez de tabs.
"autocmd FileType ada setlocal tabstop=3
"autocmd FileType ada setlocal softtabstop=3
"autocmd FileType ada setlocal shiftwidth=3

"autocmd FileType ada setlocal makeprg=gnatmake\ -gnat95\ %
"autocmd FileType ada nmap <buffer> <F4> :w<CR> :make<CR>
"autocmd FileType ada nmap <buffer> <F5> :! ./%<<CR>

" Python utilities
"autocmd FileType python nmap <buffer> <F5> :w<CR> :! python3 %<CR>
"autocmd FileType python nmap <buffer> <S-F5> :w<CR> :! python2 %<CR>
"autocmd FileType python setlocal expandtab
"autocmd FileType python setlocal tabstop=4
"autocmd FileType python setlocal softtabstop=0
"autocmd FileType python setlocal shiftwidth=0

" ASM utilities
"autocmd FileType asm setlocal expandtab
"autocmd FileType asm setlocal softtabstop=8
"autocmd FileType asm setlocal shiftwidth=8

" Saves with Ctrl-S
" needs 'stty -ixon' in .bashrc or .zshrc, if not this hangs the terminal
nnoremap <C-S> :%update<CR>
inoremap <C-S> <Esc>:%update<CR>li

" NERDTree
noremap <C-e> <Esc>:NERDTreeToggle<CR>
nnoremap <Ñ> :NERDTreeToggle<CR>

" NERDCommenter
nmap ñ <Plug>NERDCommenterInvert
vmap ñ <Plug>NERDCommenterInvert

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
vnoremap > >gv
vnoremap < <gv

" Spotivim
nnoremap <C-h> :SpPrevious<CR>
nnoremap <C-l> :SpNext<CR>
inoremap <C-h> <Esc>:SpPrevious<CR>gi
inoremap <C-l> <Esc>:SpNext<CR>gi
