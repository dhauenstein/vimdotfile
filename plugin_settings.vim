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
let g:go_fmt_autosave = 1
let g:go_auto_type_info = 1
let g:go_fmt_command = 'goimports'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>l <Plug>(go-lint)
au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader><space> <Plug>(go-format)
au FileType go nmap <leader>r <Plug>(go-run)
"au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>T <Plug>(go-test-func)
au FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
au FileType go nmap <leader>I <Plug>(go-install)
au FileType go nmap <leader>v <Plug>(go-vet)
au FileType go nmap gd <Plug>(go-def)
au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)
au FileType go nmap <leader>dt <Plug>(go-def-tab)o
au FileType go nmap <leader>. <Plug>(go-alternate-edit)

"This will add new commands, called :A, :AV, :AS and :AT. Here :A works just
"like :GoAlternate, it replaces the current buffer with the alternate file.
":AV will open a new vertical split with the alternate file. :AS will open the
"alternate file in a new split view and :AT in a new tab. These commands are
"very productive depending on how you use them, so I think it's useful to have
"them. 
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>


" ultisnip
"" Set ultisnips triggers
"let g:UltiSnipsListSnippets = '<c-tab>'
"let g:UltiSnipsExpandTrigger="<tab>"                                            
let g:UltiSnipsJumpForwardTrigger='<c-k>'                                       
let g:UltiSnipsJumpBackwardTrigger='<c-j>'         
"" UltiSnips completion function that tries to expand a snippet. If there's no
"" snippet for expanding, it checks for completion window and if it's
"" shown, selects first element. If there's no completion window it tries to
"" jump to next placeholder. If there's no placeholder it just returns TAB key 
"function! g:UltiSnips_Complete()
    "call UltiSnips_ExpandSnippet()
    "if g:ulti_expand_res == 0
        "if pumvisible()
            "return "\<C-n>"
        "else
            "call UltiSnips_JumpForwards()
            "if g:ulti_jump_forwards_res == 0
               "return "\<TAB>"
            "endif
        "endif
    "endif
    "return ""
"endfunction

" Tagbar for go 

let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" Supertab
let g:SuperTabDefaultCompletionType = "context"

" Dash 
:nmap <silent> <leader>d <Plug>DashSearch

" GOMetalinter
let g:go_metalinter_enabled = ['vet','vetshadow','golint','errcheck','structcheck','deadcode','ineffassign','varcheck']
let go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"

" Ctrl-O to toggle tagbar
nmap <C-O> :TagbarToggle<CR>
" Go Settings 
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
let g:go_auto_sameids = 1
