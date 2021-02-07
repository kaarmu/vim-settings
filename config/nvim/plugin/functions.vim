" FUNCTIONS FOR VIM FILES, kaarmu
" ==================================================================
" FoldText_vim                                                  {{{1
    " Sources:
    "   https://jdhao.github.io/2019/08/16/nvim_config_folding/
    function! FoldText_vim()
        let line = getline(v:foldstart)
        let fold_line_num = v:foldend - v:foldstart
        let prefix = repeat('+', v:foldlevel) . repeat('-', 4 - v:foldlevel) . '>'
        let line_count = repeat(' ', 3 - len(fold_line_num)) . fold_line_num . 'L|'
        let fold_title = repeat('  ', v:foldlevel - 1) . matchstr(line, '"\s*\zs\(\S\+\s\)\+\ze\s*{{{')
        return '" ' . prefix . ' ' . line_count . ' ' . fold_title 
    endfunction

" }}}1
" ==================================================================
" vim: foldmethod=marker foldlevel=0 foldtext=FoldText_vim()
