" This file is loaded from after/plugin/after.vim
" which means it loads AFTER the rest of the plugins

source ~/.vim/bindings.vim

if filereadable(expand("~/.local-after.vim"))
  echo "~/.local-after.vim is deprecated, please move it to ~/.vimrc.after"
  source ~/.local-after.vim
endif

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif


