" Отключение обратной совместимости с vi
set nocompatible

" для работы плагинов NERDTree, NERDCommenter, lightline - если я их установлю
" вручную
filetype plugin indent on

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'philrunninger/nerdtree-visual-selection'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
call plug#end()
 
" Мап-лидер
let mapleader = '\'
" Увеличиваю время ожидания для mapleader до 1500 мс вместо 1000 мс
set timeout timeoutlen=1500

"Комбинации для плагинов

"-------------------------NERDTree---------------------------"
" открыть/закрыть панель NERDTree
nnoremap <leader>p :NERDTreeToggle<CR>

"----------------------NERDCommenter-------------------------"

" Пробелы будут устанавливаться перед комментариями
let g:NERDSpaceDelims = 1

" Пробелы будут удаляться вместе с комментариями
let g:NERDRemoveExtraSpaces = 1

" Устанавливаю тип комментариев
let g:NERDCustomDelimiters = {
    \ 'c': {'left': '//', 'right': ''},
  \ 'javascript': {'left': '//', 'right': ''},
  \ 'python': {'left': '#', 'right': ''},
  \ }

" курсор и мышь
" полностью включить мышь - при выделении мышью будет переходить в режим
" Visual
"set mouse=a

" Установка UTF-8 стандартной кодировкой для файлов
set encoding=utf8

"------------------------------Строка--------------------------------"
" всегда иметь визуальные отступы сверху и снизу
" от верхнего и нижнего края экрана vim до курсора
set scrolloff=5

" подсвечивать строку на которой находится курсор
set cursorline

" ширина строки
set textwidth=120

"-----------------------------Курсор---------------------------------"
"set ttimeoutlen=10 "Понижаем задержку ввода escape последовательностей
let &t_SI.="\<Esc>[5 q" "SI = режим вставки (вертикальная палка)
let &t_SR.="\<Esc>[3 q" "SR = режим замены (нижнее подчеркивание при замене символа)
let &t_EI.="\<Esc>[2 q" "EI = нормальный режим (белый прямоугольник - включается если включить и выключить поиск '/'

" прекратить подсвечивать строку при переходе в режим Insert
autocmd InsertEnter,InsertLeave * set cursorline!
 
" Обновление файла извне
set updatetime=250
" Разрешить обновление файла
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * checktime


" Копировать выделенный фрагмент в глобальный буфер обмена: Ctrl + c
vnoremap <C-c> :w !xclip -i -sel c<CR><CR>

" Вставить текст из глобального буфера обмена: Правая кнопка мыши

" Копирование во внешний буфер-файл в визуальном режиме (копирование между вкладками tmux)
"map <C-c> :w! ~/.vimbuffer<CR>
"map <C-p> :r ~/.vimbuffer<CR>

" Копировать от текущего символа до конца строки
nnoremap Y y$

" Открыть терминал - выход из такого терминала команда: exit, при этом основное окно vim не закроется
nnoremap <C-q> :terminal<CR>

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
nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabn<CR>

" Навигация по буферам
nnoremap <leader><F7> :bprev<CR>
nnoremap <leader><F8> :bnext<CR>

" Навигация по окнам
nnoremap <F6> <C-w>w

"-----------------------------Поиск---------------------------------"
" умный поиск. Если вы ищете строку, которая состоит только из прописных букв,
"то поиск будет регистро-независимым, но если один или больше символов в строке
"заглавные, то искать будет с учетом регистра. 
"Чаще всего это то, что нужно
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
"set gdefault


"-------------------Групповая обработка файлов-----------------------"
" разрешить групповую обработку файлов через vim
set hidden


"-------------------------------Тэги---------------------------------"
" обновить файл tags
nnoremap <leader>t :!ctags -R<CR>

"--------------------------Обновить .vimrc---------------------------"
" сохранить .vimrc и применить новые настройки для всех открытых буферов
nnoremap <leader><F6> :w<CR>:source $MYVIMRC<CR>

