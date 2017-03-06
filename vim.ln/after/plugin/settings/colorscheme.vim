if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
if has("gui_vimr")
  set termguicolors
endif
set title
