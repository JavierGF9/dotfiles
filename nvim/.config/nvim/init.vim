" vim: et ts=2 sw=2

let mapleader = ","

call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'         " Show changed lines in number columns
Plug 'mbbill/undotree'                " Show undo tree
Plug 'ntpeters/vim-better-whitespace' " Delete useless spaces
Plug 'scrooloose/nerdcommenter'       " Fast commenting
Plug 'scrooloose/nerdtree'            " File system tree
Plug 'tpope/vim-fugitive'             " GIT commands
Plug 'tpope/vim-unimpaired'           " Pairs of handy bracket mappings
Plug 'jeetsukumaran/vim-buffergator'  " Better buffer list
Plug 'junegunn/vim-peekaboo'          " Show registers while pasting or yanking
Plug 'vim-scripts/TaskList.vim'       " Show a list for TODO, FIXME...
Plug 'godlygeek/tabular'              " Tabularize well
Plug 'chrisbra/NrrwRgn'               " Narrow region
Plug 'Yggdroot/indentLine'            " Show indentation lines
Plug 'itchyny/lightline.vim'          " Better status line

" Syntax files
Plug 'chrisbra/csv.vim'
Plug 'elixir-editors/vim-elixir'

" Themes and appearance
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'nightsense/rusticated'
Plug 'shinchu/lightline-gruvbox.vim'

" Faster searchs and more
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" For writing (2)
Plug 'reedes/vim-pencil'      " Super-powered writing things
Plug 'junegunn/limelight.vim' " Highlights only active paragraph
Plug 'junegunn/goyo.vim'      " Full screen writing mode

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-vsnip'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
call plug#end()

syntax on
filetype on
filetype indent on
filetype plugin on

set novisualbell
set termguicolors
set writebackup

" Line wraps
set wrap
set linebreak
set breakindent
let &showbreak = '↪ '

set cursorline

" Use system's clipboard (like Ctrl-C, Ctrl-V)
set clipboard=unnamedplus

" Column numbers
set number

" Enable mouse
set mouse=a

"" Dracula theme
colorscheme dracula
let g:lightline = { 'colorscheme': 'dracula' }

"" Gruvbox theme
"set background=dark
"colorscheme gruvbox
"let g:lightline = { 'colorscheme': 'gruvbox' }

" Gruvbox workarounds (because vim-unimpaired)
"nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
"nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
"nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>
"nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
"nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
"nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

"" Rusticated theme
"colorscheme rusticated
"let g:lightline = { 'colorscheme': 'rusticated' }

" Nvim providers
let g:loaded_node_provider = 0
let g:loaded_perl_provider = 0

" Swapfiles
set swapfile
set directory=~/.local/share/nvim/swap

" Better searchs
set ignorecase
set incsearch
set hlsearch

autocmd FileType json nnoremap <buffer> <leader>f :%! python3 -m json.tool --no-ensure-ascii<CR>

autocmd FileType ruby let g:fzf_tags_command = 'ripper-tags -R' " Use ripper-tags in FZF

" Better completion
set completeopt=menu,noinsert,noselect,preview

" Use the Silver Searcher over grep (1)
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
endif

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Tasklist
let g:tlTokenList = ["FIXME", "TODO", "XXX", "WORKAROUND", "DEBUG"]

" Buffergator
let g:buffergator_suppress_keymaps = 1
nnoremap <leader>b :BuffergatorOpen<CR>
nnoremap <leader>B :BuffergatorClose<CR>

" indentLine
let g:indentLine_char = "┊"

" Shortcut to config file
nmap <leader>C :tabedit $HOME/.config/nvim/init.vim<CR>
nmap <leader>R :source $HOME/.config/nvim/init.vim<CR>

" Deselect current search
nnoremap <F3> :noh<CR>
inoremap <F3> <Esc>:noh<CR>li
vnoremap <F3> <Esc>:noh<CR>gv

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
vmap <C-k> [egv
vmap <C-j> ]egv

" Keep selection after nesting
vnoremap > >gv
vnoremap < <gv

" Tabs navigation
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabnext -<CR>
nnoremap <leader>tc :tabnew<CR>
nnoremap <leader>tx :tabclose<CR>

" Tasklist
map <leader>v <Plug>TaskList

" FZF
nmap <C-P> :Files<CR>
nmap <leader>c :BCommits<CR>
nmap <leader>g :Tags<CR>

" Tabular (2)
if exists(":Tabularize")
  nmap <leader>a= :Tabularize /=<CR>
  vmap <leader>a= :Tabularize /=<CR>
  nmap <leader>a: :Tabularize /:\zs<CR>
  vmap <leader>a: :Tabularize /:\zs<CR>
  nmap <leader>a| :Tabularize /|\zs<CR>
  vmap <leader>a| :Tabularize /|\zs<CR>
endif

" NrrwRgn
vnoremap <leader>n :NarrowRegion<CR>
nnoremap <leader>n :WidenRegion!<CR>

lua << EOF
-- Setup nvim-cmp.
local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = {
    ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item()),
    ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item()),
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  sources = cmp.config.sources({
    { name = 'buffer' }
  })
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' },
    { name = 'cmdline' }
  })
})

-- Setup lspconfig.
-- local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig')['solargraph'].setup {
  settings = {
    solargraph = {
      useBundler = true
    }
  },
  capabilities = capabilities
}

require('lspconfig')['elixirls'].setup {
  cmd = { os.getenv("HOME") .. '/elixir-ls/language_server.sh' },
  capabilities = capabilities
}

require('nvim-treesitter.configs').setup {
  ensure_installed = { "elixir", "javascript", "json", "markdown", "ruby", "yaml" },
  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  indent = {
    -- This feature is experimental
    enable = false,
  },
  incremental_selection = {
    enable = true,
  },
}
EOF

"" REFERENCES
"
" (1) https://robots.thoughtbot.com/faster-grepping-in-vim
" (2) http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
" (3) https://neovim.io/news/2022/04#filetypelua
