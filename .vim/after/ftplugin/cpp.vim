
"-----------------Отступы----------------"
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent

"-----Автозавершение парных символов-----"
" inoremap ` ``<left>
" inoremap ' ''<left>
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap 2< <><left>

"-----Компиляция и запуск программы------"
function! RunCpp()
  write
  execute "!cd ../project && bash make_debug.sh && cd ../bin/debug && ./file.out"
endfunction

command! Run :call RunCpp()

nnoremap <leader><Space> :Run<CR>
