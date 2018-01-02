function! PrettierRCExists()
  silent! execute "!git ls-files --error-unmatch .prettierrc"
  return v:shell_error == 0
endfunction

if PrettierRCExists()
  autocmd BufWritePre *.{js,json,css,html} Neoformat
endif
