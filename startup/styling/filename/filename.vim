if &laststatus < 2
  set laststatus=2
endif
silent doautocmd User AirlineToggledOn
function! s:get_airline_themes(a, l, p)
  let files = split(globpath(&rtp, 'autoload/airline/themes/'.a:a.'*'), "\n")
  return map(files, 'fnamemodify(v:val, ":t:r")')
endfunction
function! s:airline_theme(...)
  if a:0
  call airline#switch_theme(a:1)
  else
  echo g:airline_theme
  endif
  endfunction
  function! s:airline_refresh()
  if !exists("#airline")
  return
  endif
  let nomodeline=''
  if v:version > 703 || v:version == 703 && has("patch438")
  let nomodeline = '<nomodeline>'
  endif
  exe printf("silent doautocmd %s User AirlineBeforeRefresh", nomodeline)
  call airline#highlighter#reset_hlcache()
  call airline#load_theme()
  call airline#update_statusline()
  endfunction
command! -bar -nargs=? -complete=customlist,<sid>get_airline_themes AirlineTheme call <sid>airline_theme(<f-args>)
command! -bar AirlineToggleWhitespace call airline#extensions#whitespace#toggle()
command! -bar AirlineToggle call s:airline_toggle()
command! -bar AirlineRefresh call s:airline_refresh()
