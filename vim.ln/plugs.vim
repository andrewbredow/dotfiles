call plug#begin('~/.vim/plugged')

"Colors
Plug 'chriskempson/base16-vim'
Plug 'andrewbredow/vim-base16-lightline'

" Custom Syntaxes
Plug 'elixir-lang/vim-elixir'
Plug 'ElmCast/elm-vim'
Plug 'sheerun/vim-polyglot'

" Basic Editar Customizations
Plug 'AndrewRadev/splitjoin.vim'
Plug 'caigithub/a_indent'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-ragtag' " Tag completion
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'danro/rename.vim'

" Ruby/Rails Stuff
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-bundler'

" Build Tools
Plug 'tpope/vim-dispatch'
Plug 'benekastah/neomake'
Plug 'janko-m/vim-test'

" Searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Tmux Fu
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
"
" Prose tools
Plug 'itspriddle/vim-marked'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'reedes/vim-pencil', { 'on': 'Goyo' }

call plug#end()

