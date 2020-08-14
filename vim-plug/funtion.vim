" Compile function
map r :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!gcc % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:term python3 %
	elseif &filetype == 'markdown'
    exec "MarkdownPreview"
	elseif &filetype == 'vimwiki'
    exec "MarkdownPreview"
	endif
endfunc
