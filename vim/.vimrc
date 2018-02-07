set nocompatible
let mapleader = ","

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'JavierGF9/spotivim'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-syntastic/syntastic'
Plug 'tbastos/vim-lua'
Plug 'vim-latex/vim-latex'
call plug#end()

syntax on
filetype on
filetype indent on
filetype plugin on

set novisualbell
set showbreak=↪
set linebreak
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
  set guifont=Hack
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
set ignorecase
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
nnoremap Ñ :NERDTreeToggle<CR>

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
vnoremap <C-h> <Esc>:SpPrevious<CR>gv
vnoremap <C-l> <Esc>:SpNext<CR>gv

" Ruby indentation
autocmd FileType ruby setlocal expandtab shiftwidth=0 tabstop=2

" Lua indentation
autocmd FileType lua setlocal expandtab shiftwidth=0 tabstop=2

" C indentation
autocmd FileType c setlocal noexpandtab shiftwidth=0 tabstop=4

" TagList
nnoremap <leader><Tab> :TlistToggle<CR>

" Tabs navigation
nnoremap <F8> :tabNext<CR>
nnoremap <S-F8> :tabprevious<CR>
nnoremap <C-F8> :tabnew<CR>
"nnoremap <C-S-F8> :tabclose<CR>

" Buffers navigation
nnoremap <F7> :bNext<CR>
nnoremap <S-F7> :bprevious<CR>
"nnoremap <C-F7> :sbNext<CR>
"nnoremap <C-S-F7> :sbprevious<CR>

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

autocmd FileType tex setlocal shiftwidth=2
autocmd FileType tex setlocal iskeyword+=:
