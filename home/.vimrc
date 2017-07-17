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

" disable automatic commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" set swapfiles and backupfiles directory
if !empty($SUDO_USER) && $USER !=# $SUDO_USER
	set viminfo=
	set directory-=~/tmp
	set backupdir-=~/tmp
endif

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

" Set higher font size on Windows
" Taken from https://stackoverflow.com/a/39579362
set guifont=default
if has('windows')
	"get dpi, strip out utf-16 garbage and new lines
	"system() converts 0x00 to 0x01 for 'platform independence'
	"should return something like 'PixelsPerXLogicalInch=192'
	"get the part from the = to the end of the line (eg '=192') and strip
	"the first character
	"and convert to a number
	let dpi = str2nr(strpart(matchstr(substitute(
				\system('wmic desktopmonitor get PixelsPerXLogicalInch /value'),
				\'\%x01\|\%x0a\|\%x0a\|\%xff\|\%xfe', '', 'g'),
				\'=.*$'), 1))
	if dpi > 100
		set guifont=Droid_Sans_Mono_Slashed_for_Pow:h12
	endif
endif
