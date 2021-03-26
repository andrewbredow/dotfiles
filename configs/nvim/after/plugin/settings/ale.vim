let g:ale_linters = {
\   'javascript': ['standard'],
\   'ruby': ['standardrb', 'ruby']
\}

let g:ale_fixers = {
\   'javascript': ['standard'],
\   'ruby': ['standardrb']
\}

let g:ale_fix_on_save = 1

let g:ale_ruby_standardrb_executable = 'bundle'
