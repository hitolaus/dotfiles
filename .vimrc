set background=dark

" Color theme
highlight Normal ctermfg=grey ctermbg=235

set encoding=utf8

" Set to auto read when a file is changed from the outside
set autoread

" Syntax highlighting
syntax on

" Highlight current line
set cursorline
highlight CursorLine  ctermbg=black

" Show matching brackets, etc.
set showmatch
set hlsearch
set incsearch

" Show line numbers
set nu
highlight LineNr ctermfg=239 ctermbg=233

" Show extra information in the bottom
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)

" Indention
set autoindent
set expandtab " Tabs are spaces, not tabs
set shiftwidth=4
set softtabstop=4
set tabstop=4

" No sound on errors
set noerrorbells
set novisualbell

"hi Cursor ctermfg=160 ctermbg=160
"hi CursorIM	ctermfg=160
"hi Directory	
"hi DiffAdd		
"hi DiffChange	
"hi DiffDelete	
"hi DiffText	
"hi ErrorMsg	
"hi VertSplit	
"hi Folded		
"hi FoldColumn	
"hi IncSearch	
"hi ModeMsg		
"hi MoreMsg		
"hi NonText		
"hi Question	
"hi Search		
"hi SpecialKey	
"hi StatusLine	ctermfg=160 ctermbg=160
"hi StatusLineNC	
"hi Title		
"hi Visual		
"hi VisualNOS	
"hi WarningMsg	
"hi WildMenu	
"hi Menu		
"hi Scrollbar	
"hi Tooltip		

" syntax highlighting groups
hi Comment ctermfg=203
hi Constant	ctermfg=140
hi Identifier ctermfg=254
hi Statement ctermfg=116
hi PreProc	ctermfg=196
hi Type ctermfg=22
hi Special ctermfg=196  " For example \n
"hi Underlined	
"hi Ignore		
"hi Error		
hi Todo ctermfg=196