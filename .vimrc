"ПЛАГИНЫ
"Менеджер плагинов Vundle
" Команды
" :PluginList
" :PluginInstall
" :PluginSearch foo
" :PluginClean
" Помощь
" :h vundle 

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Плагин автообновления
"Plugin 'djoshea/vim-autoread'
call vundle#end()
filetype plugin indent on

" Разрешить обновление файла
set autoread

" Переход в нормальный режим
imap jj <Esc>
imap оо <Esc>

" Переход по логическим строкам, а не по фактическим
map j gj
map k gk

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
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

" Файлы подкачки - сохранение в отдельной папке
set directory^=$HOME/.vim/swap//

" Номера строк: показывать по умолчанию
set number

" Копирование во внешний буфер-файл в визуальном режиме (копирование между вкладками tmux)
map <C-c> :w! ~/.vimbuffer<CR>
map <C-p> :r ~/.vimbuffer<CR>

" Навигация по вкладкам
nmap <F7> :tabp<CR>
nmap <F8> :tabn<CR>

" Потеря фокуса: не знаю что это надеюсь поможет сохранить вкладки при перезагрузке системы
" autocmd BufLeave,FocusLost,VimResized * silent! wall

" Автообновление вкладок и буферов
"set autoread
"au FocusGained,BufEnter * :checktime
" au CursorHold * checktime

