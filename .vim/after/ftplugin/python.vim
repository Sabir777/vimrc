
"-----------------------------Отступы--------------------------------"
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

"------------------Автозавершение парных символов--------------------"
inoremap ` ``<left>
inoremap ' ''<left>
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>


"-------------Запуск Python для текущего файла----------------------"
function! RunPython()
    write
    execute "!python3 %"
endfunction

command! Py :call RunPython()
cabbrev py Py
cabbrev зн Py
nnoremap <leader><Space> :Py<CR>

