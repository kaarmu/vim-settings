

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_trigger_keyword_length = 2

:lua <<EOF
util = require("lspconfig/util")

require'lspconfig'.clangd.setup({
    on_attach=require'completion'.on_attach
})

require'lspconfig'.pyright.setup({
    root_dir=function(fname) return (
        util.root_pattern(".git", "setup.py", "setup.cfg",
                          "pyproject.toml", "requirements.txt",
                          "Pipfile", "Pipfile.lock")(fname)
        or util.path.dirname(fname)) end ,
    on_attach=require'completion'.on_attach
})
EOF
