set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=$USERPROFILE/vimfiles/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/snipMate'
Plugin 'vim-scripts/AutoClose'
Plugin 'vim-scripts/Buffergator'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'Yggdroot/indentLine'
Plugin 'bling/vim-bufferline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'lilydjwg/colorizer'

call vundle#end()
filetype plugin indent on

if has('gui_running')
    set guifont=Consolas:h16:cANSI
    set background=dark
else
   set background=light
endif

colorscheme solarized

map <C-B> "+gP
map <F2> :NERDTreeToggle<CR>
map <F3> :only<CR>

nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv

inoremap <C-Return> <CR><CR><C-o>k<Tab>

inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=ClosePair('}')<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>

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


function ClosePair(char)
  if getline('.')[col('.') - 1] == a:char
    return "\<Right>"
  else
    return a:char
  endif
endf

function CloseBracket()
  if match(getline(line('.') + 1), '\s*}') < 0
    return "\<CR>}"
 else
   return "\<Esc>j0f}a"
 endif
endf

function QuoteDelim(char)
  let line = getline('.')
  let col = col('.')
  if line[col - 2] == "\\"
    "Inserting a quoted quotation mark into the string
    return a:char
  elseif line[col - 1] == a:char
    "Escaping out of the string
    return "\<Right>"
  else
    "Starting a string
    return a:char.a:char."\<Esc>i"
  endif
endf

function! DoPrettyXML()
  let l:origft = &ft
  set ft=
  1s/<?xml .*?>//e
  0put ='<PrettyXML>'
  $put ='</PrettyXML>'
  silent %!xmllint --format -
  2d
  $d
  silent %<
  1
  exe "set ft=" . l:origft
endfunction
command! PrettyXML call DoPrettyXML()

let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40
