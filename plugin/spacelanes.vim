" spacelanes.vim - Rapid transit between commonly used files
" Maintainer:   Trevor Powell
" Version:      0.0.1

if exists('g:spacelanes_loaded') || &cp
  finish
endif
let g:spacelanes_loaded = 1

if !exists('g:spacelanes_map_keys')
	let g:spacelanes_map_keys = 1
endif

if !exists('g:spacelanes_map_prefix')
	let g:spacelanes_map_prefix = '<space>'
endif

if !exists('g:spacelanes_persist')
	let g:spacelanes_persist = 0
endif

if g:spacelanes_persist
	if !exists('g:spacelanes_persist_file')
		let g:spacelanes_persist_file = "~/.vim/spacelanes.txt"
	endif
endif

if g:spacelanes_map_keys
	" construct a list of ['a' ... 'z']
	for i in map(range(26), 'nr2char(char2nr("a")+v:val)')
		execute "nnoremap" g:spacelanes_map_prefix.i ":call <sid>Spacelane_GoTo('".i."')<CR>"
		execute "nnoremap" g:spacelanes_map_prefix.toupper(i) ":call <sid>Spacelane_SetTo('".i."')<CR>"
	endfor
endif


let s:spacelane_destinations = {}

if exists( "g:spacelanes_universal_destinations" )
	let s:spacelane_destinations = g:spacelanes_universal_destinations
endif

function! s:Spacelane_GoTo(label) "{{{
	if ( has_key( s:spacelane_destinations, a:label ) )
		if ( expand('%:p') == s:spacelane_destinations[a:label] )
			echom "Already at" s:spacelane_destinations[a:label]
		else
			execute "e " fnamemodify(s:spacelane_destinations[a:label], ":.")
			return 0
		endif
	else
		echom "No spacelane for route" a:label
	endif
	return 1
endfunction "}}}

function! s:Spacelane_SetTo(label) "{{{
	if ( bufname('') == "" )
		echom "Clearing route" a:label
		unlet s:spacelane_destinations[a:label]
		return 1
	endif
	let s:spacelane_destinations[a:label] = expand('%:p')
	echom a:label " : " s:spacelane_destinations[a:label]
	return 0
endfunction "}}}

function! Spacelanes_List() "{{{
	for i in items(s:spacelane_destinations)
		echom i[0] . ": " . i[1]
	endfor
endfunction "}}}
command! SpacelanesList call Spacelanes_List()

function! Spacelane_Set(label,file) "{{{
	let s:spacelane_destinations[tolower(a:label)] = a:file
	return 0;
endfunction "}}}

function! Spacelanes_Load(file) "{{{
	if ( filereadable(expand(a:file)) )
		let lines = readfile(expand(a:file), '', 24)
		for i in lines
			let args = split(i, ':')
			let s:spacelane_destinations[args[0]] = args[1]
		endfor
	endif
endfunction "}}}

function! Spacelanes_Save(file) "{{{
	let lines = [ ]
	for i in items(s:spacelane_destinations)
		call add(lines,i[0] . ":" . i[1])
	endfor
	call writefile(lines,expand(a:file))
endfunction "}}}

if g:spacelanes_persist
	augroup spacelanes_persist
		autocmd VimLeavePre * call Spacelanes_Save(g:spacelanes_persist_file)
	augroup END

	call Spacelanes_Load(g:spacelanes_persist_file)
endif

