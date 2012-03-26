" my filetype file
if exists("did_load_filetypes")
finish
endif
augroup filetypedetect
au! BufRead,BufNewFile *.cfg		setfiletype ciscoconfig | colorscheme default
augroup END

