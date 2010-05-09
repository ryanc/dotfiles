if $MONO != "yes"
    set t_Co=256            " Set to 256 color mode.
    syntax on               " Enable syntax highlighting.
    colorscheme darkburn    " Set color scheme.
    set nonumber              " Enable line numbering.
else
    " makes the autocmd's work when in MONO mode.
    filetype on
endif
if has("gui_running")
    colorscheme tesla
    "set guifont=Menlo\ Bold
    "set guifont=Bitstream\ Vera\ Sans\ Mono\ Bold
    set guifont=DejaVu\ Sans\ Mono\ Bold
    set guioptions=egmrt
    syntax on
endif
set nowrap              " Disable word wrap.
set tabstop=4           " Set tab to 4 characters.
set smartindent         " Enable smart indent.
set autoindent
set shiftwidth=4        " Set smartindent width to 4 characters.
set hlsearch            " Highlight search and increment search.
set incsearch
set showmatch           " Show matching brackets.
set nomodeline          " Disable modeline support.
set expandtab
set softtabstop=4
set showcmd             " Show partial command in status line.
set ignorecase          " Case insensitive searching.
set smartcase           " Smart case matching.
set autowrite           " Save before switching buffers.
set number
set smarttab

au BufNewFile,BufRead *.txt set ft=text
au FileType text set tw=72 spell spelllang=en_us nonumber

au FileType mail set tw=72 spell spelllang=en_us nonumber
au FileType gitcommit set tw=72 spell spelllang=en_us nonumber
