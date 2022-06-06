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

set ffs=unix            " For non-Unix style line-endings, the carriage return character \r will be displayed explicitly in vim as ^M
