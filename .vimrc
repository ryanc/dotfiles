" vim config
" Ryan Cavicchioni

silent !mkdir -p ~/.vim/{backup,swp}/

set nocompatible
filetype off

packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})

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
" set listchars=tab:·\ ,eol:$
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
set termguicolors
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
call minpac#add('Shougo/vimproc')
call minpac#add('sjl/gundo.vim')
call minpac#add('scrooloose/nerdcommenter')
call minpac#add('scrooloose/nerdtree')
"call minpac#add('msanders/snipmate.vim')
call minpac#add('godlygeek/tabular')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-fugitive')
call minpac#add('kien/ctrlp.vim')
call minpac#add('vim-scripts/scratch.vim')
call minpac#add('bling/vim-airline')
call minpac#add('tpope/vim-characterize')
call minpac#add('tpope/vim-vinegar')

" Syntax
call minpac#add('jnwhiteh/vim-golang')
call minpac#add('vim-syntastic/syntastic')

" Themes
call minpac#add('jnurmine/Zenburn')
call minpac#add('nanotech/jellybeans.vim')
call minpac#add('guns/jellyx.vim')
call minpac#add('altercation/vim-colors-solarized')
call minpac#add('atonse/vydark')
call minpac#add('vim-scripts/vylight')
call minpac#add('tpope/vim-vividchalk')
call minpac#add('ciaranm/inkpot')
call minpac#add('mrkn/mrkn256.vim')
call minpac#add('vim-scripts/twilight256.vim')
call minpac#add('vim-scripts/vilight.vim')
call minpac#add('dasch/vim-mocha')
call minpac#add('dasch/satellite')
call minpac#add('djjcast/mirodark')
call minpac#add('molok/vim-vombato-colorscheme')
"Plugin 'jelera/vim-gummybears-colorscheme'
call minpac#add('vim-scripts/Gummybears')
call minpac#add('sjl/badwolf')
call minpac#add('shawncplus/skittles_berry')
call minpac#add('vim-scripts/Skittles-Dark')
call minpac#add('vim-scripts/tortex')
call minpac#add('vim-scripts/mayansmoke')
call minpac#add('w0ng/vim-hybrid')
call minpac#add('blackgate/tropikos-vim-theme')
call minpac#add('zaki/zazen')
call minpac#add('jonathanfilip/vim-lucius')
call minpac#add('chriskempson/vim-tomorrow-theme')
call minpac#add('nelstrom/vim-blackboard')
call minpac#add('tomasr/molokai')
call minpac#add('morhetz/gruvbox')
call minpac#add('chriskempson/base16-vim')
call minpac#add('sk1418/last256')
call minpac#add('toupeira/vim-desertink')
call minpac#add('junegunn/seoul256.vim')
call minpac#add('lsdr/monokai')
call minpac#add('Pychimp/vim-luna')
call minpac#add('Pychimp/vim-sol')
call minpac#add('vim-scripts/wombat256.vim')
call minpac#add('vim-scripts/Wombat')
call minpac#add('reedes/vim-colors-pencil')
call minpac#add('Shougo/unite.vim')
call minpac#add('nielsmadan/harlequin')
call minpac#add('dylanaraps/crayon')
call minpac#add('joshdick/onedark.vim')
call minpac#add('kamwitsta/flatwhite-vim')
call minpac#add('srcery-colors/srcery-vim')
call minpac#add('koirand/tokyo-metro.vim')
call minpac#add('wesgibbs/vim-irblack')
call minpac#add('agreco/vim-citylights')
call minpac#add('kaicataldo/material.vim')
call minpac#add('arcticicestudio/nord-vim')
call minpac#add('dracula/vim')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('fxn/vim-monochrome')

filetype plugin indent on

set background=dark
colorscheme badwolf
let g:airline_theme='badwolf'

" Force hash comments to retain their indentation level.
inoremap # X#

" Configure airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep=''
let g:airline_right_sep=''

" Configure unite
nnoremap <leader>f :<C-u>Unite -start-insert file<CR>
nnoremap <leader>b :<C-u>Unite -start-insert buffer<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_yaml_checkers = ['yamllint']

" If it exists, include user's local vim config
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
