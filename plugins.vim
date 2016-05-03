" syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

" delimitMate
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 1

" nerdtree
" Ctrl-P to Display the file browser tree
nmap <C-P> :NERDTreeTabsToggle<CR>
" ,p to show current file in the tree
nmap <leader>p :NERDTreeFind<CR>
let NERDTreeShowHidden=1

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
let g:ctrlp_map = '<leader><leader>'
let g:ctrlp_cmd = 'CtrlP'

nmap <leader>. :CtrlPClearCache<cr>:CtrlP<cr>
nmap <leader>l :CtrlPLine<cr>
nmap <leader>b :CtrlPBuff<cr>
nmap <leader>m :CtrlPBufTag<cr>
nmap <leader>M :CtrlPBufTagAll<cr>

let g:ctrlp_clear_cache_on_exit = 1
" ctrlp leaves stale caches behind if there is another vim process runnin
" which didn't use ctrlp. so we clear all caches on each new vim invocation
cal ctrlp#clra()

let g:ctrlp_max_height = 40

" show on top
"let g:ctrlp_match_window_bottom = 0
"let g:ctrlp_match_window_reversed = 0

" jump to buffer in the same tab if already open
let g:ctrlp_switch_buffer = 1

" ignore godep
let g:ctrlp_custom_ignore = { 'dir':  '\v[\/](Godeps)$', }

" open multiple files with <c-z> to mark and <c-o> to open. v - opening in
" vertical splits; j - jump to first open buffer; r - open first in current buffer
let g:ctrlp_open_multiple_files = 'vjr'

let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'mixed', 'line']
" from http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif


" Fugitive
" ,g for Ggrep
nmap <leader>g :silent Ggrep<space>

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

