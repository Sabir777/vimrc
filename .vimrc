" Отключение обратной совместимости с vi
set nocompatible

" для работы плагинов NERDTree, NERDCommenter, lightline - если я их установлю
" вручную
filetype plugin indent on
 
" курсор и мышь
" полностью включить мышь - при выделении мышью будет переходить в режим
" Visual
"set mouse=a

" всегда иметь визуальные отступы сверху и снизу
" от верхнего и нижнего края экрана vim до курсора
set scrolloff=5

" подсвечивать строку на которой находится курсор
set cursorline

" прекратить подсвечивать строку при переходе в режим Insert
autocmd InsertEnter,InsertLeave * set cursorline!
 
" Обновление файла извне
set updatetime=250
" Разрешить обновление файла
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * checktime

" Установка UTF-8 стандартной кодировкой для файлов
set encoding=utf8

" Мап-лидер: пробел: пока нигде не применяется
let mapleader = ' '

" Копировать выделенный фрагмент в глобальный буфер обмена: Ctrl + v
vnoremap <C-c> :w !xclip -i -sel c<CR><CR>

" Вставить текст из глобального буфера обмена: Правая кнопка мыши

" Копирование во внешний буфер-файл в визуальном режиме (копирование между вкладками tmux)
"map <C-c> :w! ~/.vimbuffer<CR>
"map <C-p> :r ~/.vimbuffer<CR>

" Копировать от текущего символа до конца строки
nnoremap Y y$

" Открыть терминал - выход из такого терминала команда: exit, при этом основное окно vim не закроется
nnoremap <C-q> :terminal<CR>

" Переход в нормальный режим
inoremap jj <Esc>
inoremap оо <Esc>

" Переход по логическим строкам, а не по фактическим
noremap j gj
noremap k gk

" Переход в начало и конец строки
map H ^
map L $
map Р ^
map Д $

" Русская раскладка
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" Тема
colorscheme industry

" Отступы: разработка
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent

" Файлы подкачки - сохранение в отдельной папке
set directory^=$HOME/.vim/swap//

" Номера строк: показывать по умолчанию
set number

" Навигация по вкладкам
nmap <F7> :tabp<CR>
nmap <F8> :tabn<CR>

" Привычные комбинации для всех редакторов
" Ctrl + S = сохранение
" Из NORMAL
nnoremap <C-s> :w<CR>

" Из INSERT
inoremap <C-s> <Esc>:w<CR>

" Из VISUAL
vnoremap <C-s> <Esc>:w<CR>

" Ctrl+z для отмены изменений и Ctrl+x для возврата к изменениям
" В режимах NORMAL, VISUAL, INSERT
nnoremap <C-z> :undo<CR>
vnoremap <C-z> <Esc>:undo<CR>
inoremap <C-z> <Esc>:undo<CR>
nnoremap <C-x> :redo<CR>
vnoremap <C-x> <Esc>:redo<CR>
inoremap <C-x> <Esc>:redo<CR>


"-----------------------------Поиск---------------------------------"
" умный поиск. Если вы ищете строку, которая состоит только из прописных букв, то поиск будет регистро-независимым, но если один или больше символов в строке заглавные, то искать будет с учетом регистра. Чаще всего это то, что нужно
set ignorecase
set smartcase

"мгновенная подсветка
set incsearch

"включить/отключить подсветку для всех найденных совпадений
nnoremap <leader>h :set hlsearch!<CR>

"включать подсветку перед каждым поиском; :noh нужен для того чтобы не включать старую подсветку до того как введен запрос на поиск
nnoremap / :set hlsearch<CR>:noh<CR>/\v


"-----------------------------Замены---------------------------------"
" применяет замены ко всей строке по умолчанию, если g указать явно в параметрах команды, то будет применено один раз
set gdefault


"-------------------Групповая обработка файлов-----------------------"
" разрешить групповую обработку файлов через vim
set hidden

