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

"-------------Запуск Bash для текущего файла----------------------"
function! RunBash()
  write
  execute "!bash %"
endfunction

command! Run :call RunBash()

nnoremap <leader><Space> :Run<CR>

