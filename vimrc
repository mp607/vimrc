""""""""""""""""""""""""""""""""""""""""
" vundle
""""""""""""""""""""""""""""""""""""""""
" Usage: :BundleList          - list configured bundles
"        :BundleInstall(!)    - install(update) bundles
"        :BundleSearch(!) foo - search(or refresh cache first) for foo
"        :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
set nocompatible	" be iMproved
filetype off		" required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

""""""""""""""""""""""""""""""""""""""""
" Settings
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
set laststatus=2
" set statusline " 狀態列格式
set visualbell
" auto source vimrc
autocmd! bufwritepost .vimrc source ~/.vimrc

""""""""""""""""""""""""""""""""""""""""
" tab
""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set shiftwidth=4

""""""""""""""""""""""""""""""""""""""""
" file
""""""""""""""""""""""""""""""""""""""""
set fileencodings=utf-8,big5,gbk,latin1
set fileformats=unix,dos

""""""""""""""""""""""""""""""""""""""""
" filetypes
""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""
" Colors
""""""""""""""""""""""""""""""""""""""""
syntax on		" 程式碼上色
color desert

""""""""""""""""""""""""""""""""""""""""
" Copy & Paste (Only on Mac)
""""""""""""""""""""""""""""""""""""""""
" Usage: 
if has('mac')
	vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
	vmap <C-l> $y:call system("pbcopy", getreg("\""))<CR>
	nmap <C-a> ggyG:call system("pbcopy", getreg("\""))<CR>

	if &ai
		nmap <C-x> :set noai<CR>:call setreg("\"",system("pbpaste"))<CR>:set ai<CR>p
	else
		nmap <C-x> :call setreg("\"",system("pbpaste"))<CR>
	endif
endif

""""""""""""""""""""""""""""""""""""""""
" powerline
""""""""""""""""""""""""""""""""""""""""
Bundle 'Lokaltog/vim-powerline'
"let g:Powerline_symbols = 'fancy'

""""""""""""""""""""""""""""""""""""""""
" easymotion
""""""""""""""""""""""""""""""""""""""""
" Usage: <leader>w
Bundle 'Lokaltog/vim-easymotion'

""""""""""""""""""""""""""""""""""""""""
" Gist
""""""""""""""""""""""""""""""""""""""""
" Usage: Gist 
Bundle 'WebAPI.vim'
Bundle 'Gist.vim'

let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

if has('mac')
	let g:gist_clip_command = 'pbcopy'
"elseif has('unix')
	"let g:gist_clip_command = 'xclip -selection clipboard'
elseif has('win32') || has('win64') || has('winunix')
	let g:gist_clip_command = 'putclip'
endif

""""""""""""""""""""""""""""""""""""""""
" snipMate
""""""""""""""""""""""""""""""""""""""""
Bundle 'snipMate'
Bundle 'mp607/snippets'
let g:snippets_dir = "~/.vim/bundle/snippets/"
"au BufRead *.php set ft=php.html
"au BufNewFile *.php set ft=php.html

""""""""""""""""""""""""""""""""""""""""
" ctrlp
""""""""""""""""""""""""""""""""""""""""
" Usage: <C-p>
Bundle 'ctrlp.vim'
let g:ctrlp_working_path_mode = 'ra'
if has('unix')
	set wildignore+=*.o,*.out,*.so,*.swp,*.zip	" MacOSX/Linux
else
	set wildignore+=*.swp,*.zip,*.exe	" Windows
endif

""""""""""""""""""""""""""""""""""""""""
" indentLine
""""""""""""""""""""""""""""""""""""""""
Bundle 'Yggdroot/indentLine'
set lcs =tab:\|\ 
"set list

""""""""""""""""""""""""""""""""""""""""
" fugitive
""""""""""""""""""""""""""""""""""""""""
" Usage: Gdiff, Gstatus, Gcommit, Glog
Bundle 'tpope/vim-fugitive'

""""""""""""""""""""""""""""""""""""""""
" vim-gitgutter
""""""""""""""""""""""""""""""""""""""""
" Usage: turn off with :GitGutterDisable
"        turn on with :GitGutterEnable
"        toggle with :GitGutterToggle
"
"        turn on with :GitGutterLineHighlightsEnable
"        turn off with :GitGutterLineHighlightsDisable
"        toggle with :GitGutterLineHighlightsToggle
"
"        jump to next hunk: :GitGutterNextHunk
"        jump to previous hunk: :GitGutterPrevHunk
Bundle 'airblade/vim-gitgutter'

""""""""""""""""""""""""""""""""""""""""
" nerdcommenter
""""""""""""""""""""""""""""""""""""""""
" Usage: <leader>cc
"        <leader>cu
"        <leader>cm
Bundle 'scrooloose/nerdcommenter'

""""""""""""""""""""""""""""""""""""""""
" vim-multiple-cursors
""""""""""""""""""""""""""""""""""""""""
" Usage: C-n
Bundle 'terryma/vim-multiple-cursors'

""""""""""""""""""""""""""""""""""""""""
" surround
""""""""""""""""""""""""""""""""""""""""
" Usage: cs"', ts"
Bundle 'tpope/vim-surround'

""""""""""""""""""""""""""""""""""""""""
" Dash (Only on Mac)
""""""""""""""""""""""""""""""""""""""""
" Usage: :Dash[!] [TERM] [KEYWORD]
if has('mac')
	Bundle 'rizzatti/funcoo.vim'
	Bundle 'rizzatti/dash.vim'
endif

" 語法檢查
Bundle 'scrooloose/syntastic'
Bundle 'plasticboy/vim-markdown'
Bundle 'xuhdev/SingleCompile'
" 提示
Bundle 'AutoComplPop'
" 語法檢查
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'cocoa.vim'
" grep
Bundle 'ack.vim'
Bundle 'grep.vim'
" html
Bundle 'ZenCoding.vim'
Bundle 'lazywei/vim-doc-tw'
" Bundle 'c.vim'
" Bundle 'git://git.wincent.com/command-t.git'
