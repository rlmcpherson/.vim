" nerdtree
let NERDTreeWinPos = "left"
" Ctrl-P to Display the file browser tree
nmap <C-P> :NERDTreeTabsToggle<CR>
" ,p to show current file in the tree
nmap <leader>p :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let g:nerdtree_tabs_open_on_console_startup=1

" nerdcommenter
" ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" sessionman
nmap <leader>S :SessionList<CR>
nmap <leader>SS :SessionSave<CR>
nmap <leader>SA :SessionSaveAs<CR>

let g:Conque_Read_Timeout = 50 " timeout for waiting for command output.
let g:Conque_TERM = 'xterm'
" ,sh shell window
nmap <Leader>sh :ConqueSplit bash<cr>
" ,r run command
nmap <Leader>R :ConqueSplit

" yankring
let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'
" ,y to show the yankring
nmap <leader>y :YRShow<cr>
" put the yankring_history file in ~/.backup
let g:yankring_history_dir = '~/.backup'


"ctrlp
"let g:ctrlp_map = '<leader><leader>'
"let g:ctrlp_cmd = 'CtrlP'

"nmap <leader>. :CtrlPClearCache<cr>:CtrlP<cr>
"nmap <leader>l :CtrlPLine<cr>
"nmap <leader>b :CtrlPBuff<cr>
"nmap <leader>m :CtrlPBufTag<cr>
"nmap <leader>M :CtrlPBufTagAll<cr>

"let g:ctrlp_clear_cache_on_exit = 1
 "ctrlp leaves stale caches behind if there is another vim process runnin
 "which didn't use ctrlp. so we clear all caches on each new vim invocation
"cal ctrlp#clra()

"let g:ctrlp_max_height = 30

" show on top
"let g:ctrlp_match_window_bottom = 0
"let g:ctrlp_match_window_reversed = 0

" jump to buffer in the same tab if already open
"let g:ctrlp_switch_buffer = 1

" ignore godep
"let g:ctrlp_custom_ignore = { 'dir':  '\v[\/](vendor)$', }

" open multiple files with <c-z> to mark and <c-o> to open. v - opening in
" vertical splits; j - jump to first open buffer; r - open first in current buffer
"let g:ctrlp_open_multiple_files = 'vjr'

"let g:ctrlp_prompt_mappings = {
    "\ 'AcceptSelection("e")': ['<c-v>', '<2-LeftMouse>'],
    "\ 'AcceptSelection("v")': ['<cr>', '<RightMouse>'],
    "\ }


"let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'mixed', 'line']
"" from http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
"let g:ctrlp_use_caching = 1
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
endif


" Fugitive
" ,g for Ggrep
nmap <leader>g :silent Ggrep<space>
let g:fugitive_github_domains = ['https://github.atl.pdrop.net']

" ,f for global git serach for word under the cursor (with highlight)
nmap <leader>f :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>

" same in visual mode
:vmap <leader>f y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ggrep -F "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>

" vim-indentobject
" add Markdown to the list of indentation based languages
let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown"]

" indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 5

" vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)


"rust racer
set hidden
let g:racer_cmd="/Users/rmcpherson/dotvim/bundle/racer"
let $RUST_SRC_PATH="/Users/rmcpherson/dev/rust/rustc-1.0.0/src"


" clang_complete
let g:clang_library_path = "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib"

" git gutter
let g:gitgutter_max_signs = 5000

" vim-go options
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"
let g:go_guru_tags = "servicetest"
let g:syntastic_go_go_test_args = "-tags=servicetest"
let g:syntastic_go_go_build_args = "-tags=servicetest"
"let g:go_list_type = "locationlist"
let g:go_auto_sameids = 0
"let g:go_metalinter_autosave = 1
"let g:go_metalinter_autosave_enabled = ['vet', 'golint']



" go shortcuts
nnoremap <leader>g :GoTestCompile<CR>
nnoremap <leader>t :GoTestFunc<CR>
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

" goalternate shortcuts from
" https://github.com/fatih/vim-go-tutorial#move-between-functio://github.com/fatih/vim-go-tutorial#move-between-functions 
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')



" go-info shortcut
autocmd FileType go nmap <Leader>i <Plug>(go-info)


" syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck', 'go']
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
"let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck'] " go save speedup
" syntastic python
let g:syntastic_python_checkers = ['python', 'flake8']
let g:syntastic_python_flake8_args = "--config $HOME/.flake8"



" godef
let g:godef_split=2 
let g:godef_same_file_in_same_window=1

"gist
let g:gist_post_private = 1
let g:gist_open_browser_after_post = 1
let g:gist_show_privates = 1

"Youcompleteme
let g:ycm_semantic_triggers =  {
            \   'c' : ['->', '.'],
            \   'objc' : ['->', '.'],
            \   'ocaml' : ['.', '#'],
            \   'cpp,objcpp' : ['->', '.', '::'],
            \   'perl' : ['->'],
            \   'php' : ['->', '::'],
            \   'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
            \   'ruby' : ['.', '::'],
            \   'lua' : ['.', ':'],
            \   'erlang' : [':'],
            \ }


"theme, color
silent! colorscheme one 
set background=dark
let g:airline_theme='one'
let g:one_allow_italics = 1 " I love italic for comments

" ale linter 
let g:ale_python_flake8_executable = "/usr/local/bin/flake8"
let g:ale_linters = {'go': ['go lint', 'gofmt', 'go vet', 'go build']}
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_use_ch_sendraw = 1
let g:ale_lint_delay=200
let g:ale_go_gometalinter_options = '--enable=vet --enable=vetshadow'

" ag, using ack.vim
let g:ackprg = 'ag --nogroup --nocolor --column'
" ackvim, don't open first result automatically
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
" ackvim nerdtree compat
let g:ack_mappings = {
              \  'v':  '<C-W><CR><C-W>L<C-W>p<C-W>J<C-W>p',
              \ 'gv': '<C-W><CR><C-W>L<C-W>p<C-W>J' }


" fzf / ripgrep
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
set rtp+=~/.fzf/bin
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
set grepprg=rg\ --vimgrep


nmap ; :Buffers<CR>
nmap <Leader><Leader> :Files<CR>

" python-mode
let g:pymode_rope_autoimport = 0
let g:pymode_rope = 0

" yaml 
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set foldlevelstart=20

let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'
