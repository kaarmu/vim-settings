

# Plan

## keybindings

- WINDOW (split)
    ** SEE MOVE **
    - [x] ;wr | window (split) right
    - [o] ;wl | window (split) left
    - [x] ;wd | window (split) down
    - [o] ;wu | window (split) up
    - [ ] ;wq | window quit
    - [ ] ;wt | window (to) tab
- TAB
    ** CREATE AND MOVE **
    - [ ] ;tn | tab next
    - [ ] ;tp | tab previous
    - [ ] ;tq | tab quit
- TERMINAL
    - 2x leader | go to normal mode
    ** CREATE **
    - [ ] ;tr | terminal right
    - [ ] ;tl | terminal left
    - [ ] ;td | terminal down
    - [ ] ;tu | terminal up
    ** SEE MOVE **
- BUFFER
    - [ ] ;br | buffer redraw
- FIND
    - [ ] ;ff | find files
    - [ ] ;fg | find grep
- FOLD
    - [ ] ;fo | fold
    - [ ] ;fa | fold all
- EXPLORER
    - [ ] ;ep | explorer
- MISC
    - [ ] ;Tn | Toggle numbers
    - [ ] ;Tc | Toggle column
- SEARCH
    - [ ] ;sa | search abort ?
- VIM
    - [x] ;sc | source config
    - [x] ;ec | edit config
- GOTO
    - [ ] ;gd | goto definition (lsp)
    - [ ] ;gi | goto implementation (lsp)
- VIEW
    - [ ] ;vs | view signature (lsp)
    - [ ] ;vd | view line diagnostics (lsp)
    - [ ] --- | rename (lsp)
    - [ ] --- | hover (lsp)
    - [ ] --- | code action lsp
- EDIT

    ** NORMAL & INSERT MODE **
    - [ ] ctrl z | undo
    - [ ] ctrl Z | redo

- MOVE : h,j,k,l
    ** NORMAL MODE **
    - [x] small: move around one step
    - [x] capital letters: move to begin of line, end of line, pgup, pgdwn
    - [x] ctrl-shift: move between splits (split)
    ** INSERT MODE **
    - [x] small: editing
    - [x] capital: editing
    - [x] ctrl: move one step, like small in normal mode
    - [x] ctrl-shift: move between splits
    ** VISUAL MODE **
    - [x] J, K: move
    ** TERMINAL **
    - [ ] small: editing
    - [ ] capital: editing
    - [ ] ctrl h,l: move one step left/right
    - [ ] ctrl j,k: move between cmds
    - [ ] ctrl-shift: move between splits
