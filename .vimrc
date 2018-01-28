" vim config
" Ryan Cavicchioni

set nocompatible
filetype off

call plug#begin('~/.vim/pluged')

if $MONO != "yes"
    set t_Co=256            " Set to 256 color mode.
    syntax on               " Enable syntax highlighting.
    set nonumber              " Enable line numbering.
else
    " makes the autocmd's work when in MONO mode.
    filetype on
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
set softtabstop=4
set showcmd             " Show partial command in status line.
set ignorecase          " Case insensitive searching.
set smartcase           " Smart case matching.
set autowrite           " Save before switching buffers.
set number
set smarttab
set listchars=tab:·\ ,eol:$
set expandtab
set backspace=indent,eol
set textwidth=80
set spell
set ruler
set laststatus=2
set colorcolumn=80

nnoremap <leader>s :set spell!<CR>
nnoremap <leader>n :set number!<CR>
nnoremap <leader>rn :set relativenumber!<CR>

if has("win32")
    silent execute "!mkdir " . $HOME . "\\vimfiles\\backup"
    silent execute "!mkdir " . $HOME . "\\vimfiles\\swp"
    set backupdir=~/vimfiles/backup/
    set directory=~/vimfiles/swp/
else
    silent !mkdir -p ~/.vim/{backup,swp}/
    set backupdir=~/.vim/backup/
    set directory=~/.vim/swp/
endif

au BufNewFile,BufRead *.txt set ft=text
au FileType text set tw=72 spell spelllang=en_us nonumber

au FileType mail set tw=72 spell spelllang=en_us nonumber
au FileType mail colorscheme default
au FileType gitcommit setlocal tw=72 spell spelllang=en_us nonumber
au BufNewFile,BufEnter *.phtml set tabstop=2 shiftwidth=2 softtabstop=2
au BufNewFile,BufEnter *.twig set tabstop=2 shiftwidth=2 softtabstop=2 ft=htmljinja
au FileType html set tabstop=2 shiftwidth=2 softtabstop=2
au FileType xml set tabstop=2 shiftwidth=2 softtabstop=2
au FileType ant set tabstop=2 shiftwidth=2 softtabstop=2
au FileType yaml set tabstop=2 shiftwidth=2 softtabstop=2
au FileType php set tabstop=4 shiftwidth=4 softtabstop=4
au FileType make set noexpandtab
au FileType ruby,eruby setlocal ts=2 sw=2 tw=79 et sts=2 autoindent colorcolumn=80
au FileType puppet setlocal ts=2 sw=2 tw=80 et sts=2 autoindent colorcolumn=80

" keyboard shortcuts
nmap <silent> <leader>l :set list!<CR>
nmap <silent> <leader>t :NERDTreeToggle<CR>
nmap <silent> <leader>u :GundoToggle<CR>

"call pathogen#helptags()
"call pathogen#runtime_append_all_bundles()

filetype off

" Plugins
Plug 'Shougo/vimproc'
Plug 'sjl/gundo.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'msanders/snipmate.vim'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'mattn/gist-vim'
Plug 'tpope/vim-fugitive'
Plug 'python.vim'
Plug 'kien/ctrlp.vim'
Plug 'scratch.vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-vinegar'
Plug 'ledger/vim-ledger'

" Syntax
Plug 'groenewege/vim-less'
Plug 'tpope/vim-haml'
Plug 'jnwhiteh/vim-golang'
Plug 'slim-template/vim-slim'
Plug 'juvenn/mustache.vim'
Plug 'puppetlabs/puppet-syntax-vim'

" Themes
Plug 'jnurmine/Zenburn'
Plug 'nanotech/jellybeans.vim'
Plug 'guns/jellyx.vim'
Plug 'strange/strange.vim'
Plug 'veloce/vim-aldmeris'
Plug 'altercation/vim-colors-solarized'
Plug 'Lokaltog/vim-distinguished'
Plug 'nelstrom/vim-mac-classic-theme'
Plug 'atonse/vydark'
Plug 'vim-scripts/vylight'
Plug 'tpope/vim-vividchalk'
Plug 'ciaranm/inkpot'
Plug 'jpo/vim-railscasts-theme'
Plug 'oguzbilgic/sexy-railscasts-theme'
Plug 'mrkn/mrkn256.vim'
Plug 'bcat/abbott.vim'
Plug 'twilight256.vim'
Plug 'vilight.vim'
Plug 'dasch/vim-mocha'
Plug 'dasch/satellite'
Plug 'djjcast/mirodark'
Plug 'molok/vim-vombato-colorscheme'
"Plugin 'jelera/vim-gummybears-colorscheme'
Plug 'vim-scripts/Gummybears'
Plug 'sjl/badwolf'
Plug 'shawncplus/skittles_berry'
Plug 'Skittles-Dark'
Plug 'tortex'
Plug 'mayansmoke'
Plug 'w0ng/vim-hybrid'
Plug 'blackgate/tropikos-vim-theme'
Plug 'zaki/zazen'
Plug 'jonathanfilip/vim-lucius'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'tangphillip/SunburstVIM'
Plug 'nelstrom/vim-blackboard'
Plug 'tomasr/molokai'
Plug 'zeis/vim-kolor'
Plug 'morhetz/gruvbox'
Plug 'trapd00r/neverland-vim-theme'
Plug 'chriskempson/base16-vim'
Plug 'changyuheng/color-scheme-holokai-of-vim'
Plug 'noahfrederick/Hemisu'
Plug 'sk1418/last256'
Plug 'toupeira/vim-desertink'
Plug 'junegunn/seoul256.vim'
Plug 'lsdr/monokai'
"Plugin 'daylerees/colour-schemes', { "rtp": "vim" }
Plug 'Pychimp/vim-luna'
Plug 'Pychimp/vim-sol'
Plug 'vim-scripts/wombat256.vim'
Plug 'vim-scripts/Wombat'
Plug 'hukl/Smyck-Color-Scheme'
Plug 'tpope/vim-commentary'
Plug 'itchyny/landscape.vim'
Plug 'reedes/vim-colors-pencil'
Plug 'Shougo/unite.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'freeo/vim-kalisi'
Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plug 'ajh17/Spacegray.vim'
Plug 'mtglsk/mushroom'
Plug 'wellsjo/wells-colorscheme.vim'
Plug 'romainl/Apprentice'
Plug 'gosukiwi/vim-atom-dark'
Plug 'fatih/vim-go'
Plug 'abra/vim-abra'
Plug 'nielsmadan/harlequin'
Plug 'fxn/vim-monochrome'
Plug 'hewo/vim-colorscheme-deepsea'
Plug 'jyota/vimColors'
Plug 'dylanaraps/crayon'
Plug 'joshdick/onedark.vim'
Plug 'andreasvc/vim-256noir'
Plug 'petelewis/vim-evolution'
Plug 'changyuheng/color-scheme-holokai-for-vim'
Plug 'mhartington/oceanic-next'

call plug#end()

filetype plugin indent on

set background=dark
colorscheme OceanicNext
let g:airline_theme='oceanicnext'

" Force hash comments to retain their indentation level.
inoremap # X#

" Configure airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep=''
let g:airline_right_sep=''

" Configure unite
nnoremap <leader>f :<C-u>Unite -start-insert file<CR>
nnoremap <leader>b :<C-u>Unite -start-insert buffer<CR>

" If it exists, include user's local vim config
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
