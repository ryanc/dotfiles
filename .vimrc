" vim config
" Ryan Cavicchioni

silent !mkdir -p ~/.vim/{backup,swp}/

set nocompatible
filetype off

call plug#begin()

set t_Co=256            " Set to 256 color mode.
syntax on               " Enable syntax highlighting.

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
set fileencoding=utf-8
set listchars=eol:¬,space:·,tab:»\ 
set expandtab
set backspace=indent,eol
set textwidth=80
set spell
set ruler
set laststatus=2
set colorcolumn=80
set diffopt+=iwhite
set backupdir=~/.vim/backup/
set directory=~/.vim/swp/
if has('termguicolors')
    set termguicolors
endif
set updatetime=100

nnoremap <leader>s :set spell!<CR>
nnoremap <leader>n :set number!<CR>
nnoremap <leader>rn :set relativenumber!<CR>

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

filetype off

" Plugins
Plug 'Shougo/vimproc'
Plug 'sjl/gundo.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'msanders/snipmate.vim'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/scratch.vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-vinegar'

Plug 'jnwhiteh/vim-golang'
Plug 'vim-syntastic/syntastic'
Plug 'hashivim/vim-terraform'

Plug 'jnurmine/Zenburn'
Plug 'nanotech/jellybeans.vim'
Plug 'guns/jellyx.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'atonse/vydark'
Plug 'vim-scripts/vylight'
Plug 'tpope/vim-vividchalk'
Plug 'ciaranm/inkpot'
Plug 'mrkn/mrkn256.vim'
Plug 'vim-scripts/twilight256.vim'
Plug 'vim-scripts/vilight.vim'
Plug 'dasch/vim-mocha'
Plug 'dasch/satellite'
Plug 'djjcast/mirodark'
Plug 'molok/vim-vombato-colorscheme'
Plug 'sjl/badwolf'
Plug 'shawncplus/skittles_berry'
Plug 'vim-scripts/Skittles-Dark'
Plug 'vim-scripts/tortex'
Plug 'vim-scripts/mayansmoke'
Plug 'w0ng/vim-hybrid'
Plug 'blackgate/tropikos-vim-theme'
Plug 'zaki/zazen'
Plug 'jonathanfilip/vim-lucius'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'nelstrom/vim-blackboard'
Plug 'tomasr/molokai'
Plug 'chriskempson/base16-vim'
Plug 'sk1418/last256'
Plug 'toupeira/vim-desertink'
Plug 'junegunn/seoul256.vim'
Plug 'lsdr/monokai'
Plug 'Pychimp/vim-luna'
Plug 'Pychimp/vim-sol'
Plug 'vim-scripts/wombat256.vim'
Plug 'vim-scripts/Wombat'
Plug 'reedes/vim-colors-pencil'
Plug 'nielsmadan/harlequin'
Plug 'dylanaraps/crayon'
Plug 'kamwitsta/flatwhite-vim'
Plug 'srcery-colors/srcery-vim'
Plug 'koirand/tokyo-metro.vim'
Plug 'wesgibbs/vim-irblack'
Plug 'agreco/vim-citylights'
Plug 'kaicataldo/material.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline-themes'
Plug 'fxn/vim-monochrome'

Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/everforest'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/gruvbox-material'
Plug 'Everblush/everblush.vim'
Plug 'yuttie/inkstained-vim'
Plug 'sainnhe/edge'
Plug 'savq/melange'

Plug 'fatih/vim-go'
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'

call plug#end()

filetype plugin indent on

set background=dark
" colorscheme Tomorrow-Night-Eighties
set background=dark
let g:everforest_background = 'hard'
" colorscheme everforest
colorscheme everblush
let g:airline_theme='everforest'

" Force hash comments to retain their indentation level.
inoremap # X#

" Configure airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep=''
let g:airline_right_sep=''

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_yaml_checkers = ['yamllint']

function SetupSyntasticAvr()
    let g:syntastic_c_compiler = "avr-gcc"
    let g:syntastic_c_compiler_options = "-std=c99 -Wall -g -Os -mmcu=atmega328p -DF_CPU=16000000 -I ."
endfunction

if filereadable(".avr")
    autocmd FileType c call SetupSyntasticAvr()
endif

" If it exists, include user's local vim config
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
