set nocompatible
filetype off

set rtp+=$USERPROFILE/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'L9'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'lilydjwg/colorizer'
Plugin 'chrisbra/csv.vim'
Plugin 'Shougo/neocomplete'
Plugin 'tfnico/vim-gradle'
Plugin 'Raimondi/delimitMate'
Plugin 'docunext/closetag.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'unblevable/quick-scope'
Plugin 'reedes/vim-lexical'
Plugin 'mateusbraga/vim-spell-pt-br'
Plugin 'vim-scripts/Align'
Plugin 'dciccale/guizoom.vim'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-shell'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-javascript'
Plugin 'mhinz/vim-startify'

call vundle#end()
syntax on
filetype plugin indent on

if has('gui_running')
   set guifont=Hack:h12:cDEFAULT
   set guioptions-=T
   set guioptions-=e
   set t_Co=256
   set guitablabel=%M\ %t
endif

try
    colorscheme solarized
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
set foldcolumn=1
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
let g:NERDTreeWinPos = "right"

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

let g:airline_theme = 'solarized'

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = 'RO'
let g:airline_symbols.linenr = ''

let g:airline_powerline_fonts = 'fancy'
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#whitespace#enabled = 0

function! AirLineBlaenk()
   function! Modified()
      return &modified ? " +" : ''
   endfunction

   call airline#parts#define_raw('filename', '%<%f')
   call airline#parts#define_function('modified', 'Modified')

   let g:airline_section_b = airline#section#create_left(['filename'])
   let g:airline_section_c = airline#section#create([''])
   let g:airline_section_gutter = airline#section#create(['modified', '%='])
   let g:airline_section_x = airline#section#create_right([''])
   let g:airline_section_y = airline#section#create_right(['%c'])
   let g:airline_section_z = airline#section#create(['branch'])
endfunction

autocmd Vimenter * call AirLineBlaenk()

let g:airline_theme_patch_func = 'AirLineBlaenkTheme'

" 0,1: gfg, gbg; 2,3: tfg, tbg; 4: styles
function! AirLineBlaenkTheme(palette)
   if g:airline_theme == 'solarized'
      let purple = ['#ffffff', '#5f5faf', 255, 13, '']
      let violet = ['#5f5faf', '#aeaed7', 13, 61, '']
      let inv_purple = ['#5f5faf', '#ffffff', 13, 255, '']
      let purple_violet = ['#5f5faf', '#aeaed7', 61, 13, '']
      let a:palette.ctrlp = {
               \ 'CtrlPlight' : purple,
               \ 'CtrlPwhite' : inv_purple,
               \ 'CtrlPdark'  : violet,
               \ 'CtrlParrow1': inv_purple,
               \ 'CtrlParrow2': purple,
               \ 'CtrlParrow3': purple_violet,
               \ }
      let secondary = ['#ffffff', '#657b83', 255, 240, '']
      let magenta = ['#ffffff', '#d33682', 255, 125, '']
      let blue = ['#ffffff', '#268bd2', 255, 33, '']
      let green = ['#ffffff', '#859900', 255, 64, '']
      let red = ['#ffffff', '#dc322f', 255, 160, '']
      let orange = ['#ffffff', '#cb4b16', 255, 166, '']
      let modes = {
               \ 'normal': blue,
               \ 'insert': green,
               \ 'replace': magenta,
               \ 'visual': orange
               \}

      let a:palette.replace = copy(a:palette.insert)
      let a:palette.replace_modified = a:palette.insert_modified

      for key in ['insert', 'visual', 'normal']
         " no red on modified
         let a:palette[key . '_modified'].airline_c[0] = '#657b83'
         let a:palette[key . '_modified'].airline_c[2] = 11

         for section in ['a', 'b', 'y', 'z']
            let airline_section = 'airline_' . section

            if has_key(a:palette[key], airline_section)
               " white foreground for most components; better contrast imo
               let a:palette[key][airline_section][0] = '#ffffff'
               let a:palette[key][airline_section][2] = 255
            endif
         endfor
      endfor

      for key in keys(modes)
         let a:palette[key].airline_a = modes[key]
         let a:palette[key].airline_z = modes[key]
         "let a:palette[key . '_modified'].airline_b = ['#002b36', '#93a1a1', 234, 245]
         let a:palette[key].airline_b = secondary
         let a:palette[key].airline_y = secondary
      endfor
   endif
endfunction

let g:airline#extensions#default#section_truncate_width = {
         \ 'x': 60,
         \ 'y': 60
         \ }

let g:airline_mode_map = {
         \ '__' : '-',
         \ 'n'  : 'N',
         \ 'i'  : 'I',
         \ 'R'  : 'R',
         \ 'v'  : 'V',
         \ 'V'  : 'V-L',
         \ 'c'  : 'C',
         \ '' : 'V-B',
         \ 's'  : 'S',
         \ 'S'  : 'S-L',
         \ '' : 'S-B',
         \ }

let g:javascript_enable_domhtmlcss = 1
let g:vimtex_enabled = 1
let g:LatexBox_Folding = 1
let g:LatexBox_fold_text = 1
let g:LatexBox_fold_toc = 1
let g:LatexBox_fold_toc_levels = 1

func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite * :call DeleteTrailingWS()
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

iab eh é
iab vc você
iab voce você
iab vcs vocês
iab voces vocês
iab pq por que
iab kd cadê
iab nao não
iab adimissão admissão
iab adimitir admitir
iab adivogado advogado
iab aer era
iab aida ainda
iab algmu algum
iab ams mas
iab an na
iab angulo ângulo
iab apos após
iab apra para
iab aqeule aquele
iab aqiulo aquilo
iab arcoiris arco-íris
iab ate até
iab asim assim
iab aue que
iab equ que
iab cafe café
iab entao então
iab ha há
iab ja já
iab cabeca cabeça
iab preguica preguiça
iab acao ação
iab acucar açúcar
iab danca dança
iab endereco endereço
iab excecao exceção
iab execao exceção
iab eleicao eleição
iab justica justiça
iab descricao descrição
iab execucao execução
iab diferenca diferença
iab spoiller spoiler
iab secao seção
iab realemente realmente
iab realemnte realmente
iab jxr Joel Xavier Rocha
iab @@ joelxr@gmail.com
iab hj hoje
iab blza beleza
iab bl beleza
