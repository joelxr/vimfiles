set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'lilydjwg/colorizer'
Plugin 'chrisbra/csv.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'reedes/vim-lexical'
Plugin 'junegunn/vim-easy-align'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-shell'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mhinz/vim-startify'
Plugin 'myusuf3/numbers.vim'
Plugin 'posva/vim-vue'
Plugin 'w0rp/ale'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'morhetz/gruvbox'
Plugin 'jremmen/vim-ripgrep'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-utils/vim-man'
Plugin 'lyuts/vim-rtags'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mbbill/undotree'

call vundle#end()

syntax on
filetype plugin indent on

if has("gui_running")
  if has("gui_gtk3")
    set guifont=hack\ 9
  elseif has("gui_gtk2")
    set guifont=hack\ 9
  elseif has("gui_photon")
    set guifont=Hack:s9
  elseif has("gui_kde")
    set guifont=Hack/9/-1/5/50/0/0/0/1/0
  else
    set guifont=Hack:h12:cDEFAULT
  endif

  set guioptions-=T
  set guioptions-=e\
  set t_Co=256
  set guitablabel=%M\ %t
endif

colorscheme gruvbox

set background=dark
set mouse=a
set autochdir
set nocompatible
set showcmd
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set number
set breakindent
set wrap linebreak nolist
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
set history=1000
set showmode
set gcr=a:blinkon0
set keymodel-=stopsel
set visualbell
set autoread
set expandtab
set smarttab
set shiftwidth=2
set autoindent
set smartindent
set softtabstop=2
set tabstop=2
set linebreak
set linespace=2
set tw=500
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set foldcolumn=0
set laststatus=2
set wildmenu
set wildmode=list:longest,full
set mps+=<:>
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L
set lazyredraw
set magic
set nobackup
set nowb
set noswapfile
set spell
set hid
set ffs=unix,dos,mac
set relativenumber

if executable('rg')
  let g:rg_derive_root='true'
endif

let g:tex_conceal = ""
let g:NERDTreeMouseMode = 1
let g:NERDTreeWinSize = 33
let g:NERDTreeChDirMode=2
let g:NERDTreeMinimalUI = 1
let g:NERDTreeHidden=1
let g:NERDTreeShowBookmarks=0
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeCaseSensitiveSort = 0
let g:NERDTreeNaturalSort = "1"
let g:airline#extensions#ale#enabled = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
let g:ctrlp_user_command = ['./git/', 'git --git-dir=%s/.git ls files -oc --exclude-staged']
let g:ctrlp_custom_ignore = {'dir':  '\v[\/](doc|tmp|node_modules)'}
let g:ctrlp_use_caching = 0

autocmd FileType vue syntax sync fromstart

