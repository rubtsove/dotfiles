### Custom aliases
alias d1='clear && echo "---LSBLK---" && lsblk -e 7 && echo "---PVS---" && pvs && echo "---VGS---" && vgs && echo "---LVS---" && lvs && echo "---DUF---" && duf -only local'
alias c='clear'
alias du1='du -ha --max-depth=1 | sort -rh|head'
alias du2='du -ha --max-depth=1 | sort -rh'

### Standart commands finish
alias grep='grep --color=always'
alias cp='cp -r'
alias scp='scp -r'
alias rm='rm -rv'
alias mkdir='mkdir -p'
alias vim='vim -O'
alias e='ls -lha --color=auto --group-directories-first'
alias ls='ls --color=auto'
alias brc='source ~/.bashrc'
alias tree1='find . | sort | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'
alias tree2="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"

### beep an the end of commands
alias beep='echo $'\a''

hash colordiff 2>/dev/null && alias diff='colordiff'