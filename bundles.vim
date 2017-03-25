set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'scrooloose/nerdcommenter'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'YankRing.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'
Bundle 'greplace.vim'
Bundle 'astrails/vim-powerline'
Bundle 'Indent-Guides'
Bundle 'utl.vim'

" text selection
Bundle 'terryma/vim-expand-region' 

" autoclose
"Bundle 'Raimondi/delimitMate'

" Ruby/Rails
"Bundle 'tpope/vim-rails'
"Bundle 'tpope/vim-bundler'
"Bundle 'tpope/vim-rake'

" color themes
Bundle 'mhartington/oceanic-next'
Bundle 'morhetz/gruvbox'

" syntax support
Bundle 'vim-ruby/vim-ruby'
Bundle 'JSON.vim'
Bundle 'tpope/vim-haml'
Bundle 'jcf/vim-latex'
Bundle 'avakhov/vim-yaml'
"Bundle 'stephpy/vim-yaml'
Bundle 'vim-scripts/AnsiEsc.vim'

" markdown
Bundle 'plasticboy/vim-markdown'
Bundle 'godlygeek/tabular'

" misc
Bundle 'tpope/vim-repeat'
Bundle 'vitaly/vim-gitignore'
Bundle 'rking/ag.vim'

" tmux
Bundle 'tsaleh/vim-tmux'
Bundle 'benmills/vimux'
Bundle 'tpope/vim-obsession.git'

" completion
Bundle 'Valloric/YouCompleteMe'

" go
Bundle 'fatih/vim-go'
Bundle 'SirVer/ultisnips'
Bundle 'majutsushi/tagbar'
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'Shougo/neocomplete'

" gist
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

"rust
Bundle 'phildawes/racer'
Bundle 'wting/rust.vim'


" search
Bundle 'dkprice/vim-easygrep'

" c / c++
"Bundle 'vim-scripts/a.vim'
"Bundle 'Rip-Rip/clang_complete'

" proto
Bundle 'uarun/vim-protobuf'

"casing 
Bundle 'tpope/vim-abolish'
