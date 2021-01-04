" VIMRC FOR NEOVIM, kaarmu
" ==================================================================
" Installed Plugins                                             {{{1
    " Plugins                                                   {{{2
    call plug#begin('~/.vim/plugged')   
    
    " *-- Colorscheme
    Plug 'morhetz/gruvbox'
    
    " *-- Language Server
    Plug 'neovim/nvim-lspconfig'    
    Plug 'nvim-lua/completion-nvim'
    
    call plug#end()
    
    " Self-made scripts                                         {{{2
    source $HOME/.vim/assets/vimFunctions.vim

" Editor                                                        {{{1
    " Reading & writing                                         {{{2
    set autoread                    " read automatically from outside changes
    set encoding=utf-8              " set vim display encoding to utf-h
    set fileencoding=utf-8          " set output encoding to utf-8 
    set backspace=indent,eol,start  " backspace works on newlines as well
    set nowrap                      " do not wrap lines 
    
    " Line wrapping and breaking                                {{{2
    set linebreak   " break line at predefined characters, doesn't change output
    set showbreak=↪ " character to show before the lines that have been soft-wrapped

    " Window splitting                                          {{{2
    set splitright  " set default vertical split to the right

    " Error warnings                                            {{{2
    set noerrorbells    " do no making any warning sounds

    " Autocomplete window                                       {{{2
    set wildmenu    " enable autocomplete window

    " Misc                                                      {{{2
    set modelineexpr    " allow small vim commands at beginning and end of file
    set lazyredraw      " don't redraw screen all the time
    set mouse=nvi       " enable mouse in normal, visual and insert mode

" Appearance                                                    {{{1
    " General                                                   {{{2
        syntax on           " show syntax
        set showmatch       " show matching braces
        "set cursorline      " highlight the line which the cursor is on
        set colorcolumn=80  " vertical ruler
        set nolist          " do not show any listchars, i.e. tabs and eol:s
        set scrolloff=3     " keep atleast 3 lines of margin for the cursor to the end of the screen

    " Line numbering                                            {{{2
        "set number relativenumber   " number the lines relative to current position
        set nonumber
    
    " Color scheme                                              {{{2
        colorscheme gruvbox
        set background=dark

" Spaces & Tabs                                                 {{{1 
    set tabstop=4       " number of visual spaces per TAB
    set softtabstop=4   " number of spaces in tab when editing
    set shiftwidth=4    " number of spaces to use for autoindent
    set expandtab       " expand tab to spaces so that tabs are space
    set autoindent      " auto indent when beginning a new line

" Folding                                                       {{{1
    set foldenable                  " enable folding, to minimize the code
    set foldlevelstart=10           " ???
    set foldnestmax=3               " more than three fold should never really be necessary
    " don't highlight the folds, the fold markers should be enough
    highlight Folded ctermbg=None

" Searching                                                     {{{1
    set hlsearch    " highlight all the searches
    set incsearch   " increment through the searches
    set smartcase   " be 'smart' with case-sensitive searches

" Backups                                                       {{{1
    set noswapfile
    set nobackup
    set undodir=~/.vim/undodir
    set undofile

" Keybindings                                                   {{{1
    " Index                                                     {{{2
        " *-- Movement
        " H | move the cursor to the beginning of the line
        " J | move the cursor down the screen
        " K | move the cursor up the screen
        " L | move the cursor to the end of the line
        " M | move the cursor to the middle of the screen 
        " 
        " *-- Misc
        " ff | fold
        " 
        " *-- Leader shortcuts
        "   Normal mode
        "   ec | open configuration (.vimrc)
        "   sc | source configuration (.vimrc)
        "   oe | open netrw Explore
        "   ss | save session
        "   cs | clear search
        "   tn | toggle numbers
    
    " Movement                                                  {{{2
        nnoremap H ^
        nnoremap J <C-D>
        nnoremap K <C-U>
        nnoremap L $
    
    " Misc                                                      {{{2
        nnoremap ff za
        nnoremap fa zA

    " Leader shortcuts                                          {{{2
        let mapleader=";"
        
        " Insert mode                                           {{{3
            inoremap <leader><leader> <Esc>
        
        " Normal mode                                           {{{3
            nnoremap <silent> <leader>ec :e $MYVIMRC<CR>
            nnoremap <silent> <leader>sc :source $MYVIMRC<CR>
            nnoremap <silent> <leader>oe :Explore
            nnoremap <silent> <leader>ss :mksession!<CR>
            nnoremap <silent> <leader>cs :nohlsearch<CR>
            nnoremap <silent> <leader>tn :set rnu! rnu?<CR>

        " Visual mode                                           {{{3
            vnoremap <leader><leader> <Esc>

" }}}1
" Language Server                                               {{{1

    " Options                                                   {{{2
    " nnoremap <silent>gd    <cmd>lua vim.lsp.buf.declaration()<CR>
    " nnoremap <silent><c-]> <cmd>lua vim.lsp.buf.definition()<CR>
    " nnoremap <silent>K     <cmd>lua vim.lsp.buf.hover()<CR>

    " Setup                                                     {{{2
    lua require('lspconfig').pyls_ms.setup{ on_attach=require('completion').on_attach }

" }}}1
" ==================================================================
" vim: foldmethod=marker foldlevel=0 foldtext=FoldText_vim()
