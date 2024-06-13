
"------------------Автозавершение парных символов--------------------"
inoremap ` ``<left>
inoremap ' ''<left>
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>

"-------------Запуск Bash для текущего файла----------------------"
function! RunBash()
  write
  execute "!bash %"
endfunction

command! Run :call RunBash()

nnoremap <leader><Space> :Run<CR>

