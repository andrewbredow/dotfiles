" basic Mappings
nnoremap ; :
nnoremap j gj
nnoremap k gk

" Map arrow keys to window resize
nmap <left>  <c-w><
nmap <right> <c-w>>
nmap <up>    <c-w>+
nmap <down>  <c-w>-

" enter in normal mode removes highlight except in quickfix window
" nnoremap <cr> :noh<cr>
" autocmd BufReadPost Quickfix nnoremap <buffer> <cr> <cr>

" Remove all trailing whitespace
nnoremap <silent> <leader>kws :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<cr>

" Convert liquid tags to erb
nnoremap <silent> <leader>erb :%s/{{/<%=/ge <bar> %s/}}/%>/ge <bar> %s/{/</ge <bar> %s/}/>/ge <bar> %s/%\ include/%\ render/ge <bar> %s/endif/end/ge <bar> %s/endfor/endif/ge<cr><cr>

""" Fugitive
nmap <leader>gb :Gblame<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gl :Glog<cr>
nmap <leader>gll :Glog --<cr>
nmap <leader>gc :Gcommit<cr>

""" NERDTree
nmap <leader>n :NERDTreeToggle<cr>

""" Commentary
nmap <leader>c gcc<cr>
vmap <leader>c gc<cr>
xmap <leader>c gc<cr>

""" FZF
nmap <leader>ff :FZF<cr>
nmap <leader>fa :Ag<cr>
nmap <leader>fb :Buffers<cr>
nmap <leader>fm :GFiles?<cr>

""" CtrlPModified
map <leader>m :CtrlPModified<cr>

""" Tabular
map <leader>tj  :Tabularize json<cr>
map <leader>t:  :Tabularize first_colon<cr>
map <leader>th  :Tabularize hash_rocket<cr>
map <leader>t=  :Tabularize first_equals<cr>
map <leader>t'  :Tabularize first_single_quote<cr>
map <leader>t"  :Tabularize first_double_quote<cr>
map <leader>t{  :Tabularize first_left_stash<cr>
map <leader>t}  :Tabularize first_right_stash<cr>
map <leader>t\| :Tabularize bar<cr>

""" Ruby 1.9
nnoremap <Leader>: :%s/:\([^ ]*\)\(\s*\)=>/\1:/gc<CR>
nnoremap <Leader>{ :%s/{\([^ ]\)/{ \1/gc<CR>
nnoremap <Leader>} :%s/\([^ ]\)}/\1 }/gc<CR>

""" Don't use the escape key!
inoremap jk <esc>

""" Rails
map <leader>ra :A<cr>
map <leader>rr :R<cr>

""" Vim Test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

""" Neovim terminal mappings
if has("nvim")
  " Allow escape or Ctrl-[ to switch to navigation mode in the terminal
  " :tnoremap <Esc> <C-\><C-n>
  " :tnoremap <C-[> <C-\><C-n>
endif
