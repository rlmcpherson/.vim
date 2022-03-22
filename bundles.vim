set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'YankRing.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'airblade/vim-gitgutter'
"Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'greplace.vim'
Plugin 'astrails/vim-powerline'
Plugin 'Indent-Guides'
Plugin 'utl.vim'

" text selection
Plugin 'terryma/vim-expand-region' 

" autoclose
"Plugin 'Raimondi/delimitMate'

" color themes
Plugin 'mhartington/oceanic-next'
Plugin 'morhetz/gruvbox'

" syntax support
Plugin 'vim-ruby/vim-ruby'
Plugin 'JSON.vim'
Plugin 'tpope/vim-haml'
Plugin 'jcf/vim-latex'
"Plugin 'avakhov/vim-yaml'
Plugin 'vim-scripts/AnsiEsc.vim'
Plugin 'IN3D/vim-raml'
Plugin 'rdolgushin/groovy.vim'

" markdown
Plugin 'plasticboy/vim-markdown'
Plugin 'godlygeek/tabular'

" misc
Plugin 'tpope/vim-repeat'
Plugin 'rdolgushin/gitignore'
Plugin 'mileszs/ack.vim'

" tmux
Plugin 'tsaleh/vim-tmux'
Plugin 'benmills/vimux'
Plugin 'tpope/vim-obsession.git'

" completion
Plugin 'Valloric/YouCompleteMe'

" go
Plugin 'fatih/vim-go'
Plugin 'SirVer/ultisnips'
Plugin 'majutsushi/tagbar'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'Shougo/neocomplete'

" gist
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

"rust
Plugin 'phildawes/racer'
Plugin 'wting/rust.vim'


" search
Plugin 'dkprice/vim-easygrep'

" c / c++
"Plugin 'vim-scripts/a.vim'
"Plugin 'Rip-Rip/clang_complete'

" proto
Plugin 'uarun/vim-protobuf'

"casing 
Plugin 'tpope/vim-abolish'

"python 
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'pydoc.vim'
"Plugin 'python-mode/python-mode'

" linting
Plugin 'w0rp/ale'

Plugin 'mbbill/undotree'

" fzf
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf' , { 'do': { -> fzf#install() } }


" yaml 
Plugin 'adrienverge/yamllint'
Plugin 'Yggdroot/indentLine'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
