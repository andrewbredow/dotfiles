" Disable rubocop
let g:neomake_ruby_enabled_makers = ['mri']
let g:neomake_elixir_enabled_makers = ['elixir', 'credo']

" Run whenever a file is written
autocmd! BufWritePost * Neomake
