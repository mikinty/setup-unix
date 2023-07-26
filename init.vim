set number
set t_Co=256
set encoding=utf-8
set showmatch
set ruler
set equalalways
set title
set hlsearch
set ignorecase
set smartcase
set incsearch
set clipboard=unnamedplus
set backspace=indent,eol,start
autocmd BufWritePre * :%s/\s\+$//e

call plug#begin()

Plug 'neomake/neomake'
Plug 'Mofiqul/dracula.nvim'
Plug 'NMAC427/guess-indent.nvim'
Plug 'vim-airline/vim-airline'

call plug#end()

lua << EOF
require('guess-indent').setup {}
vim.cmd[[colorscheme dracula]]
EOF
