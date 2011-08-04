"
"  VIM CONFIGURATION FILE
"
"  Jostein B. Eliassen
"


set nocompatible      " Vi iMproved
filetype off          " for vundle

" vundle bundles:
set rtp+=~/.vim/bundle/vundle/ 
call vundle#rc()

" libraries
Bundle 'gmarik/vundle'
Bundle 'vim-scripts/L9'

" language support
Bundle "plasticboy/vim-markdown"
Bundle "robgleeson/hammer.vim"

" integration
Bundle "csexton/jekyll.vim"
Bundle "tpope/vim-fugitive"
Bundle "Gist.vim"

" navigation
Bundle "scrooloose/nerdtree"
Bundle "taglist.vim"
Bundle "majutsushi/tagbar"
Bundle "vim-scripts/FuzzyFinder"
"Bundle "fholgado/minibufexpl.vim"

" useful
Bundle "vim-scripts/Conque-Shell"
Bundle "vim-scripts/Align"
Bundle "vim-scripts/AnsiEsc.vim"
Bundle "vim-scripts/vimwiki"
Bundle "msanders/snipmate.vim"
Bundle "flazz/vim-colorschemes"
Bundle "ervandew/screen"
Bundle "vim-scripts/quickfonts.vim"

" vim-slime"
Bundle "jpalardy/vim-slime"

" solarized color theme (http://ethanschoonover.com/solarized)
Bundle "altercation/vim-colors-solarized"

" Solarized settings
let g:solarized_termcolors=256
let g:solarized_termtrans=1

filetype plugin indent on " after vundle

" APPEARANCE
syntax on
set background=dark
colorscheme solarized
" color jellybeans                    " syntax highlighting

" uncomment in case of nazi takeover:
"highlight RedundantWhitespace ctermbg=red guibg=red
"match RedundantWhitespace /\s\+$\| \+\ze\t/

set ruler		                    " always show cursor position
set showmode		                " display curent mode
set showcmd		                    " display incomplete commands
set nu			                    " show line numbers


" DEFAULT TAB STOPS & INDENTING
set tabstop=4		                " tab stops
set softtabstop=2
set shiftwidth=2	                " number of spaces to use for each step of (auto)indent
set shiftround                      " Round indents to multiples of shiftwidth
set autoindent
set smartindent
set expandtab
set smarttab


" ERGONOMICS
set backspace=indent,eol,start      " liberal backspacing in insert mode
set showmatch		                " show matching brackets when hovering

set history=50
set smartcase
set ttyfast		                    " smoother output, they claim


" SEARCH
set ignorecase
set incsearch
set hlsearch


" MAPPINGS
map <F1> :FufFile<CR>
map <F2> :FufBuffer<CR>
map <F3> :FufDir<CR>
map <F4> :TlistOpen<CR>

map <F5> :NERDTreeToggle<CR>
map <F6> :ConqueTerm<Space>
map <F7> :set fileencoding=
map <F8> :set filetype=

"map <F9> 
map <F12> :Gist 

map <C-Space> :!

map + :QuickFontBigger<CR>
map - :QuickFontSmaller<CR>

inoremap "" ""<Left>
inoremap () ()<Left>
inoremap [] []<Left>
inoremap {} {}<Left>
inoremap /* /*<Space><Space>*/<Left><Left><Left>


" Conque term

let g:ConqueTerm_InsertOnEnter = 0 " Go straight to insert mode
let g:ConqueTerm_CWInsert = 0      " Allow C-w in insert mode
let g:ConqueTerm_ReadUnfocused = 1 " Read while unfocused too
let g:ConqueTerm_CloseOnEnd = 0



" TECHNICAL
set mouse=a
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8



" TOOL CONFIGURATION

source ~/.vim/functions.vim

" TOhtml stuff
let g:html_use_css = 1
let g:html_number_lines = 0
let g:html_ignore_folding = 1
let g:html_use_encoding = "utf8"
let g:use_xhtml = 1

let g:gist_clip_command = 'xclip -selection clipboard'

" rotate between split windows with ctrl-tab
"map <C-Tab> <C-W><C-W>

" rotate between buffers in current window
"map <S-Left> :bprevious<CR>
"map <S-Right> :bnext<CR>

" highlights interpolated variables in sql strings and does sql-syntax highlighting. yay
autocmd FileType php let php_sql_query=1

" does exactly that. highlights html inside of php strings
autocmd FileType php let php_htmlInStrings=1

" discourages use oh short tags. c'mon its deprecated remember
autocmd FileType php let php_noShortTags=1

" automagically folds functions & methods. this is getting IDE-like isn't it?
autocmd FileType php let php_folding=1

set clipboard=unnamed
