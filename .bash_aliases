
#Whats in an name/alias?
alias br='. ~/.bash_profile' # easily reload .bash_profile
alias f='open -a Finder ./' # Open a particular file using Finder

alias weather='~/git/ansiweather/ansiweather'
alias w='~/git/ansiweather/ansiweather'
alias ls="ls -lh --color --group-directories-first"
alias ll='ls -a'
alias lll='ls a'
alias l.='ls -d .*'
alias l='ls'
alias c=clear
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias cd...='cd ../../..'
alias cd....='cd ../../../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias .6='cd ../../../../../..'
alias diff='colordiff'
alias grep='grep --color'
alias fgrep='fgrep --color'
alias findhere='find . -iname'
alias finddirectory='find . -type d -iname'
alias findfile='find . -type f -iname'
alias mkdir='mkdir -pv'
alias wget='wget -c'
alias tailf='tail -f'

alias v=vim
alias vi=vim
alias bim=vim
alias svi='sudo vi'
alias edit='vim'

alias vm=mv
alias pc=cp

alias ping='ping -c 3'
alias fastping='ping -c 100 -s .2'
alias df='df -h'
alias du='du -ch'

alias mv='mv -i'
alias cp='cp -i'

alias eexit=exit
alias psj='ps aux | grep java'

alias vmstat=vm_stat

# For fun run $ cow at the command line
alias cow='fortune | cowsay'

# Adds coloring to man pages
man() {
    env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

