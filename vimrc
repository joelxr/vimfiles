set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/snipMate'
Plugin 'vim-scripts/AutoClose'
Plugin 'vim-scripts/css_color'
Plugin 'vim-scripts/Buffergator'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-vividchalk'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'Yggdroot/indentLine'
Plugin 'bling/vim-bufferline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'


call vundle#end()
syntax on
filetype plugin indent on

"if has("gui_running")
"   if has("gui_gtk2")
"		set guifont=Inconsolata\ 12
"	endif
"endif

if has('gui_running')
    set background=light
else
    set background=dark
 endif

"colorscheme vividchalk

set background=dark
colorscheme solarized

set autochdir
set nocompatible
set showcmd
set number
set showbreak=...
set wrap linebreak nolist
set backspace=indent,eol,start
set history=1000
set showmode
set gcr=a:blinkon0
set keymodel-=stopsel
set visualbell
set autoread
set expandtab
set smarttab
set shiftwidth=3
set autoindent
set smartindent
set softtabstop=3
set tabstop=3
set list listchars=tab:\ \ ,trail:·
set nowrap
set linebreak
set foldmethod=indent
set foldnestmax=3
set nofoldenable
set linespace=3
set ic
set smartcase
set laststatus=2
set cursorline
set wildmenu
set wildmode=list:longest,full
set mps+=<:>
set guioptions-=T
