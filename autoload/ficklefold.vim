" Easily switch between different fold methods
"

function! ficklefold#ToggleFold()
	if !exists("b:fold_toggle_options")
		" By default, use the main three. I rarely use manual and diff is just
		" for diffing. Only use expr if it has an expression setup.
		let b:fold_toggle_options = ["syntax", "indent", "marker"]
		if len(&l:foldexpr) > 1
			let b:fold_toggle_options += ["expr"]
		endif
	endif

	" Find the current setting in the list
	let i = match(b:fold_toggle_options, &foldmethod)

	" Advance to the next setting
	let i = (i + 1) % len(b:fold_toggle_options)
	let &l:foldmethod = b:fold_toggle_options[i]

	echo 'foldmethod is now ' . &l:foldmethod
endfunction

function! ficklefold#FoldParagraphs()
    setlocal foldmethod=expr
    setlocal fde=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'\\S'?'<1':1
    if exists("b:fold_toggle_options")
        let b:fold_toggle_options += ["expr"]
    endif
endfunction
