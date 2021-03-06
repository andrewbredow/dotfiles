let mapleader=" "

set nocompatible
set encoding=utf-8

source ~/.config/nvim/plugs.vim

syntax enable
set ruler

" show a highlight on column 80
" set colorcolumn=80

" no line wraps
set nowrap

" show whitespace(tab,trailing)
set list
set listchars=tab:\ \ 
set listchars+=trail:·
set listchars+=extends:►
set listchars+=precedes:◀

" no error or visual error annoyance
set noerrorbells
set visualbell t_vb=

set history=200                 " Remember last 200 commands
set undolevels=1000             " 1000 undo

" search
" set hlsearch Don't highlight for now to see how it works
set showmatch
set incsearch
set ignorecase
set smartcase

" tabs and indents
set autoindent smartindent
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set copyindent
set preserveindent

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" turn off all backups and swp files
set nobackup
set nowritebackup
set noswapfile
set viminfo=

set laststatus=1

set statusline=%{fugitive#statusline()}         " Git branch
set statusline+=%f                              " tail of the filename
set statusline+=%=                              " left/right separator
set statusline+=%y                              " filetype
set statusline+=%m                              " modified flag
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, " file encoding
set statusline+=%{&ff}]                         " file format
set statusline+=[%c,                            " cursor column
set statusline+=%l/%L]                          " cursor line/total lines

set cmdheight=1             " height of status line
set showcmd

" tab completion of commands
set wildmenu
set wildmode=list:longest

set backspace=2             " backspace over indent, eol, start
set showmatch               " show maching bracket/parens

set foldmethod=indent " fold based on indent
set foldnestmax=10    " deepest fold is 10 levels
set nofoldenable      " don't fold by defaul
set foldlevel=2

" use the system clipboard by default, requires a Vim compiled
" with +clipboard - `brew install vim` is the easiest way
if has('nvim')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" Source .vimrc on save
autocmd! bufwritepost ~/.vimrc  source ~/.vimrc

" Keep 3 lines above and below the cursor
set scrolloff=3
set sidescrolloff=5

" Always open new split panes below and to the right
set splitbelow
set splitright

" Superspeed
set ttyfast

" Always display the status line
set laststatus=2

" Allow mouse support
set mouse=a
if !has('nvim')
  set ttymouse=xterm2
endif

" Allow - to be considered part of a word
set iskeyword+=-
set iskeyword+=$

" Don't save history for netr
let g:netrw_dirhistmax = 0

" Use skinny cursor when in insert mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = '1'

" Rely on lightline for mode
set noshowmode
