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
Plugin 'mattn/emmet-vim'	"Support for expanding abbreviations
Plugin 'scrooloose/nerdcommenter' "Comment toggling
Plugin 'scrooloose/nerdtree' "Tree explorer
Plugin 'pangloss/vim-javascript' "Improved JS indentation and syntax highlighting
Plugin 'rstacruz/vim-closer' "Auto close brackets - ONLY on <CR>

"Plugin 'w0rp/ale' "Asynchronous linting
"Cant get youcompleteme to work - have to press escape twice in insert mode
"And shows user defined completion pattern not found error
"May be incompatible with fugitive
"Plugin 'Valloric/YouCompleteMe' "Code-completion

"Plugin 'mileszs/ack.vim'	"Allows you to run Ack from Vim
"Plugin 'ervandew/supertab'
"Plugin 'majutsushi/tagbar'
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

"Statusline settings
set laststatus=2
set statusline=%f   "Path to the file
set statusline+=%=  "Move to rhs
set statusline+=%l  "Current line
set statusline+=/   "Separator
set statusline+=%L  "Total lines

"Syntastic checkers
let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol= '>>'
let g:syntastic_warning_symbol = '!!'
let g:syntastic_styel_warning_symbol = 'S!'
let g:syntastic_css_checkers=['csslint', 'prettycss']
let g:syntastic_javascript_checkers=['eslint']

"Recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Nerdtree settings
nnoremap <C-n> :NERDTreeToggle<CR>


"Toggle tagbar
"nmap <F1> :TagbarToggle<CR> 

"Make searches case insensitive unless they contain some uppercase characters
set ignorecase
set smartcase

set gdefault "Apply substitutions globally on lines by default
let mapleader = ","

"Highlight search results as you type
set incsearch
set hlsearch
nnoremap <leader><space> :let @/ = ""<CR>

"Fix indentation and return to previous location
nnoremap <leader>= mzgg=G`z

"Open auto-complete menu
inoremap <leader>x <C-x><C-o>

"Tab matches bracket pairs
nnoremap <tab> %
vnoremap <tab> %

"Use perl compatible regexes
nnoremap / /\v
vnoremap / /\v

"Disable arrow keys
noremap <up> <nop>
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

"Open current file in browser
function! Browser()
        :silent !chromium %
        :redraw!
endfunction
nnoremap <leader>o :call Browser()<CR>

"Re-hardwrap paragraph
nnoremap <leader>q gqip
"Re-select pasted text
nnoremap <leader>v V`]
"Fold tag - for html
nnoremap <leader>ft Vatzf

"Expand Emmet abbrs
let g:user_emmet_leader_key=','

"Edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

nnoremap ; :

"Save on losing focus
au FocusLost * :wa

"Default indentation
set expandtab   "Expand tabs into spaces
set tabstop=4   "Width inserted by tab key
set shiftwidth=4        "Indent inserted/removed by carets in normal mode
set softtabstop=4       "Indentation removed by backspace

"Filetype-specific indentation
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2

"Line wrapping. See help fo-table
set linebreak
set textwidth=79
set formatoptions=cqn1

set colorcolumn=80
