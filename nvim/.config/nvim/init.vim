let mapleader = ","

"""""""""""""""""""""""""""""""""""""""""""""""""
"                                               "
"                    PLUGINS                    "
"                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter' " Show changed lines in number columns
Plug 'mbbill/undotree' " Show undo tree
Plug 'ntpeters/vim-better-whitespace' " Delete useless spaces
Plug 'scrooloose/nerdcommenter' " Fast commenting
Plug 'scrooloose/nerdtree' " File system tree
Plug 'tpope/vim-fugitive' " GIT commands
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-unimpaired'
Plug 'uptech/vim-slack-format'
Plug 'jeetsukumaran/vim-buffergator' " Better buffer list
Plug 'liuchengxu/vista.vim' " Tags viewer in a window
Plug 'dense-analysis/ale' " Linter
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Completion module
Plug 'junegunn/vim-peekaboo' " Show registers while pasting or yanking
Plug 'vim-scripts/TaskList.vim' " Show a list for TODO or FIXME

" Themes and appearance
Plug 'morhetz/gruvbox' " Dark theme
Plug 'nightsense/rusticated' " Light theme
Plug 'itchyny/lightline.vim' " Better status line
Plug 'shinchu/lightline-gruvbox.vim'

" Faster searchs and more
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" For writing (2)
Plug 'reedes/vim-pencil' " Super-powered writing things
Plug 'junegunn/limelight.vim' " Highlights only active paragraph
Plug 'junegunn/goyo.vim' " Full screen writing mode
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
set termguicolors
set writebackup
set linebreak
set showbreak=↪
set cursorline

" Use system's clipboard (like Ctrl-C, Ctrl-V)
set clipboard=unnamedplus

" Números de columna
set number

" Enable mouse
set mouse=a

" Theme (gruvbox)
set background=dark
colorscheme gruvbox
let g:lightline = { 'colorscheme': 'gruvbox' }

" Theme (rusticated)
"colorscheme rusticated
"let g:lightline = { 'colorscheme': 'rusticated' }

" Gruvbox workarounds (because vim-unimpaired)
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

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

" LaTeX
let g:tex_flavor = "latex"
autocmd FileType tex setlocal expandtab tabstop=2 shiftwidth=0 textwidth=72

" Ruby indentation
autocmd FileType ruby setlocal expandtab tabstop=2 softtabstop=0 shiftwidth=0

" Lua indentation
autocmd FileType lua setlocal expandtab shiftwidth=0 tabstop=2

" C indentation
autocmd FileType c setlocal noexpandtab shiftwidth=0 tabstop=4

" YAML indentation
autocmd FileType yaml setlocal expandtab tabstop=2 softtabstop=0 shiftwidth=0

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

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Vista
let g:vista_default_executive = "coc"
let g:vista#renderer#enable_icon = 0

" Tasklist
let g:tlTokenList = ["FIXME", "TODO", "XXX", "WORKAROUND", "DEBUG"]

" FZF
let g:fzf_tags_command = 'ripper-tags -R'

" ALE
let g:ale_disable_lsp = 1


"""""""""""""""""""""""""""""""""""""""""""""""""
"                                               "
"                  MAPPINGS                     "
"                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""

" Shortcut to config file
nmap <leader>C :tabedit $HOME/.config/nvim/init.vim<CR>
nmap <leader>R :source $HOME/.config/nvim/init.vim<CR>

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

" Tabs navigation
nnoremap <F8> :tabNext<CR>
nnoremap <S-F8> :tabprevious<CR>
nnoremap <C-F8> :tabnew<CR>
"nnoremap <C-S-F8> :tabclose<CR>

" Vista
nnoremap <F8> :Vista<CR>

" NeoVim terminal
tnoremap <Esc> <C-\><C-n>

" Tasklist
map <leader>v <Plug>TaskList

" FZF
nmap <C-P> :Files<CR>
nmap <leader>c :BCommits<CR>
nmap <leader>g :Tags<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""
"                                               "
"                  REFERENCES                   "
"                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""
"
" (1) https://robots.thoughtbot.com/faster-grepping-in-vim
" (2) http://www.naperwrimo.org/wiki/index.php?title=Vim_for_Writers

" vim: et ts=2 sw=2
