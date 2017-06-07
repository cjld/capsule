set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

set number
set hlsearch
set tabstop=4 shiftwidth=4 expandtab

set nocompatible 
filetype plugin on
set modeline 

"    filetype indent on
" set autoindent

map ; :
