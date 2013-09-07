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
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles to make stuff look sexy
Bundle 'flazz/vim-colorschemes'

" Language specific bundles
Bundle "haesken/vimclojure-vundle"
Bundle "wting/rust.vim"


" ########## Formatting  ##########

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on


" ########## Brace Completion n' Friends ###########

function DeletePair()
  let line_capture = getline('.')[(col('.')-2):]
  for char in ["(", "{", "["]
    if char ==? line_capture[0]
      return "\<Right>\<BS>\<BS>"
    endif
  endfor
  if line_capture[0] ==? "\"" && line_capture[1] ==? "\""
    return "\<Right>\<BS>\<BS>"
  else
    return "\<BS>"
  endif
endf

inoremap ( ()<Esc>i
inoremap { {}<Left><CR><CR><Up><Tab>
inoremap [ []<Esc>i
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap <expr> " getline('.')[col('.')-1] == "\"" ? "\<Right>" : "\"\"\<Left>"
" inoremap <expr> ' getline('.')[col('.')-1] == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap <BS> <c-r>=DeletePair()<CR>


" ########## Folding  ##########

set foldmethod=indent			" Fold based on indent
set foldnestmax=3			" 3 levels of foldage
set nofoldenable			" Don't fold by default


" ########## Style ##########

set guifont=Source\ Code\ Pro:h14
colorscheme badwolf


" ########## Clojure ##########

let g:vimclojure#HightlightBuiltins=1
let g:vimclojure#ParenRainbow=1
let vimclojure#WantNailgun=0
