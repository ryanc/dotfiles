" Set to 256 color mode.
set t_Co=256
" Enable syntax highlighting.
syntax on
" Set color scheme.
colorscheme darkburn 
" Enable line numbering.
set number
" Disable word wrap.
set nowrap
" Set tab to 4 characters.
set tabstop=4
" Enable smart indent.
set smartindent
set autoindent
" Set smartindent width to 4 characters.
set shiftwidth=4
" Highlight search and increment search.
set hlsearch
set incsearch
" Show matching brackets.
set showmatch
" Disable modeline support.
set nomodeline

set expandtab
set softtabstop=4

if $MONO == "yes"
    colorscheme default
    syntax off
    set nonumber
endif

au FileType mail set tw=72 spell spelllang=en_us nonumber
au FileType gitcommit set tw=72 spell spelllang=en_us nonumber
