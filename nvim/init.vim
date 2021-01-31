" VIMRC FOR NEOVIM, kaarmu
" ==============================================================================
" TODO                                                                      {{{1
" ====
"   - plugins
"       - vimspector
"   - move aroud stuff/organizing
"       - keybindings
"
" Installed Plugins                                                         {{{1
call plug#begin($VIMPLUGGED)

" *-- Appearance
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

" *-- Nice to have
Plug '9mm/vim-closer'
Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-signify'

" *-- Better folding
Plug 'tmhedberg/SimpylFold'

" *-- Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" *-- LSP
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'

call plug#end()

" Appearance                                                                {{{1
syntax on           " show syntax
colorscheme gruvbox
set background=dark

" Auto groups                                                               {{{1

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup KAARMU
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

" LSP settings                                                              {{{1
set completeopt=menuone,noinsert,noselect

" }}}1

source $VIM/rc/sets.vim
source $VIM/rc/keybinds.vim
source $VIM/rc/lsp.vim

" ==============================================================================
" vim: foldmethod=marker foldlevel=0 foldtext=FoldText_vim()
