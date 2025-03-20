if exists('$BASE16_THEME')
      \ && (!exists('g:colors_name') || g:colors_name != 'base16-$BASE16_THEME')
    let base16colorspace=256
    colorscheme base16-$BASE16_THEME
endif
if !has('gui_running')
  set t_Co=256
endif
if has("gui_vimr")
  set termguicolors
endif
set title
