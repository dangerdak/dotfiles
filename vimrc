set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'

" My Bundles
Plugin 'ervandew/supertab'
Plugin 'altercation/vim-colors-solarized'
Plugin 'pyflakes.vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
"Plugin 'majutsushi/tagbar'
Plugin 'gorodinskiy/coloresque'

filetype plugin indent on

"Solarized
syntax enable
set background=dark
colorscheme solarized

set autoindent
set wildmenu
set number
set undofile
set mouse=a 

"Syntastic checkers
"let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol= '>>'
let g:syntastic_warning_symbol = '!!'
let g:syntastic_css_checkers=['csslint', 'prettycss']

"Toggle tagbar
"nmap <F1> :TagbarToggle<CR> 

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
