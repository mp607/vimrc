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
" easymotion
""""""""""""""""""""""""""""""""""""""""
" Usage: <leader><leader>w
Plugin 'Lokaltog/vim-easymotion'

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
Plugin 'mp607/vim-snippets'
Plugin 'L9'
Plugin 'othree/vim-autocomplpop'

let g:snippets_dir = "~/.vim/bundle/snippets/"
let g:acp_behaviorSnipmateLength = 1

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
" Others
""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/syntastic'
Plugin 'plasticboy/vim-markdown'
Plugin 'FuzzyFinder'
Plugin 'cocoa.vim'
Plugin 'ack.vim'
Plugin 'grep.vim'
Plugin 'ZenCoding.vim'
Plugin 'lazywei/vim-doc-tw'

call vundle#end()            " required
filetype plugin indent on    " required
