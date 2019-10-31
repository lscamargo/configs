set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'leshill/vim-json'
Plugin 'Shougo/neocomplete'
Plugin 'vim-airline/vim-airline'
Plugin 'rhysd/vim-clang-format'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mattn/emmet-vim.git'
" Plugin 'vim-scripts/ctags.vim'

call vundle#end()

autocmd FileType cpp setlocal omnifunc=cppcomplete#CompleteCPP
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

autocmd BufNewFile,BufRead *.gradle setf groovy

filetype plugin indent on

set t_Co=256       " tell vim it's OK to use 256 colors at the terminal

set showmatch      " show matching brackets and parens
set number         " show line numbers
set nobackup       " do not create make backup~ files
set nowritebackup  " do not create backup~ files
set noswapfile     " do not create swap files
set encoding=utf-8 " set character encoding to UTF-8
set scrolloff=3    " show 3 lines above or below cursor when scrolling
set showmode       " show insert, replace, or visual mode in last line
set showcmd        " show command in last line
set visualbell     " flash screen on bell
set ttyfast        " assumes fast connection
set ruler          " show line and column number
set laststatus=2   " every window gets a status line
set nolist         " show spaces and tabs
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\

set smartindent

set nowrap          " don't wrap lines
set tabstop=4       " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent      " always set autoindenting on
set copyindent      " copy the previous indentation on autoindenting
set shiftwidth=4    " number of spaces to use for autoindenting
set shiftround      " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch       " set show matching parenthesis
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab        " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch        " highlight search terms
set incsearch       " show search matches as you type

set expandtab

set hidden          " hides buffers instead of closing them

" auto reload VIMRC after saving
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

syntax on           " enable syntax highlighting

" configuring GVIM
if has("gui_running")
    set gfn=Ubuntu\ Mono\ 11
    colorscheme candy
else
    colorscheme jellybeans
endif

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*~,*.pyc,*.class,*.a,*.o,*.dll,*.exe,.git,.vscode,build*
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

" change the mapleader from \ to ,
let mapleader=","

set pastetoggle=<F2>     " do/not indent on paste

nnoremap ; :

" exiting insert mode
inoremap <leader><leader> <esc>

" format paragraph/selection with Q
vmap Q gq
nmap Q gqap

" stop using arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" 
noremap j gj
nnoremap k gk

" easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nmap <silent> <leader>/ :nohlsearch<CR>

" Configure plugins

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

map <leader>. :CtrlPTag<CR>

let g:airline_powerline_fonts = 0

map <f3> :NERDTreeToggle<CR>

map <f8> :TagbarToggle<CR>

nnoremap <silent> <Leader>b :TagbarToggle<CR>

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:@

" EOF
