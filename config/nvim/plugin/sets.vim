" NVIM/RC/KEYBIND, kaarmu
" ==================================================================
set showmatch       " Show matching braces
set colorcolumn=80  " Vertical ruler
set nolist          " Do not show any listchars, i.e. tabs or eol:s

set foldenable      " Enable folding
set fdls=10         " Start with all folds folded
set foldnestmax=3   " More than three folds should not be necessary
" Don't highlight folds (should be moved)
highlight Folded ctermbg=None

set noerrorbells    " No warning sounds ofc
set nonu nornu      " No numbering at start
set noswapfile      " Don't have stupid swaps
set nobackup        " Don't need backup either
set undofile        " Default location is XDG_DATA_HOME/nvim/undo
set termguicolors   " Enable 24-bit RGB color in terminal
set signcolumn=yes  " Always show the sign column
highlight SignColumn guibg=None
set updatetime=50   " To make vim snappier (?)
set autoread        " Read automatically from outside changes
set enc=utf-8       " vim display encoding
set fenc=utf-8      " output encoding
set modelineexpr    " allow small vim commands at begin/end of file
set mouse=nvi       " enable mouse support in n-v-i modes

set linebreak       " if wrap is on, the line is only visually wrapped
set showbreak=↪     " insert this character at linebreaks

set splitright      " right is the default direction for vspl
set splitbelow      " below is the default direction for spl

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set scrolloff=4     " The cursor must be at least 4 lines from up/low bound

set backspace=indent,eol,start  " <BS> works on newlines as well

set nohlsearch  " Start without search highlighting
set incsearch   " Search while writing

set completeopt=menuone,noinsert,noselect
set pumheight=10

set exrc
set secure

" vim: foldmethod=marker foldlevel=0 foldtext=FoldText_vim()
