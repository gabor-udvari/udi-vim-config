" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

" fakeclip
runtime bundle/vim-fakeclip/autoload/fakeclip.vim

" folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" tabsize settings
set tabstop=2
set shiftwidth=2

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" numbers
set number

"if $TMUX == ''
"    set clipboard+=unnamed
"endif

set t_Co=256

" Solarized
" set background=dark
" set background=light
" colorscheme solarized
" colorscheme molokai
colorscheme wombat256
" colorscheme zenburn
