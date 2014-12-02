" #================ Plugin Settings =======================

" NerdTree
" Ctrl-P to Display the file browser tree
nmap <C-P> :NERDTreeTabsToggle<CR>
" ,p to show current file in the tree
nmap <leader>p :NERDTreeFind<CR>

" nerdcommenter
" ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" Get used to real key movements
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
" Remap ctrlp to <leader>,
let g:ctrlp_map = '<leader>,'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_clear_cache_on_exit = 1
" ctrlp leaves stale caches behind if there is another vim process runnin
" which didn't use ctrlp. so we clear all caches on each new vim invocation
cal ctrlp#clra()
let g:ctrlp_max_height = 8

" Ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" Airline
let g:airline_powerline_fonts = 1 
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
" DelimiMate

" Disable for now...
let g:loaded_delimimate = 1

" Rspec 
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
" vim-go
let g:go_auto_type_info = 0
let g:go_fmt_command = "goimports"
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>gv <Plug>(go-doc-vertial)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap gd <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)o

"" ultisnip
""" Set ultisnips triggers
""let g:UltiSnipsListSnippets = "<tab>"
"let g:UltiSnipsExpandTrigger="<c-j>"                                            
"let g:UltiSnipsJumpForwardTrigger="<tab>"                                       
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"          
"" UltiSnips completion function that tries to expand a snippet. If there's no
"" snippet for expanding, it checks for completion window and if it's
"" shown, selects first element. If there's no completion window it tries to
"" jump to next placeholder. If there's no placeholder it just returns TAB key 
""function! g:UltiSnips_Complete()
    ""call UltiSnips_ExpandSnippet()
    ""if g:ulti_expand_res == 0
        ""if pumvisible()
            ""return "\<C-n>"
        ""else
            ""call UltiSnips_JumpForwards()
            ""if g:ulti_jump_forwards_res == 0
               ""return "\<TAB>"
            ""endif
        ""endif
    ""endif
    ""return ""
""endfunction
