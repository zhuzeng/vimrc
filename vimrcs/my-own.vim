" Configuration file for vim
set nocompatible

filetype off

filetype plugin indent on    " required
" colorschema under /usr/share/vim/vim73/colors
" colorscheme torte
" colorscheme automation
syntax on
set background=dark
"*cterm-colors*
"NR-16   NR-8    COLOR NAME
"0       0       Black
"1       4       DarkBlue
"2       2       DarkGreen
"3       6       DarkCyan
"4       1       DarkRed
"5       5       DarkMagenta
"6       3       Brown, DarkYellow
"7       7       LightGray, LightGrey, Gray, Grey
"8       0*      DarkGray, DarkGrey
"9       4*      Blue, LightBlue
"10      2*      Green, LightGreen
"11      6*      Cyan, LightCyan
"12      1*      Red, LightRed
"13      5*      Magenta, LightMagenta
"14      3*      Yellow, LightYellow
"15      7*      White
" highlight Normal ctermfg=grey ctermbg=darkblue

set autochdir
set modelines=0		" CVE-2007-2438
set backspace=2		" more powerful backspacing
set smartindent
set autoindent
set cindent
"set cursorline
"set cursorcolumn
set confirm
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set history=50
set hlsearch
set incsearch
set gdefault
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1

set scrolloff=10

" highlight matching parenthesises.
set showmatch
" set matchtime=5
" save file when losing focus
set autowrite
" auto complete in cmd line
set wildmenu
" To wrap keys, so from the end of this line, hit l, you go to beginning
" of next line, etc.
set whichwrap=h,l,<,>,[,]

" <F5> to compile and run C program.
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
exec "!gcc % -o %<"
exec "! ./%<"
endfunc

" <F6> to compile and run C++ program.
map <F6> :call CompileRunGpp<CR>
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./<"
endfunc

" <F7> to toggle syntax on/off
map <F7> :if exists("syntax_on") <BAR>
\    syntax off <BAR><CR>
\  else <BAR>
\syntax enable <BAR>
\  endif

nmap <tab> <C-w>w
nmap zz :bn<Enter>
nmap Z :bp<Enter>

set tags=~/tags
set path=./**,~/postgres-9.4.1/**,/usr/include/**

" /copyright\c -- case insensitive    /copyright\C -- case sensitive
set ic
set smartcase
" autocmd BufNewFile *.cpp r ~/template.cpp
"autocmd BufNewFile *.c r ~/template.c

set colorcolumn=79
" status line
set cmdheight=2
set laststatus=2
set showcmd
set statusline=%f         " Path to the file
set statusline+=\ -\      " Separator
set statusline+=Lines:\ %p%%\ [%l/%L]    " Current line
set statusline+=\ -\      " Separator
set statusline+=Col:\ %c%V\ %P
" set statusline=[%n]\ %<%F\ \ \ [%M%R%H%W%Y][%{&ff}]\ \ %=\ line:%l/%L\ col:%c\ \ \ %p%%\ \ \ @%{strftime(\"%H:%M:%S\")}
