set nocompatible
filetype off

set rtp+=$USERPROFILE/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'L9'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'lilydjwg/colorizer'
Plugin 'chrisbra/csv.vim'
Plugin 'Shougo/neocomplete'
Plugin 'tfnico/vim-gradle'
Plugin 'Raimondi/delimitMate'
Plugin 'unblevable/quick-scope'
Plugin 'reedes/vim-lexical'
Plugin 'mateusbraga/vim-spell-pt-br'
Plugin 'junegunn/vim-easy-align'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-shell'
Plugin 'chriskempson/base16-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mhinz/vim-startify'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'gregsexton/matchtag'
Plugin 'sickill/vim-pasta'

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

try
    colorscheme base16-default-dark
catch
endtry

nmap <Leader>w :w!<cr>
map <Leader>o :only<CR>
map <Leader>nt :NERDTreeToggle<CR>
map <Leader>tg :TagbarOpen<CR>
map <Leader>cp :CtrlP<CR>
nmap <Leader>ca :.,$d<CR>
nmap <Leader>= :ZoomIn<CR>
nmap <Leader>- :ZoomOut<CR>
nmap <Leader>0 :ZoomReset<CR>
map <Leader>fj :silent !astyle %:p<CR>
map <Leader>fh :silent !html-beautify -f %:p -o %:p<CR>
map <Leader>fc :silent !css-beautify -f %:p -o %:p<CR>
map <Leader>fs :silent !js-beautify -f %:p -o %:p<CR>
map <Leader>bt :silent !pdflatex %:p<CR>
map <Leader>bd :Bclose<cr>:tabclose<cr>gT
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
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>

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
set shiftwidth=4
set autoindent
set smartindent
set softtabstop=4
set tabstop=4
set linebreak
set linespace=4
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

let g:tex_conceal = ""
let g:NERDTreeMouseMode = 1
let g:NERDTreeWinSize = 29
let g:NERDTreeChDirMode=2
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowBookmarks=0
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeCaseSensitiveSort = 0
let g:NERDTreeWinPos = "left"
let g:tagbar_autoclose = 1
let g:tagbar_iconchars = ['▸', '▾']
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 2
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 5
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:airline_theme = 'base16'
let g:javascript_enable_domhtmlcss = 1
let g:vimtex_enabled = 1
let g:LatexBox_Folding = 1
let g:LatexBox_fold_text = 1
let g:LatexBox_fold_toc = 1
let g:LatexBox_fold_toc_levels = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType java let b:codefmt_formatter = 'clang-format'
command! Bclose call <SID>BufcloseCloseIt()

function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ag '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
