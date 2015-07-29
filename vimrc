set nocompatible
filetype off

set rtp+=$USERPROFILE/vimfiles/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup'
Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/snipMate'
Plugin 'vim-scripts/AutoClose'
Plugin 'vim-scripts/Buffergator'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'lilydjwg/colorizer'
Plugin 'chrisbra/csv.vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'Shougo/neocomplete'

call vundle#end()
syntax on
filetype plugin indent on

if has('gui_running')
   set guifont=Consolas:h16:cANSI
   set background=dark
endif

colorscheme solarized

map <C-Ins> "+gP
map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarOpen<CR>
map <F4> :only<CR>
nmap <F11> <Plug>Colorizer
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv
inoremap <C-Return> <CR><CR><C-o>k<Tab>

set autochdir
set nocompatible
set showcmd
set encoding=utf-8
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

let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40
let g:tagbar_autoclose = 1
let g:tagbar_iconchars = ['▸', '▾']
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
