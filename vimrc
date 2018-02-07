""""""""""""""""""""""""""""""""""""""""
" vundle
""""""""""""""""""""""""""""""""""""""""
" Usage: :PluginList       - lists configured plugins
"        :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"        :PluginSearch foo - searches for foo; append `!` to refresh local cache
"        :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
set nocompatible	" be iMproved
filetype off		" required!
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'gmarik/vundle'

""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""
set autoindent
set hlsearch
set undofile
set undodir=~/.vim/undo
set relativenumber
set backspace=2
set scrolloff=3
set cursorline
set showcmd
set ruler
set mouse=a
set clipboard=unnamed
set laststatus=2
set visualbell
" auto reload vimrc
autocmd! bufwritepost .vimrc source ~/.vimrc

""""""""""""""""""""""""""""""""""""""""
" tab
""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set shiftwidth=4

""""""""""""""""""""""""""""""""""""""""
" file
""""""""""""""""""""""""""""""""""""""""
set fileencodings=utf-8,big5,utf-16,gbk,latin1
set fileformats=unix,dos

""""""""""""""""""""""""""""""""""""""""
" Colors
""""""""""""""""""""""""""""""""""""""""
syntax on
color desert
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

""""""""""""""""""""""""""""""""""""""""
" Mac
""""""""""""""""""""""""""""""""""""""""
if has('mac')
	au BufEnter /private/tmp/crontab.* setl backupcopy=yes
endif

""""""""""""""""""""""""""""""""""""""""
" powerline
""""""""""""""""""""""""""""""""""""""""
Plugin 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'fancy'

""""""""""""""""""""""""""""""""""""""""
" Gist
""""""""""""""""""""""""""""""""""""""""
" Usage: Gist 
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1

if has('mac')
	let g:gist_clip_command = 'pbcopy'
"elseif has('unix')
	"let g:gist_clip_command = 'xclip -selection clipboard'
elseif has('win32') || has('win64') || has('winunix')
	let g:gist_clip_command = 'putclip'
endif

""""""""""""""""""""""""""""""""""""""""
" autocomplpop + snipmate
""""""""""""""""""""""""""""""""""""""""
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'L9'
Plugin 'othree/vim-autocomplpop'

let g:acp_behaviorSnipmateLength = 1

""""""""""""""""""""""""""""""""""""""""
" jedi-vim
""""""""""""""""""""""""""""""""""""""""
" Usage: <C-Space> Completion
"		 <leader>g Goto assignments (typical goto function)
"		 <leader>d Goto definitions (follow identifier as far as possible, includes imports and statements)
"		 K         Show Documentation/Pydoc (shows a popup with assignments)
"		 <leader>r Renaming
"		 <leader>n Usages (shows all the usages of a name)
"		 :Pyimport os Open module (opens the os module)
Plugin 'davidhalter/jedi-vim'

let g:jedi#popup_select_first = 1
let g:jedi#use_splits_not_buffers = "left"

""""""""""""""""""""""""""""""""""""""""
" ctrlp
""""""""""""""""""""""""""""""""""""""""
" Usage: <C-p>
Plugin 'ctrlp.vim'

let g:ctrlp_working_path_mode = 'ra'
if has('unix')
	set wildignore+=*.o,*.out,*.so,*.swp,*.zip	" MacOSX/Linux
else
	set wildignore+=*.swp,*.zip,*.exe	" Windows
endif

""""""""""""""""""""""""""""""""""""""""
" indentLine
""""""""""""""""""""""""""""""""""""""""
Plugin 'Yggdroot/indentLine'

""""""""""""""""""""""""""""""""""""""""
" fugitive
""""""""""""""""""""""""""""""""""""""""
" Usage: Gdiff, Gstatus, Gcommit, Glog
Plugin 'tpope/vim-fugitive'

""""""""""""""""""""""""""""""""""""""""
" vim-gitgutter
""""""""""""""""""""""""""""""""""""""""
" Usage: ]c          jump to next hunk
"        [c          jump to prev hank
"        <leader>hp  show diff
Plugin 'airblade/vim-gitgutter'

""""""""""""""""""""""""""""""""""""""""
" nerdcommenter
""""""""""""""""""""""""""""""""""""""""
" Usage: <leader>cc
"        <leader>cu
"        <leader>cm
Plugin 'scrooloose/nerdcommenter'

""""""""""""""""""""""""""""""""""""""""
" vim-multiple-cursors
""""""""""""""""""""""""""""""""""""""""
" Usage: C-n
Plugin 'terryma/vim-multiple-cursors'

""""""""""""""""""""""""""""""""""""""""
" surround
""""""""""""""""""""""""""""""""""""""""
" Usage: cs"', ts"
Plugin 'tpope/vim-surround'

""""""""""""""""""""""""""""""""""""""""
" VM Graphviz
""""""""""""""""""""""""""""""""""""""""
" Usage: Compiling <leader>ll
"        Viewing   <leader>lv
Plugin 'wannesm/wmgraphviz.vim'

""""""""""""""""""""""""""""""""""""""""
" SingleCompile
""""""""""""""""""""""""""""""""""""""""
Plugin 'xuhdev/SingleCompile'

nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>

""""""""""""""""""""""""""""""""""""""""
" Dash (Only on Mac)
""""""""""""""""""""""""""""""""""""""""
" Usage: :Dash[!] [TERM] [KEYWORD]
if has('mac')
	Plugin 'rizzatti/funcoo.vim'
	Plugin 'rizzatti/dash.vim'
endif


""""""""""""""""""""""""""""""""""""""""
" Class / module browser
""""""""""""""""""""""""""""""""""""""""
Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>


""""""""""""""""""""""""""""""""""""""""
" Buffergator
""""""""""""""""""""""""""""""""""""""""
" Usage: <Leader>b
"        <ENTER> to edit the selected buffer in the previous window
"        <C-V> to edit the selected buffer in a new vertical split
"        <C-S> to edit the selected buffer in a new horizontal split
"        <C-T> to edit the selected buffer in a new tab page
Plugin 'jeetsukumaran/vim-buffergator'

""""""""""""""""""""""""""""""""""""""""
" syntastic
""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""""""""""""""""""""""""""""""""""""
" Others
""""""""""""""""""""""""""""""""""""""""
Plugin 'plasticboy/vim-markdown'
Plugin 'FuzzyFinder'
Plugin 'cocoa.vim'
Plugin 'ack.vim'
Plugin 'grep.vim'
Plugin 'ZenCoding.vim'
Plugin 'lazywei/vim-doc-tw'

call vundle#end()            " required
filetype plugin indent on    " required
