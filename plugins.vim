" ================ Vundle Plugins ===========================
" First of all: Load plugins with vundle
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" I definitely need nerdtree
Plugin 'scrooloose/nerdtree'
" nerdtree interaction with tabs
Plugin 'jistr/vim-nerdtree-tabs'
" I also NEED Nerdcommenting
Plugin 'scrooloose/nerdcommenter'
" ctrlp is the way to go for fuzzy opening/finding files
Plugin 'kien/ctrlp.vim'
" Popup completion menu (intellisense kinda..)
Plugin 'AutoComplPop'
" Taglist
Plugin 'taglist.vim'
" Git integration
Plugin 'tpope/vim-fugitive'
" Syntax Checking on save
Plugin 'scrooloose/syntastic'
" Snippets 4 life
Plugin 'msanders/snipmate.vim'
" Another must have: surround
Plugin 'tpope/vim-surround'
" Ack for quick Searching
Plugin 'mileszs/ack.vim'
" Global search and replace
Plugin 'greplace.vim'
" Statusline pimp see airline plugin
"Plugin 'astrails/vim-powerline'
" Add endlines automatically
Plugin 'tpope/vim-endwise'
" And closing of quotes, parenthesis, baracktes.. do I need this really?
Plugin 'Raimondi/delimitMate'
" Ruby/Rails stuff
" Mother of all rails Plugins
Plugin 'tpope/vim-rails'
" Same for Bundler
Plugin 'tpope/vim-bundler'
" rake integration
Plugin 'tpope/vim-rake'
" Custom textobject for ruby blocks 
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'kana/vim-textobj-user'
" Toggle ruby blocks style
Plugin 'vim-scripts/blockle.vim'

" Color Schemes
Plugin 'tpope/vim-vividchalk'

" Syntax Plugins
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vitaly/vim-syntastic-coffee'
Plugin 'fatih/vim-go'

" Enhancements
Plugin 'tpope/vim-repeat'
Plugin 'bling/vim-airline'

" Close Tags 
Plugin 'docunext/closetag.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required

