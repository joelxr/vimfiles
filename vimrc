" Working directory
cd /home/joel/dev/projects/

let $PATH=$PATH . '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/joel/dev/tools/apache-maven-3.0.5/bin:/home/joel/dev/tools/apache-maven-3.0.5/bin'

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
set autoindent
set smartindent
set smarttab
set shiftwidth=3
set softtabstop=3
set tabstop=3
set expandtab
set list listchars=tab:\ \ ,trail:·
set nowrap
set linebreak
set foldmethod=indent
set foldnestmax=3
set nofoldenable
set linespace=3
set ic
set smartcase
set statusline=%f       "tail of the filename
set statusline+=%{fugitive#statusline()}
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''}
set statusline+=%=
set statusline+=%c,
set statusline+=%l/%L
set statusline+=\ %P
set laststatus=3
set cursorline
set wildmenu
set wildmode=list:longest,full
set mps+=<:>
set guioptions-=T
set rtp+=~/.vim/bundle/vundle/

call vundle#rc()
syntax on
filetype plugin indent on

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle "scrooloose/nerdtree"
Bundle "vim-scripts/snipMate"
Bundle "itspriddle/vim-jquery"
Bundle "tpope/vim-surround"
Bundle "tpope/vim-vividchalk"
Bundle "vim-scripts/ZoomWin"
Bundle "vim-scripts/matchparenpp"
Bundle "vim-scripts/MatchTag"
Bundle "vim-scripts/AutoComplPop"

colorscheme vividchalk

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

map <C-B> "+gP
map <F2> :NERDTreeToggle<CR>
map <F3> :only<CR>
map <C-E><C-F> :%JavaFormat<CR>

inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>


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


let g:acp_behaviorJavaEclimLength = 1
function MeetsForJavaEclim(context)
  return g:acp_behaviorJavaEclimLength >= 0 &&
        \ a:context =~ '\k\.\k\{' . g:acp_behaviorJavaEclimLength . ',}$'
endfunction
let g:acp_behavior = {
    \ 'java': [{
      \ 'command': "\<c-x>\<c-u>",
      \ 'completefunc' : 'eclim#java#complete#CodeComplete',
      \ 'meets'        : 'MeetsForJavaEclim',
    \ }]
  \ }
