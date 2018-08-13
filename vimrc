"Initial setup of .vimrc
set nocompatible              " be iMproved, required
filetype off                  " required
" Set Directory for storing swapfiles
set directory^=$HOME/.vim/tmp//
" Key Mappings
let mapleader = ','
"Configure Silver Surfer
let g:ackprg = 'ag --nogroup --nocolor --column'
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
let g:ale_javascript_eslint_use_global = 1

call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
"Code Completion plugin
Plug 'Valloric/YouCompleteMe'
"Syntax Checking plugin
"Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'
"Emmet
Plug 'mattn/emmet-vim'
"Indent lines
Plug 'Yggdroot/indentLine'
"Fuzzy Finder
Plug 'ctrlpvim/ctrlp.vim'
"Commenter
Plug 'scrooloose/nerdcommenter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'pangloss/vim-javascript'
Plug 'terryma/vim-multiple-cursors'
Plug 'roxma/vim-paste-easy'
Plug 'ryanoasis/vim-devicons'
Plug 'ervandew/supertab'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-repeat'
" For FZP
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" Syntax Highlighting Support for loads of languages
Plug 'sheerun/vim-polyglot'
Plug 'ap/vim-css-color'
Plug 'mxw/vim-jsx'
"Snippet engine.
Plug 'SirVer/ultisnips'
"Snippets are separated from the engine.
Plug 'honza/vim-snippets'
Plug 'epilande/vim-react-snippets'
"Solarized Theme
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
call plug#end()

"Theme for Vim
syntax enable
set cursorline
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
set guifont=Meslo\ LG\ M\ Regular\ Nerd\ Font\ Complete\ Mono:h14
"set guifont=MesloLGLDZ\ NF:h14
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
