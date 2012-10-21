set nocompatible
set backspace=indent,eol,start "backspace が効かない
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmark/vundle'

Bundle 'Rename'
Bundle 'Lucius'

Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-airline'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'nono/vim-handlebars'
Bundle 'osyo-manga/vim-over'
Bundle 'pangloss/vim-javascript'
Bundle 'plasticboy/vim-markdown'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'vim-ruby/vim-ruby'

filetype plugin indent on

" keybind
" insert mode
imap <C-j> <esc>

" normal mode
nmap nt :NERDTreeToggle
nmap gt :GitGutterToggle

" display
set number
set cursorline
set notitle
set list
set listchars=tab:»-,trail:~

let loaded_matchparen = 1

" encoding
set encoding=utf-8

" tab
set expandtab
set autoindent
set tabstop=2
set shiftwidth=2

" statusbar
set laststatus=2

" file
set noswapfile
set nobackup
filetype plugin on
au BufNewFile,BufRead *.php set tabstop=4 shiftwidth=4

" color
syntax enable
highlight clear SignColumn
set t_Co=256
colorscheme lucius
LuciusWhite

" airline
let g:airline_theme= 'bubblegum'
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_linecolumn_prefix = '␊ '
let g:airline_linecolumn_prefix = '␤ '
let g:airline_linecolumn_prefix = '¶ '
let g:airline#extensions#branch#symbol = '⎇ '
let g:airline#extensions#paste#symbol = 'ρ'
let g:airline#extensions#paste#symbol = 'Þ'
let g:airline#extensions#paste#symbol = '∥'
let g:airline#extensions#whitespace#symbol = 'Ξ'

" QuickFix
autocmd QuickFixCmdPost *grep* cwindow
