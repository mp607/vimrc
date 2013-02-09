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
" Bundle 'Lokaltog/vim-powerline'
Bundle 'plasticboy/vim-markdown'
Bundle 'skammer/vim-css-color'
Bundle 'Yggdroot/indentLine'
Bundle 'xuhdev/SingleCompile'
Bundle 'xolox/vim-notes'

" vim-scripts repos
Bundle 'WebAPI.vim'
Bundle 'Gist.vim'
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
" vars
""""""""""""""""""""""""""""""""""""""""
let s:uname = substitute(system('uname'), '\n', '', '')

""""""""""""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""""""""""""
set autoindent	" 自動縮排
set hlsearch	" 高亮度搜尋
set number		" 行號
set tabstop=4	" tab=4
set shiftwidth=4 " << , >> = 4
set scrolloff=3 " 留三行
set cursorline	" 高亮度所在行
set ruler		" 狀態列
set laststatus=2 " 狀態列行數
" set statusline " 狀態列格式
set vb			" viusalbel

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
if s:uname == "Darwin"
	vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
	vmap <C-l> $y:call system("pbcopy", getreg("\""))<CR>
	nmap <C-a> ggyG:call system("pbcopy", getreg("\""))<CR>

	if exists('&ai')
		nmap <C-m> ":set noai<CR>:call setreg("\"",system("pbpaste"))<CR>:set ai<CR>p"
	else
		nmap <C-m> ":call setreg("\"",system("pbpaste"))<CR>"
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

if s:uname == "Darwin"
	let g:gist_clip_command = 'pbcopy'
elseif s:uname == "Linux"
	let g:gist_clip_command = 'xclip -selection clipboard'
"elseif has('win32') || has('win64') || has('winunix')
"	let g:gist_clip_command = 'putclip'
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
if s:uname == "Drawin" || s:uname == "Lunux" || s:uname == "FreeBSD"
	set wildignore+=*.o,*.out,*.so,*.swp,*.zip	" MacOSX/Linux
else
	set wildignore+=*.swp,*.zip,*.exe	" Windows
endif

""""""""""""""""""""""""""""""""""""""""
" indentLine
""""""""""""""""""""""""""""""""""""""""
set lcs =tab:\|\ 
"set list
