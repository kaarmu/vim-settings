" VIMRC FOR NEOVIM, kaarmu
" ==================================================================
" TODO                                                          {{{1
" ====
"   - plugins
"       - vimspector
"   - move aroud stuff/organizing
"       - keybindings
"
" Installed Plugins                                             {{{1
" Plugins                                                       {{{2
call plug#begin($VIMPLUGGED)

" *-- Appearance
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

" *-- Nice to have
Plug '9mm/vim-closer'
Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-signify'

" *-- Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" *-- LSP
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'

call plug#end()

" Self-made scripts                                             {{{2
" source $VIM/assets/vimFunctions.vim

" Appearance                                                    {{{1
syntax on           " show syntax
colorscheme gruvbox
set background=dark

" Auto groups                                                   {{{1

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup KAARMU
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
    autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END

" LSP settings                                                  {{{1
set completeopt=menuone,noinsert,noselect

nnoremap <leader>gd :lua vim.lsp.bufdefinition()<CR>
nnoremap <leader>gi :lua vim.lsp.implementation()<CR>
nnoremap <leader>vs :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vd :lua vim.lsp.util.show_line_diagnostics()<CR>

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua << EOF
require'lspconfig'.clangd.setup{ on_attach=require'completion'.on_attach }
require'lspconfig'.pyright.setup{ on_attach=require'completion'.on_attach }
EOF

" }}}1

source $VIM/rc/sets.vim
source $VIM/rc/keybind.vim

" ==================================================================
" vim: foldmethod=marker foldlevel=0 foldtext=FoldText_vim()
