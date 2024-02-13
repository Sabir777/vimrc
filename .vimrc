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
nnoremap Н y$

" Открыть терминал - выход из такого терминала команда: exit, при этом основное окно vim не закроется
nnoremap <C-q> :terminal<CR>

" Переход по логическим строкам, а не по фактическим
noremap j gj
noremap k gk

" Переход в начало и конец строки
nnoremap H ^
vnoremap H ^

nnoremap L $
vnoremap L $

nnoremap Р ^
vnoremap Р ^

nnoremap Д $
vnoremap Д $

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
nnoremap <F5> :bprev<CR>
nnoremap <F6> :bnext<CR>

" Навигация по тэгам
nnoremap <F10> :tprev<CR>
nnoremap <F11> :tnext<CR>

" Переход к первому определению слова(тэга). Дальнейшее перемещение: F5,F6
nnoremap <F12> g<C-]>1<CR><CR>

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
nnoremap ? :set hlsearch<CR>:noh<CR>?\v


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
nnoremap <leader><F7> :w<CR>:source $MYVIMRC<CR>


"--Всегда обновлять текущую директорию по последнему открытому файлу-"
autocmd BufEnter * lcd %:p:h

"-----------Включить/отключить нумерацию строк: <leader>n------------"
nnoremap <silent> <leader>n :set invnumber<CR>
nnoremap <silent> <leader>т :set invnumber<CR>

"--------------------Перемещаться между панелями---------------------"
" Перемещение с помощью <Alt-j,k,h,l>

" Сочетание символов '^[' означает Alt
" Причем нельзя в vimrc просто напечать эти два символа!!!
" Нужно в режиме вставки нажать <Ctrl-v> - нажать Alt - Нажать Esc
" В результате получится '^[' - только так можно забиндить Alt!!!

" Примечание: сочетание полученное данным способом подсвечивается синим,
" если напечатать просто символы они будут белым цветом и бинд не будет работать

" перемещение курсора в панель слева
nnoremap h <C-w>h
nnoremap р <C-w>h

" перемещение курсора в панель справа
nnoremap l <C-w>l
nnoremap д <C-w>l

" перемещение курсора в панель снизу
nnoremap j <C-w>j
nnoremap о <C-w>j

" перемещение курсора в панель сверху
nnoremap k <C-w>k
nnoremap л <C-w>k

"------------------------Создать панель (окно)-----------------------"
" создать панель справа: Alt + | (без Shift)
nnoremap \ <C-w>v

" создать панель снизу: Alt + -
nnoremap - <C-w>s

"-------------------------Двигать панели(окна)-----------------------"
" двигать панель влево
nnoremap <C-h> <C-w>h<C-w>x
nnoremap <C-р> <C-w>h<C-w>x

" двигать панель вправо
nnoremap <C-l> <C-w>x<C-w>l
nnoremap <C-д> <C-w>x<C-w>l

"-----------Открыть все буферы в отдельных панелях (окнах)-----------"
nnoremap <leader>b :bufdo vert sbnext<CR>:q<CR>
nnoremap <leader>и :bufdo vert sbnext<CR>:q<CR>

"------------------------Закрыть панель(окно)------------------------"
nnoremap <leader>q :q<CR>
nnoremap <leader>й :q<CR>

"----------------------------Quickfix list---------------------------"
" переход к предыдущей записи
nnoremap <F3> :cprev<CR> 

" переход к следующей записи
nnoremap <F4> :cnext<CR>

" открыть список Quickfix list
nnoremap <F1> :copen<CR>

" закрыть список Quickfix list
nnoremap <F2> :cclose<CR>

"-----------------------------Сессии vim-----------------------------"
" сохранить сессию
nnoremap <leader>w :wall<CR>:mksession! save.ses<CR>
nnoremap <leader>ц :wall<CR>:mksession! save.ses<CR>

" открыть сессию
nnoremap <leader>r :source save.ses<CR>
nnoremap <leader>к :source save.ses<CR>

"--------------------------Автодополнение----------------------------"
" включить меню автодополнения, выбрать следующее слово
inoremap <C-j> <C-n>

" включить меню автодополнения, выбрать предыдущее слово
inoremap <C-k> <C-p>


"-----------------------------Кодировки------------------------------"

" Выбор кодировки, в которой читать файл
set wildmenu
set wcm=<TAB>
menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=cp1251<CR>
menu Encoding.ibm-866 :e ++enc=cp866<CR>
menu Encoding.utf-8 :e ++enc=utf-8<CR>
map <F9> :emenu Encoding.<TAB>

" Выбор кодировки, в которой сохранять файл
set wildmenu
set wcm=<Tab>
menu Encoding.Write.koi8-r :set fenc=koi8-r<CR>
menu Encoding.Write.windows-1251 :set fenc=cp1251<CR>
menu Encoding.Write.cp866 :set fenc=cp866<CR>
menu Encoding.Write.utf-8 :set fenc=utf8<CR>
map <leader><F9> :emenu Encoding.Write.<TAB>

"---------------------------Аббревиатуры----------------------------"
cabbrev цй wq
cabbrev ц q

