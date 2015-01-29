"
" Vundle integration (https://github.com/gmarik/Vundle.vim
"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"
" list plugins below vvvvv
"

" Vundle, obviously
Plugin 'gmarik/Vundle.vim'

" coffeescript support
Plugin 'kchmck/vim-coffee-script'

" handlebars support
Plugin 'mustache/vim-mustache-handlebars'

" molokai color scheme
Plugin 'tomasr/molokai'

" CtrlP
Plugin 'kien/ctrlp.vim'

" minibufexpl
Plugin 'fholgado/minibufexpl.vim'

"
" list plugins above ^^^^^
"

call vundle#end()
filetype plugin indent on
"
" end Vundle integration
"

" enable highlighting and set the colorscheme
syntax on
colorscheme molokai

" make swapfiles in a dedicated directory (don't interfere with my
" sourcecode!)
set swapfile
set dir=~/.vi-swapfiles

" don't wrap lines
set nowrap

" use proper indenting
set copyindent
set preserveindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

" show line numbers and the cursor position
set number
set ruler

" show a gutter at 80 chars
set colorcolumn=80

" allow hidden edited buffers
set hidden

" minibufexpl shortcuts
nmap <leader>mbe :MBEFocus<CR>

" splitting
set splitright

map <C-h> <C-W>h
map <C-l> <C-W>l

