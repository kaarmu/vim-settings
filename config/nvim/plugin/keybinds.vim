" NVIM/RC/KEYBIND, kaarmu
" ==================================================================
" Vim                                                           {{{1
let mapleader=";"

inoremap <silent> <leader><leader> <Esc>
vnoremap <silent> <leader><leader> <Esc>
cnoremap <silent> <leader><leader> <Esc>
tnoremap <silent> <leader><leader> <C-\><C-n>

        " edit/source configuration
nnoremap <silent> <leader>ec :e $MYVIMRC<CR>
nnoremap <silent> <leader>sc :source $MYVIMRC<CR>

        " Toggle ---
nnoremap <silent> <leader>Tn :set rnu!<CR>:set nu!<CR>
nnoremap <silent> <leader>Tc :set colorcolumn!<CR>
nnoremap <silent> <leader>Tw :set wrap!<CR>
nnoremap <silent> <leader>Tl :set cursorline!<CR>

        " search abort
nnoremap <silent> <leader>sa :nohlsearch<CR>

" Move                                                          {{{1
nnoremap H ^
nnoremap J <cmd>+15<CR>
nnoremap K <cmd>-15<CR>
nnoremap L $

nnoremap <A-h> <cmd>wincmd h<CR>
nnoremap <A-j> <cmd>wincmd j<CR>
nnoremap <A-k> <cmd>wincmd k<CR>
nnoremap <A-l> <cmd>wincmd l<CR>
nnoremap <A-.> <cmd>tabnext<CR>
nnoremap <A-,> <cmd>tabprevious<CR>


inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-e> <C-o>e<C-o>l
inoremap <C-b> <C-o>b

" inoremap <C-H> <C-o>^
" inoremap <C-J> <cmd>+15<CR>
" inoremap <C-K> <cmd>-15<CR>
" inoremap <C-L> <C-o>$

inoremap <A-h> <Esc><cmd>wincmd h<CR>
inoremap <A-j> <Esc><cmd>wincmd j<CR>
inoremap <A-k> <Esc><cmd>wincmd k<CR>
inoremap <A-l> <Esc><cmd>wincmd l<CR>
inoremap <A-.> <Esc><cmd>tabnext<CR>
inoremap <A-,> <Esc><cmd>tabprevious<CR>


vnoremap H ^
vnoremap J <cmd>+15<CR>
vnoremap K <cmd>-15<CR>
vnoremap L $h

vnoremap <A-h> <cmd>wincmd h<CR>
vnoremap <A-j> <cmd>wincmd j<CR>
vnoremap <A-k> <cmd>wincmd k<CR>
vnoremap <A-l> <cmd>wincmd l<CR>
vnoremap <A-.> <cmd>tabnext<CR>
vnoremap <A-,> <cmd>tabprevious<CR>

onoremap H ^
onoremap L $


tnoremap <A-h> <C-\><C-n><cmd>wincmd h<CR>
tnoremap <A-j> <C-\><C-n><cmd>wincmd j<CR>
tnoremap <A-k> <C-\><C-n><cmd>wincmd k<CR>
tnoremap <A-l> <C-\><C-n><cmd>wincmd l<CR>
tnoremap <A-.> <C-\><C-n><cmd>tabnext<CR>
tnoremap <A-,> <C-\><C-n><cmd>tabprevious<CR>

" Edit                                                          {{{1

" Windows (splits)                                              {{{1
        " (create) window right/left/down/up
nnoremap <silent> <leader>wr <cmd>bel vnew<CR>
nnoremap <silent> <leader>wl <cmd>abo vnew<CR>
nnoremap <silent> <leader>wd <cmd>bel new<CR>
nnoremap <silent> <leader>wu <cmd>abo new<CR>
        " window quit
nnoremap <leader>wq <cmd>confirm q<CR>

" Tabs                                                          {{{1
        " (create) tab right/left
nnoremap <silent> <leader>t. <cmd>.tabnew<CR>
nnoremap <silent> <leader>t, <cmd>-tabnew<CR>
        " tab help/window/terminal/quit
nnoremap <silent> <leader>tw <cmd>tab split<CR>
nnoremap <silent> <leader>tt <cmd>tab terminal<CR>
nnoremap <leader>tq <cmd>confirm tabclose<CR>

" Terminal                                                      {{{1
        " terminal right/left/down/up
nnoremap <silent> <leader>tr <cmd>bel vs term://zsh<CR>
nnoremap <silent> <leader>tl <cmd>abo vs term://zsh<CR>
nnoremap <silent> <leader>td <cmd>bel sp term://zsh<CR>
nnoremap <silent> <leader>tu <cmd>abo sp term://zsh<CR>

" Find (files) & Explorer                                       {{{1
        " explorer
nnoremap <silent> <leader>ep :Explore<CR>
        " find files/grep
nnoremap <silent> <leader>ff <cmd>Telescope find_files<CR>
nnoremap <silent> <leader>fg <cmd>Telescope live_grep<CR>

" Fold                                                          {{{1
        " fold this
nnoremap <silent> <leader>ft za
nnoremap <silent> <leader>fT zA
        " fold all
nnoremap <silent> <leader>fa zM
        " fold none
nnoremap <silent> <leader>fn zR

" Goto                                                          {{{1
" View                                                          {{{1
" Code                                                          {{{1
        " code definition
nnoremap <silent> <leader>cd :lua vim.lsp.buf.definition()<CR>
        " code Declaration
nnoremap <silent> <leader>cD :lua vim.lsp.buf.declaration()<CR>
        " code code
nnoremap <silent> <leader>cc :lua vim.lsp.buf.hover()<CR>
        " code references
nnoremap <silent> <leader>cr :lua vim.lsp.buf.references()<CR>
        " code (signature) help
nnoremap <silent> <leader>ch :lua vim.lsp.buf.signature_help()<CR>
        " code Rename
nnoremap <silent> <leader>cR :lua vim.lsp.buf.rename()<CR>
        " code formatting
nnoremap <silent> <leader>cf :lua vim.lsp.buf.formatting()<CR>
        " code show (diagnostics)
nnoremap <silent> <leader>cs :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
        " code list
nnoremap <silent> <leader>cl :lua vim.lsp.diagnostic.loc_list()<CR>

" Complete Menu                                                 {{{1
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> pumvisible() ? (complete_info().selected == -1 ? '<C-y><CR>' : '<C-y>') : '<CR>'


" ==================================================================
" vim: foldmethod=marker foldlevel=0 foldtext=FoldText_vim()
