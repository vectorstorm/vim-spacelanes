" spacelane.vim - Rapid transit between commonly used files
" Maintainer:   Trevor Powell
" Version:      0.0.1

if exists('g:space_loaded') || &cp
  finish
endif
let g:space_loaded = 1

if !exists('g:space_map_keys')
	let g:space_map_keys = 1
endif

if !exists('g:space_map_prefix')
	let g:space_map_prefix = '<space>'
endif

if g:space_map_keys
	execute "nnoremap " g:space_map_prefix."a" ":call <sid>Space_GoTo('a')<CR>"
	execute "nnoremap " g:space_map_prefix."A" ":call <sid>Space_SetTo('a')<CR>"
	execute "nnoremap " g:space_map_prefix."b" ":call <sid>Space_GoTo('b')<CR>"
	execute "nnoremap " g:space_map_prefix."B" ":call <sid>Space_SetTo('b')<CR>"
	execute "nnoremap " g:space_map_prefix."c" ":call <sid>Space_GoTo('c')<CR>"
	execute "nnoremap " g:space_map_prefix."C" ":call <sid>Space_SetTo('c')<CR>"
	execute "nnoremap " g:space_map_prefix."d" ":call <sid>Space_GoTo('d')<CR>"
	execute "nnoremap " g:space_map_prefix."D" ":call <sid>Space_SetTo('d')<CR>"
	execute "nnoremap " g:space_map_prefix."e" ":call <sid>Space_GoTo('e')<CR>"
	execute "nnoremap " g:space_map_prefix."E" ":call <sid>Space_SetTo('e')<CR>"
	execute "nnoremap " g:space_map_prefix."f" ":call <sid>Space_GoTo('f')<CR>"
	execute "nnoremap " g:space_map_prefix."F" ":call <sid>Space_SetTo('f')<CR>"
	execute "nnoremap " g:space_map_prefix."g" ":call <sid>Space_GoTo('g')<CR>"
	execute "nnoremap " g:space_map_prefix."G" ":call <sid>Space_SetTo('g')<CR>"
	execute "nnoremap " g:space_map_prefix."h" ":call <sid>Space_GoTo('h')<CR>"
	execute "nnoremap " g:space_map_prefix."H" ":call <sid>Space_SetTo('h')<CR>"
	execute "nnoremap " g:space_map_prefix."i" ":call <sid>Space_GoTo('i')<CR>"
	execute "nnoremap " g:space_map_prefix."I" ":call <sid>Space_SetTo('i')<CR>"
	execute "nnoremap " g:space_map_prefix."j" ":call <sid>Space_GoTo('j')<CR>"
	execute "nnoremap " g:space_map_prefix."J" ":call <sid>Space_SetTo('j')<CR>"
	execute "nnoremap " g:space_map_prefix."k" ":call <sid>Space_GoTo('k')<CR>"
	execute "nnoremap " g:space_map_prefix."K" ":call <sid>Space_SetTo('k')<CR>"
	execute "nnoremap " g:space_map_prefix."l" ":call <sid>Space_GoTo('l')<CR>"
	execute "nnoremap " g:space_map_prefix."L" ":call <sid>Space_SetTo('l')<CR>"
	execute "nnoremap " g:space_map_prefix."m" ":call <sid>Space_GoTo('m')<CR>"
	execute "nnoremap " g:space_map_prefix."M" ":call <sid>Space_SetTo('m')<CR>"
	execute "nnoremap " g:space_map_prefix."n" ":call <sid>Space_GoTo('n')<CR>"
	execute "nnoremap " g:space_map_prefix."N" ":call <sid>Space_SetTo('n')<CR>"
	execute "nnoremap " g:space_map_prefix."o" ":call <sid>Space_GoTo('o')<CR>"
	execute "nnoremap " g:space_map_prefix."O" ":call <sid>Space_SetTo('o')<CR>"
	execute "nnoremap " g:space_map_prefix."p" ":call <sid>Space_GoTo('p')<CR>"
	execute "nnoremap " g:space_map_prefix."P" ":call <sid>Space_SetTo('p')<CR>"
	execute "nnoremap " g:space_map_prefix."q" ":call <sid>Space_GoTo('q')<CR>"
	execute "nnoremap " g:space_map_prefix."Q" ":call <sid>Space_SetTo('q')<CR>"
	execute "nnoremap " g:space_map_prefix."r" ":call <sid>Space_GoTo('r')<CR>"
	execute "nnoremap " g:space_map_prefix."R" ":call <sid>Space_SetTo('r')<CR>"
	execute "nnoremap " g:space_map_prefix."s" ":call <sid>Space_GoTo('s')<CR>"
	execute "nnoremap " g:space_map_prefix."S" ":call <sid>Space_SetTo('s')<CR>"
	execute "nnoremap " g:space_map_prefix."t" ":call <sid>Space_GoTo('t')<CR>"
	execute "nnoremap " g:space_map_prefix."T" ":call <sid>Space_SetTo('t')<CR>"
	execute "nnoremap " g:space_map_prefix."u" ":call <sid>Space_GoTo('u')<CR>"
	execute "nnoremap " g:space_map_prefix."U" ":call <sid>Space_SetTo('u')<CR>"
	execute "nnoremap " g:space_map_prefix."v" ":call <sid>Space_GoTo('v')<CR>"
	execute "nnoremap " g:space_map_prefix."V" ":call <sid>Space_SetTo('v')<CR>"
	execute "nnoremap " g:space_map_prefix."w" ":call <sid>Space_GoTo('w')<CR>"
	execute "nnoremap " g:space_map_prefix."W" ":call <sid>Space_SetTo('w')<CR>"
	execute "nnoremap " g:space_map_prefix."x" ":call <sid>Space_GoTo('x')<CR>"
	execute "nnoremap " g:space_map_prefix."X" ":call <sid>Space_SetTo('x')<CR>"
	execute "nnoremap " g:space_map_prefix."y" ":call <sid>Space_GoTo('y')<CR>"
	execute "nnoremap " g:space_map_prefix."Y" ":call <sid>Space_SetTo('y')<CR>"
	execute "nnoremap " g:space_map_prefix."z" ":call <sid>Space_GoTo('z')<CR>"
	execute "nnoremap " g:space_map_prefix."Z" ":call <sid>Space_SetTo('z')<CR>"
endif

let s:space_destinations = {}

function! s:Space_GoTo(label) "{{{
	if ( has_key( s:space_destinations, a:label ) )
		execute "e " s:space_destinations[a:label]
		return 0
	else
		echom "No spacelane for route" a:label
	endif
	return 1
endfunction "}}}

function! s:Space_SetTo(label) "{{{
	if ( bufname('') == "" )
		echom "Clearing route" a:label
		unlet s:space_destinations[a:label]
		return 1
	endif
	let s:space_destinations[a:label] = bufname('')
	echom a:label " : " s:space_destinations[a:label]
	return 0
endfunction "}}}

