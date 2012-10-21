set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmark/vundle'

Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-rails'
Bundle 'pangloss/vim-javascript'
Bundle 'JavaScript-syntax'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

"Keybind
"insert mode
imap <C-j> <esc>
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a> <HOME>
imap <C-e> <END>

"normal mode
nmap nt :NERDTreeToggle

"display
set number
set cursorline
set notitle
set list
set listchars=tab:»-,trail:~

let loaded_matchparen = 1

"encoding
set encoding=utf-8

"tab
set expandtab
set autoindent
set tabstop=2
set shiftwidth=2

"statusbar
set laststatus=2

"file
set noswapfile
set nobackup
filetype plugin on
au BufNewFile,BufRead *.php set tabstop=4 shiftwidth=4

"color
syntax enable
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast = "normal"
set background=dark

"Powerline
let g:Powerline_symbols='fancy'
set t_Co=256
