" Use Vim settings instead of shitty Vi ones. 
set nocompatible

" ########## General Settings ##########

set number				" Line numbers
set history=1000			" :cmdline history
set autoread				" Reload externally modified files
set hidden				" Background text buffering
set noswapfile

syntax on				" Syntax highlighting, wee!


" ########## Vundle Stuff  ##########

filetype off
set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin()

" Bundles to make stuff look sexy
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

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

" ########## Folding  ##########

set foldmethod=indent			" Fold based on indent
set foldnestmax=3			" 3 levels of foldage
set nofoldenable			" Don't fold by default


" ########## Style ##########

set guifont=Anonymous\ Pro:h20
colorscheme hornet 

highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

set list
set listchars=""
set listchars+=tab:\ \ 
set listchars+=trail:💩
