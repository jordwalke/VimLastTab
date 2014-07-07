" http://vim.1045645.n5.nabble.com/jump-to-last-visited-tabpage-td1172955.html
" return to the last tab page visited.

 " Used by TabLeave autocmd.
function! SetMostRecentTab()
  let g:ltv = tabpagenr()
endfunction

augroup localtl
 " Remove localtl autocommands
au!

 " keep count of the last tab page visited whenever leaving
autocmd TabLeave * call SetMostRecentTab()
augroup END
autocmd VimEnter * let g:ltv = 1


if !exists("*s:LastTab")
  function s:LastTab()
    execute "tabn ".g:ltv
  endfunction
endif

if !exists(":LastTab")
  command LastTab :call s:LastTab()
endif
