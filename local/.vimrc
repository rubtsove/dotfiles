" === Main Block ===
syntax enable           " Enable syntax highlighting
set number              " Показывать номера строк
set ignorecase          " игнорировать заглавные буквы во время поиска
set smartcase           " When searching try to be smart about cases
set hlsearch            " Подсветка результатов поиска
set incsearch           " Makes search act like search in modern browsers
colorscheme desert      "color scheme
set wildmenu            " Улучшенное автодополнение команд
set ruler               " Always show cursor position
set cursorline          " Выделение текущей строки - линией подчеркиванием
set visualbell          " Flash the screen instead of beeping on errors
set title               " Set the window’s title, reflecting the file "  currently being edited
set showmode            " always show what mode we're currently editing in
set lazyredraw          " don't update the display while executing macros
set laststatus=2        " tell VIM to always put a status line in, even if "  there is only one window
set cmdheight=1         " use a status bar that is 1 rows high
set noswapfile          " НЕ использовать swap
set nobackup
set nowb
set ttyfast              " ускорение для терминала

set smarttab            " в случае включения этой опции, нажатие Tab в начале строки приведет к добавлению отступа, ширина которого соответствует shiftwidth
set shiftwidth=4        " используется для регулирование ширины отступов в пробелах, добавляемых командами » и «
set expandtab           " в режиме вставки заменяет символ табуляции на соответствующее количество пробелов
set tabstop=4           " количество пробелов, которыми символ табуляции отображается в тексте
set softtabstop=4       " количество пробелов, которыми символ табуляции отображается при добавлении

"set autoindent          " копирует отступы с текущей строки при добавлении новой
"set smartindent         " делает то же, что и autoindent плюс автоматически выставляет отступы в «нужных» местах ( типа{ )

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" === Устанолвка плагинов ===
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }   "<- Это настройка для Centos7
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


" === Настройка сочетания клавиш Ctrl + P для вызова команды :Files ===
nnoremap <C-p> :Files<Cr>
" === Настройка сочетания клавиш Ctrl + n для вызова команды :NERDTreeToggle ===
nnoremap <C-n> :NERDTreeToggle<Cr>

" === Настройка плагина FZF для окна предпросмотра ===
let g:fzf_layout = { 'right': '40%' }

" === Настройка плагина NERDTree для показа скрытых файлов
let NERDTreeShowHidden=1

"=============== Тема для плагина Airline =====================
let g:airline_theme='base16'
