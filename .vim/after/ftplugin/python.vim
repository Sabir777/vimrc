
"-----------------------------Отступы--------------------------------"
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

"------------------Автозавершение парных символов--------------------"
" inoremap ` ``<left>
inoremap ' ''<left>
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
" inoremap { {}<left>
" inoremap < <><left>

"-------------Запуск Python для текущего файла----------------------"
function! RunPython()
  write
  execute "!python3 %"
endfunction

command! Run :call RunPython()

nnoremap <leader><Space> :Run<CR>

