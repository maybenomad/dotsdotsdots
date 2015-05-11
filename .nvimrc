" Use Vim settings instead of shitty Vi ones. 
set nocompatible

" ########## General Settings ##########

set number				" Line numbers
set history=1000			" :cmdline history
set autoread				" Reload externally modified files
set hidden				" Background text buffering
set noswapfile

set laststatus=2 " Enabled status line
set statusline+=%F " Show current file relative to working dir
set clipboard=unnamed " Use system clipboard

syntax on				" Syntax highlighting, wee!

" ########## Vundle Stuff  ##########

filetype off
set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin()

" General plugins.
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'

" Javascript plugins.
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'

call vundle#end()

" ########## Formatting  ##########

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set backspace=indent,eol,start
imap jj <ESC>

filetype plugin on
filetype indent on

" ########## Style ##########

set guifont=Anonymous\ Pro:h18
colorscheme jellybeans

" Show lines at the 80 and 120 character marks.
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

" Turn trailing whitespace into smiley piles of poo.
set list
set listchars=""
set listchars+=tab:\ \ 
set listchars+=trail:💩

" ########## Plugin: Ctrl-p  ##########

" Don't index bullshit like node_modules.
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dist'
