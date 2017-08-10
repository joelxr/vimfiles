set nocompatible
filetype off

set rtp+=$USERPROFILE/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'altercation/vim-colors-solarized'
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
Plugin 'mateusbraga/vim-spell-pt-br'
Plugin 'junegunn/vim-easy-align'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-shell'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mhinz/vim-startify'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'gregsexton/matchtag'
Plugin 'sickill/vim-pasta'
Plugin 'SirVer/ultisnips'
Plugin 'joelxr/vim-snippets'
Plugin 'posva/vim-vue'
Plugin 'w0rp/ale'
Plugin 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/npm.vim'

call vundle#end()
syntax on
filetype plugin indent on

if has('gui_running')
    set guifont=Hack:h11:cDEFAULT
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

colorscheme solarized

nmap <Leader>w :w!<cr>
map <Leader>o :only<CR>
map <Leader>nt :NERDTreeToggle<CR>
noremap 0 ^
noremap ^ 0
nmap 9 $
map <space> /
map <c-space> ?
map <Leader>ss :setlocal spell!<cr>
map <Leader>sn ]s
map <Leader>sp [s
map <Leader>sa zg
map <Leader>s? z=
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

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
set cursorline
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
set spelllang=pt_br
set hid
set ffs=unix,dos,mac
set relativenumber

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
let g:javascript_enable_domhtmlcss = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
let delimitMate_expand_cr=1
let g:ultisnips_javascript = {'keyword-spacing': 'always', 'semi': 'never', 'space-before-function-paren': 'always'}

augroup lexical
  autocmd!
  autocmd FileType markdown,mkd call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0 })
augroup END

autocmd FileType vue syntax sync fromstart
