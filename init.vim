lua require('init')
nnoremap <silent> K :call CocActionAsync('doHover')<CR>
nmap <silent> gd <Plug>(coc-definition)
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"
call coc#config('languageserver', { "pylance": { "module": expand("~/.vscode/extensions/ms-python.vscode-pylance-*/dist/server.bundle.js", 0, 1)[0] } })

 "Show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

 "Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

 "Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

 "Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')
