set nocompatible
set rtp+=~/.vim/bundle/vundle
filetype off

call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'corntrace/bufexplorer'
Plugin 'caigithub/a_indent'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jasoncodes/ctrlp-modified.vim'
Plugin 'mattn/gist-vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-cucumber'
Plugin 'elixir-lang/vim-elixir'
Plugin 'pangloss/vim-javascript'
Plugin 'airblade/vim-gitgutter'
Plugin 'slim-template/vim-slim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'benmills/vimux'
Plugin 'janko-m/vim-test'

call vundle#end()
filetype plugin indent on

