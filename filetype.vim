" my filetype file
if exists("did_load_filetypes")
	finish
endif
augroup filetypedetect
	au! BufRead,BufNewFile *.py		setfiletype python
	au! BufRead,BufNewFile db.*		setfiletype bindzone
	au! BufRead,BufNewFile named.conf.*		setfiletype named
augroup END
