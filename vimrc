""""""""""""""""""""""""""""""""""""""""
" vundle
""""""""""""""""""""""""""""""""""""""""
set nocompatible	" be iMproved
filetype off		" required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" git support
Bundle 'tpope/vim-fugitive'
" 語法檢查
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-easymotion'
" doc
Bundle 'lazywei/vim-doc-tw'
" 註解
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/vim-powerline'
Bundle 'plasticboy/vim-markdown'
Bundle 'Yggdroot/indentLine'
Bundle 'xuhdev/SingleCompile'
Bundle 'xolox/vim-notes'

" vim-scripts repos
Bundle 'WebAPI.vim'
Bundle 'Gist.vim'
Bundle 'airblade/vim-gitgutter'
" 自動補完
Bundle 'snipMate'
Bundle 'mp607/snippets'
" 剪貼簿
Bundle 'fakeclip'
Bundle 'L9'
" 提示
Bundle 'AutoComplPop'
" 語法檢查
Bundle 'FuzzyFinder'
Bundle 'Markdown'
Bundle 'cocoa.vim'
" grep
Bundle 'ack.vim'
" Search
Bundle 'ctrlp.vim'
" html
Bundle 'ZenCoding.vim'
Bundle 'terryma/vim-multiple-cursors'
" Bundle 'c.vim'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

""""""""""""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""""""""""""
set autoindent
set hlsearch
set relativenumber
set tabstop=4
set shiftwidth=4
set backspace=2
set scrolloff=3
set cursorline
set ruler
set laststatus=2
" set statusline " 狀態列格式
set visualbell

set fileencodings=utf-8,big5,gbk,latin1
set fileformats=unix,dos

" auto source vimrc
autocmd! bufwritepost .vimrc source ~/.vimrc

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
"let g:Powerline_symbols = 'fancy'

""""""""""""""""""""""""""""""""""""""""
" easymotion
""""""""""""""""""""""""""""""""""""""""
" Usage: \\w

""""""""""""""""""""""""""""""""""""""""
" Gist
""""""""""""""""""""""""""""""""""""""""
" Usage: Gist 
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
let g:snippets_dir = "~/.vim/bundle/snippets/"
"au BufRead *.php set ft=php.html
"au BufNewFile *.php set ft=php.html

""""""""""""""""""""""""""""""""""""""""
" ctrlp
""""""""""""""""""""""""""""""""""""""""
" Usage: <C-p>
let g:ctrlp_working_path_mode = 'ra'
if has('unix')
	set wildignore+=*.o,*.out,*.so,*.swp,*.zip	" MacOSX/Linux
else
	set wildignore+=*.swp,*.zip,*.exe	" Windows
endif

""""""""""""""""""""""""""""""""""""""""
" indentLine
""""""""""""""""""""""""""""""""""""""""
set lcs =tab:\|\ 
"set list

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
