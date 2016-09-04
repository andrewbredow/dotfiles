"set nocompatible
"set rtp+=~/.vim/bundle/vundle
"filetype off

call plug#begin('~/.vim/plugged')

"Colors
Plug 'chriskempson/base16-vim'
Plug 'daviesjamie/vim-base16-lightline'

" Custom Syntaxes
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-markdown'
Plug 'elixir-lang/vim-elixir'
Plug 'pangloss/vim-javascript'
Plug 'vim-ruby/vim-ruby'
Plug 'slim-template/vim-slim'
Plug 'othree/html5.vim'

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
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'reedes/vim-pencil', { 'on': 'Goyo' }

" ICE BOX - Maybe get rid of these
" Plug 'tpope/vim-abolish'
" Plug 'tpope/vim-cucumber'

call plug#end()
"filetype plugin indent on

