export EDITOR="/usr/bin/vim"
export PATH=$PATH:/usr/local/bin/
export PS1='\n[\u@\H] \A \w \$'

[ -f "$HOME"/.bash_aliases ] && . "$HOME"/.bash_aliases
[ -f "$HOME"/.dircolors ] && . "$HOME"/.dircolors

#if [ -f "$HOME"/.bash_aliases ]; then
#    . "$HOME"/.bash_aliases
#fi

#if [ -f "$HOME"/.dircolors ]; then
#    . "$HOME"/.dircolors
#fi

if [[ -d /etc/bash_completion.d/ ]];then
  for file in /etc/bash_completion.d/* ; do
  . ${file}
  done
fi
unset file

### Color MAN
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

### History
export HISTSIZE=10000 # сохраняем в файле 10000 строчека
export HISTCONTROL=ignoreboth # если перед командой введён пробел - она не сохраняется в истории
export HISTTIMEFORMAT="%d %h %y %H:%M " # формат даты
export HISTIGNORE="ls:history*:w:htop:top:pwd:cd" # НЕ сохранять указанные команды в истории
PROMPT_COMMAND="history -a" # запоминать историю после каждой введённой команды, а не после завершения сессии

### shopt options
shopt -s cdspell # исправление имени директории при вводе с командой cd
shopt -s autocd # переход в нужную папку без команды cd
shopt -s direxpand # расширяет переменные среды по нажатию Tab
shopt -s checkjobs # параметр останавливает выход из сеанса, если в фоновом режиме ещё выполняются задания
shopt -s histverify # Опция histverify позволяет сначала посмотреть, как Bash интерпретирует команду до того, как он на самом деле запустится