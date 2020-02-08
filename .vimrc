set nocompatible  "Kill vi-compatibility
set t_Co=256 "256 color
set encoding=utf-8 "UTF-8 character encoding

" INDENT 2 IS SUPREME BC CONCISENESS
" RIP ^^^
set tabstop=4  "2 space tabs
set shiftwidth=4  "2 space shift
set softtabstop=4  "Tab spaces in no hard tab mode
set expandtab  " Expand tabs into spaces
set autoindent  "autoindent on new lines

set showmatch  "Highlight matching braces

set ruler  "Show bottom ruler

set equalalways  "Split windows equal size

set formatoptions=croq  "Enable comment line auto formatting

set title  "Set window title to file
set hlsearch  "Highlight on search
set ignorecase  "Search ignoring case
set smartcase  "Search using smartcase
set incsearch  "Start searching immediately

set scrolloff=5  "Never scroll off
set wildmode=longest,list  "Better unix-like tab completion
set clipboard=unnamed  "Copy and paste from system clipboard
set lazyredraw  "Don't redraw while running macros (faster)
set wrap  "Visually wrap lines
set linebreak  "Only wrap on 'good' characters for wrapping
set backspace=indent,eol,start  "Better backspacing
set linebreak  "Intelligently wrap long files
set ttyfast  "Speed up vim
set nostartofline "Vertical movement preserves horizontal position

" Strip whitespace from end of lines when writing file
autocmd BufWritePre * :%s/\s\+$//e

" Syntax highlighting and stuff
syntax on
filetype plugin indent on

" Settings that I have added personally
set number " line numbers

" Hotkeys
inoremap jk <ESC>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Makefile no tab expand
autocmd FileType make setlocal noexpandtab

" Python 4 indent
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal softtabstop=4

" Packages
call plug#begin('~/.vim/plugged')

" -- nerdtree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" -- syntax highlighing
Plug 'neomake/neomake'

Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'Shirk/vim-gas'

" -- aesthetics
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'

call plug#end()

" set rtp+=$HOME/.local/lib/python3.6/site-packages/powerline/bindings/vim/
" set laststatus=2
" set t_Co=256

" Package config
nmap <silent> <leader>t :NERDTreeToggle<CR>
let g:airline_powerline_fonts = 1

" Full config: when writing or reading a buffer, and on changes in insert and
let g:python3_host_prog = '/usr/bin/python3'


" Syntax Highlighting
augroup asm_ft
  au!
  autocmd BufNewFile,BufRead *.S set syntax=gas
augroup END
