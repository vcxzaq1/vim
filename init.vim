set nocompatible

call plug#begin('~/.local/share/nvim/plugged')

" Main Plugins
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'slashmili/alchemist.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-sensible' " sets some normal standards
Plug 'sheerun/vim-polyglot' " language packs
Plug 'vim-syntastic/syntastic' " syntax checkings
Plug 'raimondi/delimitmate' " auto closing brackets/quotes/...
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bryanmylee/vim-colorscheme-icons'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'preservim/nerdcommenter'
Plug 'rhysd/git-messenger.vim'
Plug 'metakirby5/codi.vim'
Plug 'mhinz/vim-startify'


" Colors and stuff
Plug 'npxbr/gruvbox.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'junegunn/seoul256.vim'

" True color support
set termguicolors

call plug#end()

" set leader key
let g:mapleader = "\<Space>"

" Main Config
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set wildmode=longest,list,full wildmenu
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set textwidth=0
set hidden
set number
set title

" Colors Config
syntax on
colorscheme tokyonight

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Change colors
nnoremap <leader>Ts <cmd>:Colors<cr>

" Windows
nnoremap <leader>w- <cmd>:split<cr>
nnoremap <leader>w/ <cmd>:vsp<cr>
nnoremap <leader>bp <cmd>:bp<cr>
nnoremap <leader>bn <cmd>:bn<cr>
nnoremap <leader>bl <cmd>:ls<cr>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
