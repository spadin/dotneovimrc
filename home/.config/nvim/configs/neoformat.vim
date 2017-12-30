function! PrettierRCExists()
  silent "!git ls-files --error-unmatch .prettierrc"
  return v:shell_error == 0
endfunction

if PrettierRCExists()
  autocmd BufWritePre * Neoformat
endif
