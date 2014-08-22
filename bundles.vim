set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'YankRing.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'
Bundle 'greplace.vim'
Bundle 'astrails/vim-powerline'
"Bundle 'Lokaltog/powerline'
Bundle 'Indent-Guides'
Bundle 'utl.vim'
Bundle 'hsitz/VimOrganizer'
Bundle 'sjl/gundo.vim'
Bundle 'sjl/splice.vim'

" Ruby/Rails
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rake'

" color themes
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-vividchalk'

" syntax support
Bundle 'vim-ruby/vim-ruby'
Bundle 'JSON.vim'
Bundle 'tpope/vim-haml'

" markdown
Bundle 'plasticboy/vim-markdown'
Bundle 'godlygeek/tabular'

" misc
Bundle 'tpope/vim-repeat'
Bundle 'vitaly/vim-gitignore'
"Bundle 'scrooloose/vim-space'
Bundle 'rking/ag.vim'

" tmux
Bundle 'tsaleh/vim-tmux'
Bundle 'benmills/vimux'

" completion
Bundle 'Valloric/YouCompleteMe'

" go
Bundle 'fatih/vim-go'
Bundle 'SirVer/ultisnips'
Bundle 'majutsushi/tagbar'

" gist
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
