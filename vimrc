"Initial setup of .vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Code Completion plugin
Plugin 'Valloric/YouCompleteMe'
"Syntax Checking plugin
Plugin 'scrooloose/syntastic'
"Emmet
Plugin 'mattn/emmet-vim'
"Indent lines
Plugin 'Yggdroot/indentLine'
"Linter
"Plugin 'w0rp/ale'
"Fuzzy Finder
Plugin 'ctrlpvim/ctrlp.vim'
"Commenter 
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
"Solarized Theme
Plugin 'altercation/vim-colors-solarized'
" All of your Plugins must be added before the following line
call vundle#end()            " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Theme for Vim
syntax enable
set background=dark
colorscheme solarized

" Key Mappings
let mapleader = ','
nmap <leader>ne :NERDTree<cr>

" Line Numbers
set number relativenumber
" Use older regex engine to reduce lag when scrolling with relative line numbers 
set regexpengine=1

"Backspace Setting
set backspace=indent,eol,start 

" Indenting Configuration
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set softtabstop=4

"Line wrapping
set wrap

"Highlight Search
set hlsearch

"Macvim Font Configuration
set guifont=Monaco:h14
