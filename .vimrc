set nocompatible                                                        "We want the latest Vim settings/options.

so ~/.vim/plugins.vim

syntax enable
set backspace=indent,eol,start                                          "Make backspace behave like every other editor.
let mapleader = ','                                                     "The default is \, but a comma is much better.
set number                                                              "Let's activate line numbers.
set noerrorbells visualbell t_vb=                                       "No damn bells!
set autowriteall                                                        "Automatically write the file when switching buffers.
set complete=.,w,b,u                                                    "Set our desired autocompletion matching.
set tabstop=4
set expandtab
set softtabstop=2
set shiftwidth=2
set clipboard=unnamed                                                   "use system clipboard
set exrc                                                                "enable usage of additional .vimrc files from working directory




"-------------Visuals--------------"
colorscheme atom-dark
set t_Co=256                                                            "Use 256 colors. This is useful for Terminal Vim.
set guifont=Fira\ Code:h17                                              "Set the default font family and size.
"set macligatures                                                       "We want pretty symbols, when available.
set guioptions-=e                                                       "We don't want Gui tabs.
"set linespace=16                                                       "Macvim-specific line-height.
set lines=999
set showtabline=2

set guioptions-=l                                                       "Disable Gui scrollbars.
set guioptions-=L
set guioptions-=r
set guioptions-=R

"We'll fake a custom left padding for each window.
hi LineNr guibg=bg
set foldcolumn=2
hi foldcolumn guibg=bg

"Get rid of ugly split borders.
hi vertsplit guifg=bg guibg=bg




"-------------Search--------------"
set hlsearch                                                            "Highlight all matched terms.
set incsearch                                                           "Incrementally highlight, as we type.




"-------------Split Management--------------"
set splitbelow                                                          "Make splits default to below...
set splitright                                                          "And to the right. This feels more natural.

"We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>




"-------------Mappings--------------"
"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>es :e ~/.vim/UltiSnips/

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Quickly browse to any tag/symbol in the project.
"Tip: run ctags -R to regenerated the index.
"tn -next, tp -previous, ts -select all of the tags
"refresh command - ctags -R --exclude=./vendor/*
nmap <Leader>f :tag<space>


"Sort PHP use statements
"http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>


nmap <Leader>s :Ag<space>
nmap <Leader>r :Gsearch<space>
nmap <Leader><Leader>r :Greplace<space>

let @b = "vi{<"
let @f = "vi{>"
let @p = "ci(Op==Aq€kb"

"-------------Plugins--------------"

"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

nmap <C-p> :CtrlP<cr>
nmap <S-r> :CtrlPBufTag<cr>
nmap <C-e> :CtrlPMRUFiles<cr>
"nmap <C-S-t> <Plug>PeepOpen

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0

"Press 'm' to bring up the NERDTree FileSystem Menu
nmap <C-S-t> :NERDTreeToggle<cr>

"
"/ Greplace.vim
"/
set grepprg=ag                                                            "We want to use Ag for the search.

let g:grep_cmd_opts = '--line-numbers --noheading'

"/
"/ vim-php-cs-fixer.vim
"/
let g:php_cs_fixer_level = "psr2"  

nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>

"/
"/ pdv
"/
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>

"/
"/ Ultisnips
"/
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"/
"/ VIM-JSX
"/
let g:jsx_ext_required = 0



"-------------Laravel-Specific--------------"
nmap <Leader>lr :e routes/web.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader><Leader>c :e app/Http/Controllers/<cr>
nmap <Leader><Leader>m :CtrlP<cr>app/
nmap <Leader><Leader>v :e resources/views/<cr>




"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END




"-------------Functions--------------"
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>


"-------------Python------------------"
so ~/.vim/pythonmode.vim

"-------------Syntastic---------------"
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=5
let g:syntastic_error_symbol='X'
let g:syntastic_style_error_symbol='X'
let g:syntastic_warning_symbol='x'
let g:syntastic_style_warning_symbol='x'
let g:syntastic_python_checkers=['flake8', 'pydocstyle', 'python3']

"------------YouCompleteMe------------------"
set completeopt-=preview

let g:ycm_global_ycm_extra_conf='~/.vim/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0

nmap <leader>g :YcmCompleter GoTo<CR>
nmap <leader>d :YcmCompleter GoToDefinition<CR>



"-------------Tips and Reminders--------------"
" - Press 'zz' to instantly center the line where the cursor is located.
" - Press 'M' to instantly go to middle of the window.
" - Press 'm-[any-key]' to mark the line or location, then press ' or ` -[any-key] to jump back to that line or location
" - Marks list - :marks
" - Macros - Press q to start record, then [any key], then record something, then in normal mode press q to finish recording, to use press @[any key]
"   yiw - copy word
"   diw - delete word
"   ciw - change word
"   yiw copy the word, viwp rewrite the word
"   similar approach works for [y|d|c|v]i[(,[,{,',",`]
"   comment/uncomment - press ctrl-V, go down or up with j or k keys, then press shift-i and type comment chars or x for uncommenting,
"   upper/lowwercase - toggle case of the character ~, the line g~~ or V~, word to lowercase guaw, word to uppercase gUaw, line to lowercase guu, uppercase gUU 


"-------------Color Fixes---------------------"

if &term =~ '256color'

  " The following two lines solve the BCE issue described here: https://sunaku.github.io/vim-256color-bce.html
  set term=screen-256color
  set t_ut=
  
  set background=dark
  " Be sure to store your `<theme>.vim` files in ~/.vim/colors/
  colorscheme gruvbox
endif
