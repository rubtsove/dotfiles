### custom exports ###
export EDITOR="/usr/bin/vim" # редактор по-молчанию - VIM
export PATH=$PATH:/usr/local/bin/ # все бинарники складываю в эту папку
export CHEAT_CONFIG_PATH="~/.dotfiles/cheat/conf.yml" # настройка по умолчанию для программы cheat
export CHEAT_USE_FZF=true # совместимость с FZF
#export PS1='\n[\u@\H] \A \w \$'

if [ $(id -u) -eq 0 >/dev/null  2>&1 ]; then
  PS1='\n[\[\e[1;31m\]\u@\H\[\e[m\]] \A [\w] \[\e[1;33m\]\$ \[\e[m\]'
else
  PS1='\n[\[\e[1;32m\]\u@\H\[\e[m\]] \A [\w] \[\e[1;33m\]\$ \[\e[m\]'
fi

[ -f "$HOME"/.bash_aliases ] && . "$HOME"/.bash_aliases

LSCOLORS=/usr/local/bin/lscolors
VIVID=/usr/local/bin/vivid
if [[ -f "${LSCOLORS}" ]] && [[ -f "${VIVID}" ]] ;then
  export LS_COLORS="$(vivid generate gruvbox-dark-hard)"
fi
unset LSCOLORS VIVID

if [ -z "${OS_VER}" ];then
  export OS_VER="$(hostnamectl |grep -i "operating"|awk '{print tolower($3)}')"
fi

### aliases ###
if [ -f "$HOME"/.bash_aliases ]; then
    . "$HOME"/.bash_aliases
fi
### bash_completion ###
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

### FZF show hidden filesvim 
export FZF_DEFAULT_COMMAND="find -L"
#export FZF_DEFAULT_OPTS='--no-height --no-reverse'
export FZF_CTRL_R_OPTS='--sort --exact'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"


### FZF systemctl
if [[ -f "$HOME"/.fuzzy-sys.plugin.sh ]];then
  . "$HOME"/.fuzzy-sys.plugin.sh
fi

### FZF keybindings
if [[ -f "$HOME"/.config/fzf/key-bindings.bash ]];then
  . "$HOME"/.config/fzf/key-bindings.bash
fi
