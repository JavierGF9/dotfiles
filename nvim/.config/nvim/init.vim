set nocompatible
let mapleader = ","


"""""""""""""""""""""""""""""""""""""""""""""""""
"                                               "
"                    PLUGINS                    "
"                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'mbbill/undotree'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-syntastic/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-unimpaired'
Plug 'uptech/vim-slack-format'
Plug 'marcopaganini/mojave-vim-theme'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'majutsushi/tagbar'
Plug 'morhetz/gruvbox'
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""
"                                               "
"                    PLUGINS                    "
"""""""""""""""""""""""""""""""""""""""""""""""""

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

" Theme
if has("gui_running")
  colorscheme autumn
  set guifont=Hack
else
  if &t_Co == 256
    set background=dark
    set cursorline
    colorscheme gruvbox
  else
    colorscheme desert
  endif
endif

" Swapfiles
set swapfile
set directory=~/.local/share/nvim/swap

" Better searchs
set ignorecase
set incsearch
set hlsearch

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

" Ruby indentation
autocmd FileType ruby setlocal expandtab shiftwidth=0 tabstop=2

" Lua indentation
autocmd FileType lua setlocal expandtab shiftwidth=0 tabstop=2

" C indentation
autocmd FileType c setlocal noexpandtab shiftwidth=0 tabstop=4

let g:ctrlp_extensions = ["tag", "buffertag"]
let g:ctrlp_working_path_mode = 'ra'

" The Silver Searcher (1)
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Syntastic options
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_ruby_checkers = ['rubocop', 'mri'] " Ruby best checker
let g:syntastic_ruby_rubocop_args = "-l"

" Using ripper-tags with tagbar
if executable('ripper-tags')
  let g:tagbar_type_ruby = {
      \ 'kinds'      : ['m:modules',
		      \ 'c:classes',
		      \ 'C:constants',
		      \ 'F:singleton methods',
		      \ 'f:methods',
		      \ 'a:aliases'],
      \ 'kind2scope' : { 'c' : 'class',
		       \ 'm' : 'class' },
      \ 'scope2kind' : { 'class' : 'c' },
      \ 'ctagsbin'   : 'ripper-tags',
      \ 'ctagsargs'  : ['-f', '-']
      \ }
endif

" vim-easytags
"let g:easytags_async = 1
"set tags="./tags"
"let g:easytags_dynamic_files = 1

"if executable('ripper-tags')
	"let g:easytags_languages = {
	"\   'ruby': {
	"\     'cmd': 'ripper-tags',
	"\	    'args': [],
	"\	    'fileoutput_opt': '-f',
	"\	    'stdout_opt': '-f-',
	"\	    'recurse_flag': '-R'
	"\   }
	"\}
"endif

" SuperTab
let g:SuperTabCrMapping = 1
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCompleteCase = 'match'

"""""""""""""""""""""""""""""""""""""""""""""""""
"                                               "
"                  MAPPINGS                     "
"                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""

" Deselect current search
nnoremap <F3> :noh<CR>
inoremap <F3> <Esc>:noh<CR>li
vnoremap <F3> <Esc>:noh<CR>gv

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
nmap <C-k> [e
nmap <C-j> ]e
nmap <C-Up> [e
nmap <C-Down> ]e

vmap <C-k> [egv
vmap <C-j> ]egv
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Keep selection after nesting
vnoremap > >gv
vnoremap < <gv

" TagList
nnoremap <leader><Tab> :TlistToggle<CR>

" Tabs navigation
nnoremap <F8> :tabNext<CR>
nnoremap <S-F8> :tabprevious<CR>
nnoremap <C-F8> :tabnew<CR>
"nnoremap <C-S-F8> :tabclose<CR>

" Tagbar
nnoremap <F8> :TagbarToggle<CR>

" NeoVim terminal
tnoremap <Esc> <C-\><C-n>


"""""""""""""""""""""""""""""""""""""""""""""""""
"                                               "
"                  REFERENCES                   "
"                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""
"
" (1) https://robots.thoughtbot.com/faster-grepping-in-vim
