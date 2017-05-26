set nocompatible	" be iMproved, required for vundle
filetype off		" required for Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" My Bundles
"Plugin 'ervandew/supertab'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'	"Syntax checking
Plugin 'mileszs/ack.vim'	"Allows you to run Ack from Vim
Plugin 'tpope/vim-surround'	"Quoting/parenthesizing
Plugin 'tpope/vim-fugitive'	"Git wrapper
"Plugin 'majutsushi/tagbar'
Plugin 'gorodinskiy/coloresque'	"CSS colour previewing
"Plugin 'mattn/emmet-vim'	"Support for expanding abbreviations
Plugin 'wookiehangover/jshint.vim' "JS syntax hceking

" All plugins must be added before following line
call vundle#end()

filetype plugin indent on

"Solarized
syntax enable
set background=dark
colorscheme solarized

set autoindent	"New line indentation same as previous
set wildmenu	"Command line completion
set number	"Display line numbers
set undofile	"Persistent undo
set mouse=a 	"Enable mouse in all modes
set cursorline	"Highlight current line
set ruler	"Display cursor position
set showcmd	"Display incomplete command

"Syntastic checkers
"let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol= '>>'
let g:syntastic_warning_symbol = '!!'
let g:syntastic_css_checkers=['csslint', 'prettycss']

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

"Edit vimrc
let mapleader = ","
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

set expandtab
autocmd FileType Btml setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
set colorcolumn=80
