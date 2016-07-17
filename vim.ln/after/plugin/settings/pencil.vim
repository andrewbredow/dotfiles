" Only let pencil handle wrapping if Goyo is running
function! s:conditional_pencil()
  if exists('#goyo')
    call pencil#init({'wrap': 'soft'})
  endif
endfunction

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call <sid>conditional_pencil()
  autocmd FileType text         call <sid>conditional_pencil()
augroup END
