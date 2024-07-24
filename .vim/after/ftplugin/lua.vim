"-----------------------------Отступы--------------------------------"
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent

"------------------Автозавершение парных символов--------------------"
" inoremap ` ``<left>
inoremap ' ''<left>
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>


"-------------Запуск lua для текущего файла----------------------"
function! RunLua()
  write
  execute "!lua %"
endfunction

command! Run :call RunLua()

nnoremap <leader><Space> :Run<CR>

