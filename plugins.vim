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
"Plugin 'AutoComplPop'
" Taglist
Plugin 'taglist.vim'
" Git integration
Plugin 'tpope/vim-fugitive'
" Syntax Checking on save
Plugin 'scrooloose/syntastic'
" Snippets 4 life
"Plugin 'msanders/snipmate.vim'
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
" Addon for gocode
"Plugin 'nsf/gocode' , {'rtp': 'vim/'}
Plugin 'Blackrush/vim-gocode'
" Supertab for code completion
Plugin 'ervandew/supertab'

" Enhancements
Plugin 'tpope/vim-repeat'
Plugin 'bling/vim-airline'

" Close Tags
Plugin 'docunext/closetag.vim'
" Emmet - Zencoding for html
Plugin 'mattn/emmet-vim'
" dbext for Rails development
Plugin 'vim-scripts/dbext.vim'
" rails spec Plugins
Plugin 'thoughtbot/vim-rspec'
" Sinatra Plugin
Plugin 'hallison/vim-ruby-sinatra'
" matchit
Plugin 'vim-scripts/matchit.zip'
" Jade Highlighter
Plugin 'digitaltoad/vim-jade'
" Support for .editorconfig files
Plugin 'editorconfig/editorconfig-vim'
" Ultisnips
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" YouCompleteMe
"Plugin 'Valloric/YouCompleteMe'
" Tagbar
Plugin 'majutsushi/tagbar'
" Neocomplete, because YCM sucks on Yosemite
Plugin 'Shougo/neocomplete.vim'
" ctags for go
Plugin 'jstemmer/gotags'
" godef fot better global tags
Plugin 'dgryski/vim-godef'
" Colors in CSS
"Plugin 'css_color'
"Plugin 'skammer/vim-css-color'
Plugin 'ap/vim-css-color'
" Integrate Dash 
Plugin 'rizzatti/dash.vim'
" Wow, even nodejs support. I smeel hipster..
Plugin 'moll/vim-node'
" And general JS support
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ternjs/tern_for_vim'
" More stuff
Plugin 'godlygeek/csapprox'
" Gitv - Gitk for vim!
Plugin 'gregsexton/gitv'
" More git stuff - git in the gutter
Plugin 'airblade/vim-gitgutter'
" Bufexplorer
Plugin 'corntrace/bufexplorer'
" Support for Rust 
Plugin 'rust-lang/rust.vim'
" Ginkgo support
Plugin 'gevans/vim-ginkgo'
" Go Doctor
Plugin 'godoctor/godoctor.vim'
" Asciidoc 
Plugin 'asciidoc/vim-asciidoc'
" Bats support 
Plugin 'markcornick/vim-bats.git'
" All of your Plugins must be added before the following line
Plugin 'Konfekt/FastFold'
call vundle#end()            " required
