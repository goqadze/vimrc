filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
"Plugin 'file:///Users/agoqa/.vim/bundle/vim-peepopen'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'tpope/vim-surround'
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'ervandew/supertab'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'
Plugin 'SirVer/ultisnips'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'posva/vim-vue'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'terryma/vim-multiple-cursors'

"-------------------=== Languages support ===-------------------
Plugin 'tpope/vim-commentary'               " Comment stuff out
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}  " Sparkup(XML/jinja/htlm-django/etc.) support
Plugin 'Valloric/YouCompleteMe'             " Autocomplete plugin

"-------------------=== Python  ===-----------------------------
 Plugin 'klen/python-mode'                   " Python mode (docs, refactor, lints...)
 Plugin 'scrooloose/syntastic'               " Syntax checking plugin for Vim


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
