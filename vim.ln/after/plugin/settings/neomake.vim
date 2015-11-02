" Disable rubocop
let g:neomake_ruby_enabled_makers = ['mri']

" Run whenever a file is written
autocmd! BufWritePost * Neomake
