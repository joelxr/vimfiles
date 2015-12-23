set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#begin()

Plugin 'L9'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'lilydjwg/colorizer'
Plugin 'chrisbra/csv.vim'
Plugin 'Shougo/neocomplete'
Plugin 'SirVer/ultisnips'
Plugin 'tfnico/vim-gradle'
Plugin 'Raimondi/delimitMate'
Plugin 'docunext/closetag.vim'
Plugin 'kevinw/pyflakes-vim'
Plugin 'vim-scripts/SearchComplete'
Plugin 'Chiel92/vim-autoformat'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'reedes/vim-lexical'
Plugin 'mateusbraga/vim-spell-pt-br'
Plugin 'vim-scripts/Align'
Plugin 'dciccale/guizoom.vim'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-shell'
Plugin 'xolox/vim-easytags'

call vundle#end()
syntax on
filetype plugin indent on

if has("gui_running")
   if has("gui_gtk2")
      set guifont=Hack\ 12
   elseif has("gui_photon")
      set guifont=Hack:s12
   elseif has("gui_kde")
      set guifont=Hack/12/-1/5/50/0/0/0/1/0
   else
      set guifont=Hack:h12:cDEFAUL
   endif
endif

colorscheme solarized

noremap <C-Ins> "+gP<CR>
map <F2> :only<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :TagbarOpen<CR>
map <F6> :Autoformat<CR>
nmap <F7> <Plug>Colorizer
nmap <Leader>= :ZoomIn<CR>
nmap <Leader>- :ZoomOut<CR>
nmap <Leader>0 :ZoomReset<CR>
nnoremap <silent> <F9> :NERDTreeFind<CR>
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv
inoremap <C-Return> <CR><CR><C-o>k<Tab>
noremap 0 ^
noremap ^ 0
map <F12> :silent !pdflatex %:p <CR>
nmap 9 $

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
set linebreak
set linespace=3
set ic
set smartcase
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
let g:NERDTreeWinPos = "right"

let g:tagbar_autoclose = 1
let g:tagbar_iconchars = ['▸', '▾']
let g:acp_enableAtStartup = 0

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 5
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_aggregate_errors = 1

let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline#extensions#tabline#buffer_idx_mode = 0
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:javascript_enable_domhtmlcss = 1
let g:vimtex_enabled = 1

let g:LatexBox_Folding = 1
let g:LatexBox_fold_text = 1
let g:LatexBox_fold_toc = 1
let g:LatexBox_fold_toc_levels = 1

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType java setlocal omnifunc=javacomplete#Complete

highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/
