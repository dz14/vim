"Initial setup of .vimrc
set nocompatible              " be iMproved, required
filetype off                  " required
" Key Mappings
let mapleader = ','
nmap <leader>nt :NERDTree<cr>
"Hit keys j-k to go back to Normal mode
inoremap jk <esc>

"Arrow keys to move panes
nmap <silent> <Up> :wincmd k<CR>
nmap <silent> <Down> :wincmd j<CR>
nmap <silent> <Left> :wincmd h<CR>
nmap <silent> <Right> :wincmd l<CR>

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
"Fuzzy Finder
Plugin 'ctrlpvim/ctrlp.vim'
"Commenter 
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
Plugin 'pangloss/vim-javascript'
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
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
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

"Javascript Syntax Highlighting for JSDocs
let g:javascript_plugin_jsdoc = 1

"Macvim Font Configuration
set guifont=Meslo\ LG\ M\ for\ Powerline:h14
" Mouse settings
" set mouse=nicr
set mouse=a
