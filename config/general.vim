set autochdir
set nocompatible
set showcmd
set number
set breakindent
set showmode
set gcr=a:blinkon0
set keymodel-=stopsel
set autoread
set expandtab
set linespace=2
set tw=500
set lazyredraw
set mat=2
set t_vb=
set tm=500
set wildmenu
set wildmode=list:longest,full
set mps+=<:>
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L
set magic
set hid
set relativenumber
set mouse=nv
set modeline
set report=0
set errorbells
set visualbell
set hidden
set fileformats=unix,dos,mac
set path=.,**
set virtualedit=block
set synmaxcol=1000
set formatoptions+=1
set formatoptions-=t

if has('patch-7.3.541')
	set formatoptions+=j
endif

if has('vim_starting')
	set encoding=utf-8
	scriptencoding utf-8
	set fileencoding=utf-8
	set fileencodings=utf-8
endif

set viewoptions-=options
set viewoptions+=slash,unix
set sessionoptions-=blank
set sessionoptions-=options
set sessionoptions-=globals
set sessionoptions-=folds
set sessionoptions-=help
set sessionoptions-=buffers
set sessionoptions+=tabpages

if has('mac')
	let g:clipboard = {
		\   'name': 'macOS-clipboard',
		\   'copy': {
		\      '+': 'pbcopy',
		\      '*': 'pbcopy',
		\    },
		\   'paste': {
		\      '+': 'pbpaste',
		\      '*': 'pbpaste',
		\   },
		\   'cache_enabled': 0,
		\ }
endif

if has('clipboard')
	set clipboard& clipboard+=unnamedplus
endif

set undofile swapfile nobackup
set directory=$VARPATH/swap//,$VARPATH,~/tmp,/var/tmp,/tmp
set undodir=$VARPATH/undo//,$VARPATH,~/tmp,/var/tmp,/tmp
set backupdir=$VARPATH/backup/,$VARPATH,~/tmp,/var/tmp,/tmp
set viewdir=$VARPATH/view/
set nospell spellfile=$VIMPATH/spell/en.utf-8.add

set history=2000
if has('nvim')
	set shada='300,<50,@100,s10,h
else
	set viminfo='300,<10,@50,h,n$VARPATH/viminfo
endif

set textwidth=80
set noexpandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set autoindent
set smartindent
set shiftround
set timeout ttimeout
set timeoutlen=750
set updatetime=1000
set ttimeoutlen=10
set ignorecase
set smartcase
set infercase
set incsearch
set hlsearch
set wrapscan
set showmatch
set matchpairs+=<:>
set matchtime=1
set cpoptions-=m
set wrap
set linebreak
set breakat=\ \	;:,!?
set nostartofline
set whichwrap+=h,l,<,>,[,],~
set splitbelow splitright
set switchbuf=useopen,usetab
set switchbuf+=vsplit
set backspace=indent,eol,start
set diffopt=filler,iwhite
set showfulltag
set complete=.
set completeopt=menuone
set completeopt+=noselect

if has('patch-7.4.775')
	set completeopt+=noinsert
endif

if has('patch-8.1.0360')
	set diffopt+=internal,algorithm:patience
endif

if exists('+inccommand')
	set inccommand=nosplit
endif

set shortmess=aoOTI
set list
set showtabline=0
set winwidth=30
set winminwidth=10
set winheight=1
set pumheight=15
set helpheight=12
set previewheight=12
set cmdheight=1
set cmdwinheight=5
set noequalalways
set laststatus=2
set display=lastline

if has('patch-7.4.314')
	set shortmess+=c
endif

if has('patch-7.4.1570')
	set shortmess+=F
endif

if has('conceal') && v:version >= 703
	set conceallevel=2 concealcursor=niv
endif

autocmd MyAutoCmd TextChangedI,TextChanged *
	\ if &l:foldenable && &l:foldmethod !=# 'manual' |
	\   let b:foldmethod_save = &l:foldmethod |
	\   let &l:foldmethod = 'manual' |
	\ endif

autocmd MyAutoCmd BufWritePost *
	\ if &l:foldmethod ==# 'manual' && exists('b:foldmethod_save') |
	\   let &l:foldmethod = b:foldmethod_save |
	\   execute 'normal! zx' |
	\ endif

if has('folding')
	set foldenable
	set foldmethod=syntax
	set foldlevelstart=99
	set foldtext=FoldText()
endif

function! FoldText()
	let fs = v:foldstart
	while getline(fs) =~? '^\s*$' | let fs = nextnonblank(fs + 1)
	endwhile
	if fs > v:foldend
		let line = getline(v:foldstart)
	else
		let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
	endif

	let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
	let foldSize = 1 + v:foldend - v:foldstart
	let foldSizeStr = ' ' . foldSize . ' lines '
	let foldLevelStr = repeat('+--', v:foldlevel)
	let lineCount = line('$')
	let foldPercentage = printf('[%.1f', (foldSize*1.0)/lineCount*100) . '%] '
	let expansionString = repeat('.', w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
	return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endfunction
