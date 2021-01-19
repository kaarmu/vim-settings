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
nnoremap <A-n> <cmd>tabnext<CR>
nnoremap <A-p> <cmd>tabprevious<CR>


inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" inoremap <C-H> <C-o>^
" inoremap <C-J> <cmd>+15<CR>
" inoremap <C-K> <cmd>-15<CR>
" inoremap <C-L> <C-o>$

inoremap <A-h> <cmd>wincmd h<CR>
inoremap <A-j> <cmd>wincmd j<CR>
inoremap <A-k> <cmd>wincmd k<CR>
inoremap <A-l> <cmd>wincmd l<CR>
inoremap <A-n> <cmd>tabnext<CR>
inoremap <A-p> <cmd>tabprevious<CR>


vnoremap H ^
vnoremap J <cmd>+15<CR>
vnoremap K <cmd>-15<CR>
vnoremap L $

vnoremap <A-h> <cmd>wincmd h<CR>
vnoremap <A-j> <cmd>wincmd j<CR>
vnoremap <A-k> <cmd>wincmd k<CR>
vnoremap <A-l> <cmd>wincmd l<CR>
vnoremap <A-n> <cmd>tabnext<CR>
vnoremap <A-p> <cmd>tabprevious<CR>


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
nnoremap <silent> <leader>t> <cmd>.tabnew<CR>
nnoremap <silent> <leader>t< <cmd>-tabnew<CR>
        " tab help/window/terminal/quit
nnoremap <silent> <leader>th <cmd>tab help<Space>
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
" }}}
" ==================================================================
" vim: foldmethod=marker foldlevel=0 foldtext=FoldText_vim()
