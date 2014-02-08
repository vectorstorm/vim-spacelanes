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
	execute "nnoremap " g:spacelanes_map_prefix."a" ":call <sid>Spacelane_GoTo('a')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."A" ":call <sid>Spacelane_SetTo('a')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."b" ":call <sid>Spacelane_GoTo('b')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."B" ":call <sid>Spacelane_SetTo('b')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."c" ":call <sid>Spacelane_GoTo('c')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."C" ":call <sid>Spacelane_SetTo('c')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."d" ":call <sid>Spacelane_GoTo('d')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."D" ":call <sid>Spacelane_SetTo('d')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."e" ":call <sid>Spacelane_GoTo('e')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."E" ":call <sid>Spacelane_SetTo('e')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."f" ":call <sid>Spacelane_GoTo('f')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."F" ":call <sid>Spacelane_SetTo('f')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."g" ":call <sid>Spacelane_GoTo('g')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."G" ":call <sid>Spacelane_SetTo('g')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."h" ":call <sid>Spacelane_GoTo('h')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."H" ":call <sid>Spacelane_SetTo('h')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."i" ":call <sid>Spacelane_GoTo('i')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."I" ":call <sid>Spacelane_SetTo('i')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."j" ":call <sid>Spacelane_GoTo('j')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."J" ":call <sid>Spacelane_SetTo('j')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."k" ":call <sid>Spacelane_GoTo('k')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."K" ":call <sid>Spacelane_SetTo('k')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."l" ":call <sid>Spacelane_GoTo('l')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."L" ":call <sid>Spacelane_SetTo('l')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."m" ":call <sid>Spacelane_GoTo('m')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."M" ":call <sid>Spacelane_SetTo('m')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."n" ":call <sid>Spacelane_GoTo('n')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."N" ":call <sid>Spacelane_SetTo('n')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."o" ":call <sid>Spacelane_GoTo('o')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."O" ":call <sid>Spacelane_SetTo('o')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."p" ":call <sid>Spacelane_GoTo('p')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."P" ":call <sid>Spacelane_SetTo('p')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."q" ":call <sid>Spacelane_GoTo('q')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."Q" ":call <sid>Spacelane_SetTo('q')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."r" ":call <sid>Spacelane_GoTo('r')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."R" ":call <sid>Spacelane_SetTo('r')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."s" ":call <sid>Spacelane_GoTo('s')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."S" ":call <sid>Spacelane_SetTo('s')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."t" ":call <sid>Spacelane_GoTo('t')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."T" ":call <sid>Spacelane_SetTo('t')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."u" ":call <sid>Spacelane_GoTo('u')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."U" ":call <sid>Spacelane_SetTo('u')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."v" ":call <sid>Spacelane_GoTo('v')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."V" ":call <sid>Spacelane_SetTo('v')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."w" ":call <sid>Spacelane_GoTo('w')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."W" ":call <sid>Spacelane_SetTo('w')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."x" ":call <sid>Spacelane_GoTo('x')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."X" ":call <sid>Spacelane_SetTo('x')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."y" ":call <sid>Spacelane_GoTo('y')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."Y" ":call <sid>Spacelane_SetTo('y')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."z" ":call <sid>Spacelane_GoTo('z')<CR>"
	execute "nnoremap " g:spacelanes_map_prefix."Z" ":call <sid>Spacelane_SetTo('z')<CR>"
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

function! s:Spacelanes_List() "{{{
	return 0
endfunction "}}}

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

