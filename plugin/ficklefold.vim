" Easily switch between different fold methods
"

if !exists("g:ficklefold_no_mappings") || !g:ficklefold_no_mappings
	nnoremap <Leader>ff :call ficklefold#ToggleFold()<CR>
endif

command! FoldToggle call ficklefold#ToggleFold()
command! FoldParagraphs call ficklefold#FoldParagraphs()
