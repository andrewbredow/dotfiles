" Open FZF in the current buffer
let g:fzf_layout = { 'window': 'enew' }

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let $FZF_CTRL_R_OPTS="--preview-window right:30% --preview 'echo {}'"
" let g:fzf_files_options =
"   \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'
  " \ '--preview-windew right:30% --preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'
