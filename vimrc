" Mother of all settings
set nocompatible              " be iMproved, required
" Exclude Clipboard for faster startup
set clipboard=exclude:.*
" ================ Vundle Plugins ===========================
 source ~/.vim/plugins.vim
" ================ Settings ==============================
" Basics making vim feel like a real editor
filetype plugin indent on
syntax on
set background=light
colorscheme vividchalk
highlight Search cterm=None ctermfg=black ctermbg=red
set cursorline
set shortmess=Ilmnrx

" Allow (secure) exrc files
set exrc
set secure

" No empty line at the end 
set noeol
" Allow editing of binary files
set binary 

if has('multi_byte')
  scriptencoding utf-8
  set encoding=utf-8
end

" Display settings
set number		" I want to see line numbers
set numberwidth=3	" Only 3 chars wide
set textwidth=0		" No wrapping per default
set wrap		" Wrapping per default
set showcmd		" Show command in cmdline
set showmatch		" Show matching brackets, needs more finetuning? (matchtime)
set ruler		" Show line and column
set wildmenu		" Activate TAB completion
set wildmode=longest:full,full	" wildmenu settings
set visualbell		" Visual bell as I rarely need the beep
set laststatus=2	" Always show statusline at least 2 rows
set listchars=tab:▷⋅,trail:·,eol:$	" Display those special chars, may need some tweaking
set nolist      " I dont need list 

" Spell Errors
hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black

" Misc

" Ignore these files when tab completion is active
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set shell=/bin/sh	" I use zsh as my login shell, but need to set this to sh to work with rvm
set autowriteall	" Make sure that all files are written once I switch with :next or :make
set hidden		" Enable multiple modified butters
set history=1000
set autoread		" Autmatically re-read file which changed on disk and has no changes in vim
set backspace=indent,eol,start		" Make backspace work properly in insert mode
set completeopt=menuone,preview		" Display completion menu even for only one result
let bash_is_sh=1	" Syntax shell files as bash scripts
set cinoptions=:0,(s,u0,U1,g0,t0	" Indentation options for C files
set modelines=5		" Nr of lines to check for vim: directives in file
set autoindent		" Activate auto indenting

set ts=4		" Tab spaces
set sw=4		" Spaces for indent
set et			" Tabs == Spaces

set ttimeoutlen=50 	" fast Esc to normal mode
"if has("mouse")
  "set mouse=a
"endif
"set mousehide		" Hide mouse pointer on insert mode
" Right now I dont need any mouse support
set mouse=

" Searching
set incsearch		" Incremental search
set hlsearch		" Highlight match
set ignorecase		" case ignored
set smartcase		" Detect case and act super smart when searching


" Omnicomplete
set omnifunc=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_class_in_global = 1

" Directory Settings
call system('mkdir -vp ~/.backup/undo/ > /dev/null 2>&1') " Create undo directory
set backupdir=~/.backup,.	" Backup directory
set directory=~/.backup,~/tmp,.	" Swap File, should usually be out of sight
set nobackup				" Disable backup
set noswapfile				" Disable .swp files
set undofile
set undodir=~/.backup/undo/,~/tmp,.	" Where to store undos

" folding
set foldcolumn=0
set foldmethod=indent
set foldlevel=9
set nofoldenable	" I dont need folding by default

" " Extendted '%' mapping for if/then/else/end .. 
" runtime macros/matchit.vim

let mapleader = ","
let maplocalleader = "\\"

" ================== Shortcuts ============================

nnoremap <leader>A :Ack!
" This one is handy: In case I forgot sudo before editing..
noremap <leader>ww :w !sudo tee % > /dev/null<CR>
" Switch Buffers with tab and shift-tab
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>


" #================ Plugin Settings =======================
source ~/.vim/plugin_settings.vim
" ===================== Misc ==========================
" Search result ist properly centered

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#z

set tabstop=2
set scrolloff=3

" ==================== Bindings =======================
" make Y consistent with C an D
nnoremap Y y$       

" <leader>e for fast editing
nmap <leader>e :e **/

" This is pure gold: keep selection after indenting
vnoremap < <gv
vnoremap > >gv

" Better navigate of wrapped lines
nnoremap j gj
nnoremap k gk

" Essier increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Remove trailing spaces
noremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" Navigation when split
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Define OpenURL Command
command -bar -nargs=1 OpenURL :!open <args>

" #================  Functions =======================
source ~/.vim/functions.vim
" ===================== Misc ==========================
set smartindent

" ===================== Autocmd  ==========================
" Format html Files when reading and writing
autocmd BufRead,BufWritePre *.html normal gg=G

" ===================== Language specific stuff ==========================
" Make 'go build' the default makeprg for go 
au Filetype go set makeprg=go\ build\ ./...
