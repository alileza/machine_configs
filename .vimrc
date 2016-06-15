set nu
set relativenumber
set number

" colorscheme atom-dark-256

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'flazz/vim-colorschemes'
Plugin 'fatih/vim-go'

" Git plugin not hosted on GitHub
Plugin 'wincent/command-t'

call vundle#end()            " required
filetype plugin indent on    " required

let g:go_fmt_command = "goimports"

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

colorscheme molokai
syntax on

filetype plugin on

set runtimepath^=~/.vim/bundle/ctrlp.vim

