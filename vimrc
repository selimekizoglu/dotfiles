let mapleader = ","

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'
Plugin 'mxw/vim-jsx'
Plugin 'elmcast/elm-vim'

call vundle#end()            " required
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

" Tabs
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" Show line numbers
set number

" Working directory
set autochdir

" --------------------------------------------------------
"  Key mappings
" --------------------------------------------------------
" NERDTree
nmap <C-N> :NERDTreeToggle<cr>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1

" Tagbar
nmap <C-t> :TagbarToggle<cr>

" Solarized
syntax enable
set background=dark
set t_Co=256
let g:solarized_termcolors = 256
colorscheme solarized

" elm-vim
let g:elm_format_autosave = 1

" Misc
inoremap jj <ESC>
inoremap jJ <ESC>
inoremap JJ <ESC>
inoremap Jj <ESC>

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Save as sudo user
cmap w!! w !sudo tee > /dev/null %

:set tags=./tags;~/workspace

" Golang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Java
let g:EclimCompletionMethod = 'omnifunc'
