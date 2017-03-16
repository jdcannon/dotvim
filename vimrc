" Options --{{{--

if has('win32')
    let s:plugdir = "$HOME/vimfiles/plugged"
elseif has('unix')
    let s:plugdir = "~/.vim/plugged"
endif

set nocompatible
filetype indent plugin on
syntax on
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set foldlevelstart=0

" Indentation
set shiftwidth=4
set softtabstop=4
set expandtab
" --}}}--

" Mappings --{{{--
let mapleader = "\<space>"
let maplocalleader = ","
map Y y$
nnoremap <C-i> :nohl <bar> :redraw<CR>

" Map <C-direction> to replace <C-W>direction for switching windows
nnoremap <leader>hh <C-w>h
nnoremap <leader>jj <C-w>j
nnoremap <leader>kk <C-w>k
nnoremap <leader>ll <C-w>l

" vimrc quick edits
:nnoremap <leader>ve :vsplit $MYVIMRC<CR>
" vimrc quick source
:nnoremap <leader>vs :source $MYVIMRC<CR>
" Quick save and close
:nnoremap <leader>w :wq<CR>
:nnoremap <leader>s :w<CR>
:nnoremap <leader>q :q!<CR>

:nnoremap <C-H> :vertical resize -10<CR>
:nnoremap <C-J> :resize +10<CR>
:nnoremap <C-K> :resize -10<CR>
:nnoremap <C-L> :vertical resize +10<CR>

:nnoremap zz za

:vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
:vnoremap <leader>{ <esc>`>a}<esc>`<i{<esc>
:vnoremap <leader>< <esc>`>a><esc>`<i<<esc>
:vnoremap <leader>( <esc>`>a)<esc>`<i(<esc>

:inoremap jk <esc>
:inoremap kj <esc>

:onoremap ( i(
:onoremap n( :<c-u>normal! f(vi(<cr>
:onoremap l( :<c-u>normal! F)vi(<cr>

:onoremap { i{
:onoremap n{ :<c-u>normal! f{vi{<cr>
:onoremap l{ :<c-u>normal! F}vi{<cr>

" Abbreviations
:iabbrev ssig James Cannon<CR>jdcannon.design<CR>james@jdcannon.design
" Find Marker of current section
:nnoremap mm ?--{{<cr> :nohl<cr>
:nnoremap mz ?--{{<cr> :nohl<cr> za
" --}}}--

" Plug --{{{--
"------------------------------------------------------------
call plug#begin(s:plugdir)

Plug 'jceb/vim-orgmode'
Plug 'vim-scripts/utl.vim'
Plug 'mattn/calendar-vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/grep.vim'
Plug 'vim-scripts/CSApprox'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'Yggdroot/indentLine'
Plug 'avelino/vim-bootstrap-updater'
Plug 'sheerun/vim-polyglot'
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'jelera/vim-javascript-syntax'
Plug 'lervag/vimtex'

call plug#end()
"------------------------------------------------------------
" --}}}--

" Plugin Configuration --{{{--
let g:org_indent = 1
"--}}}--

" Autocommands --{{{--
augroup filecmds
    autocmd!
    autocmd BufNewFile * :write
    autocmd BufWritePre, BufRead *.html :normal gg=G
    autocmd Filetype vim :setlocal foldmethod=marker
augroup END
"--}}}--
