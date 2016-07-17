function! s:goyo_enter()
  PencilSoft
endfunction

function! s:goyo_leave()
  PencilOff
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
