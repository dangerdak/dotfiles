set nocompatible	" don't need vi compatibility, required for vundle
filetype off		" required for Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" My Bundles
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'	"Syntax checking
Plugin 'tpope/vim-surround'	"Quoting/parenthesizing
Plugin 'tpope/vim-fugitive'	"Git wrapper
Plugin 'ap/vim-css-color'       "CSS color previewing
"Plugin 'w0rp/ale' "Asynchronous linting
"Cant get youcompleteme to work - have to press escape twice in insert mode
"And shows user defined completion pattern not found error
"May be incompatible with fugitive
"Plugin 'Valloric/YouCompleteMe' "Code-completion

"Plugin 'mileszs/ack.vim'	"Allows you to run Ack from Vim
"Plugin 'ervandew/supertab'
"Plugin 'majutsushi/tagbar'
"Plugin 'mattn/emmet-vim'	"Support for expanding abbreviations
"Plugin 'wookiehangover/jshint.vim' "JS syntax hceking
"Plugin 'KabbAmine/vCoolor.vim' "Color picker

" All plugins must be added before following line
call vundle#end()

filetype plugin indent on

"Solarized
syntax enable
set background=dark
colorscheme solarized

set autoindent	"New line indentation same as previous
set cursorline	"Highlight current line
set encoding=utf-8  "Recommended by vim docs
set mouse=a 	"Enable mouse in all modes
set number	"Display line numbers
set ruler	"Display cursor position
set scrolloff=2 "Number of context lines above and below cursor when scrolling
set showcmd	"Display incomplete command
set undofile	"Persistent undo
set wildmenu	"Command line completion

let g:vcoolor_custom_picker = 'zenity --color-selection --show-palette --color '

"Syntastic checkers
"let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol= '>>'
let g:syntastic_warning_symbol = '!!'
let g:syntastic_css_checkers=['csslint', 'prettycss']
let g:syntastic_javascript_checkers=['eslint']

"Recommended settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Toggle tagbar
"nmap <F1> :TagbarToggle<CR> 

"Disable arrow keys
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

"Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"More natural split opening
set splitbelow
set splitright

"Run current python file
nnoremap <F5> :!python %<CR>

let mapleader = ","
"Open current file in browser
function! Browser()
        :silent !chromium %
        :redraw!
endfunction
nnoremap <leader>o :call Browser()<CR>

"Edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

set expandtab   "Expand tabs into spaces
"Default indentation
set tabstop=4   "Width inserted by tab key
set shiftwidth=4        "Indent inserted/removed by carets in normal mode
set softtabstop=4       "Indentation removed by backspace

"Filetype-specific indentation
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
set colorcolumn=80
