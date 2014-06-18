" Do not manage the working directory
let g:ctrlp_working_path_mode = 0

" Show hidden files
let g:ctrlp_show_hidden = 1

" Files and directories to ignore
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v\/(\.git|\.bundle|bin|vendor\/bundle|tmp|public\/system|coverage)$',
    \ 'file': '\v\.(gitkeep|gitignore|jpg|jpeg|gif|png|ico)$'
    \ }

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" ag is fast enough that CtrlP doesn't need to cache
let g:ctrlp_use_caching = 0
