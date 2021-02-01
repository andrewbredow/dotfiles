" Disable rubocop
let g:neomake_ruby_enabled_makers = ['mri']
let g:neomake_elixir_enabled_makers = ['elixir', 'credo']
let g:neomake_scss_enabled_makers=["sasslint"]
let g:neomake_coffee_enabled_makers=["coffeelint"]
let g:neomake_javascript_enabled_makers=["eslint"]
let g:neomake_jsx_enabled_makers = ["eslint"]
let g:neomake_html_enabled_makers = []

" Allow jsx in normal js files
let g:jsx_ext_required = 0

" Run whenever a file is written
autocmd! BufWritePost * Neomake
