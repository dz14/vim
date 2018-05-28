"Initial setup of .vimrc
set nocompatible              " be iMproved, required
filetype off                  " required
" Set Directory for storing swapfiles
set directory^=$HOME/.vim/tmp//
" Key Mappings
let mapleader = ','
nmap <leader>nt :NERDTree<cr>
"Hit keys j-k to go back to Normal mode
inoremap jk <esc>

"Arrow keys to move panes
nmap <silent> <up> :wincmd k<cr>
nmap <silent> <down> :wincmd j<cr>
nmap <silent> <left> :wincmd h<cr>
nmap <silent> <right> :wincmd l<cr>
nmap <silent> <c-t> :Files<cr>

nmap s <Plug>(easymotion-bd-w)

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/usr/local/opt/fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

let g:ale_javascript_eslint_use_global = 1

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Code Completion plugin
Plugin 'Valloric/YouCompleteMe'
"Syntax Checking plugin
"Plugin 'scrooloose/syntastic'
Plugin 'w0rp/ale'
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
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'roxma/vim-paste-easy'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ervandew/supertab'
Plugin 'editorconfig/editorconfig-vim'
" For FZP
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" Syntax Highlighting Support for loads of languages
Plugin 'sheerun/vim-polyglot'
Plugin 'ap/vim-css-color'
Plugin 'mxw/vim-jsx'
"Snippet engine.
Plugin 'SirVer/ultisnips'
"Snippets are separated from the engine.
Plugin 'honza/vim-snippets'
Plugin 'epilande/vim-react-snippets'
"Solarized Theme
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
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
"colorscheme solarized
colorscheme gruvbox
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
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
set softtabstop=2

"Line wrapping
set wrap

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Status line
set showcmd                     " display incomplete commands

"Javascript Syntax Highlighting for JSDocs
let g:javascript_plugin_jsdoc = 1

"Macvim Font Configuration
"set guifont=Meslo\ LG\ M\ for\ Powerline:h14
set guifont=MesloLGLDZ\ NF:h14
" Mouse settings
" set mouse=nicr
set mouse=a

" Syntastic Linting Preferences (currently prefering ALE)
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
""let g:syntastic_always_populate_loc_list = 1
""let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_eslint_exe = 'npm run eslint --'

"let g:syntastic_error_symbol = '❌'
"let g:syntastic_style_error_symbol = '⁉️'
"let g:syntastic_warning_symbol = '⚠️'
"let g:syntastic_style_warning_symbol = '💩'
"highlight link SyntasticErrorSign SignColumn
"highlight link SyntasticWarningSign SignColumn
"highlight link SyntasticStyleErrorSign SignColumn
"highlight link SyntasticStyleWarningSign SignColumn

" Close YCM Preview Pane when switching to Normal Mode
let g:ycm_autoclose_preview_window_after_insertion = 1

if !&scrolloff
  set scrolloff=5
endif
if !&sidescrolloff
  set sidescrolloff=5
endif

set display+=lastline
let g:jsx_ext_required = 0

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<s-tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
