" Отступы: разработка
set tabstop=4
set shiftwidth=4 
set smarttab
set expandtab
set smartindent

" Переход в начало и конец строки
map H ^
map L $
map Р ^
map Д $

" Файлы подкачки - сохранение в отдельной папке
set directory^=$HOME/.vim/swap//

" Добавил номера строк
set number

" Копирование во внешний буфер-файл в визуальном режиме (копирование между
" вкладками tmux)
map <C-c> :w! ~/.vimbuffer<CR>
map <C-p> :r ~/.vimbuffer<CR>
