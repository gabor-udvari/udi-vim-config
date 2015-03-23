" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = ['tmuxline.vim']

if has("autocmd")
	" pathogen
	runtime bundle/vim-pathogen/autoload/pathogen.vim
	execute pathogen#infect()
	filetype plugin indent on

	" fakeclip
	runtime bundle/vim-fakeclip/autoload/fakeclip.vim
endif

if has("syntax")
	" switch on syntax highlighting
	syntax on
endif

if has("folding")
	" folding settings
	set foldmethod=indent   "fold based on indent
	set foldnestmax=10      "deepest fold is 10 levels
	set nofoldenable        "dont fold by default
	set foldlevel=1         "this is just what i use
endif

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

if has("syntax")
	set t_Co=256

	" Solarized
	" set background=dark
	" set background=light
	" colorscheme solarized

	" colorscheme molokai
	colorscheme wombat256
	" colorscheme zenburn
endif

if has("eval")
	let g:airline_powerline_fonts=1
	let g:airline_theme='wombat'
endif
