#Whats in an name/alias?

# Mac Specific aliases
alias vmstat=vm_stat
alias htop='sudo htop'
alias tcptraceroute='sudo tcptraceroute'
alias cow='fortune | cowsay'

alias f='open -a Finder ./' # Open a particular file using Finder
alias disablenap='defaults write NSGlobalDomain NSAppSleepDisabled -bool YES'
alias enablenap='defaults delete NSGlobalDomain NSAppSleepDisabled'
alias purge='sudo purge'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias dnsflush='sudo discoveryutil mdnsflushcache'

# Navigate to directories used often
alias xtex='cd ~/svnrepo/qa/texas-file-repository/trunk'
alias xtrunk='cd ~/svnrepo/trunk/ds/'
alias xetah='cd ~/svnrepo/qa/etah/trunk'
alias xver='cd ~/versions/'

# Quick kill statements
alias killmodrate='pkill -f ModRate'
alias killsearchrate='pkill -f SearchRate'
alias psj='ps aux | grep java'

# Handy command aliases
alias mvn='mvn -DsuppressOutputOnFailure=true'
alias br='. ~/.bash_profile ; . ~/.bash_aliases' # easily reload .bash_profile
alias unzipall="echo 'One moment please...'; unzip -q '*.zip'"
alias unzipq='unzip -q'
alias ping='ping -c 3'
alias fastping='ping -c 100 -s .2'
alias df='df -h'
alias du='du -ch'
alias mv='mv -i'
alias cp='cp -i'
alias ls='ls -l --color --group-directories-first'
alias ll='ls -ach'
alias lf='ls -lt --full-time'
alias l.='ls -d .*'
alias l='ls'
alias llall='ls -R'
alias c=clear
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../'
alias cd...='cd ../../../'
alias cd....='cd ../../../../'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias .6='cd ../../../../../..'
alias mkdir='mkdir -pv'
alias wget='wget -c'
alias tailf='tail -f'
alias diff='colordiff'
alias grep='grep --color'
alias fgrep='fgrep --color'
alias findhere='find . -iname'
alias finddirectory='find . -type d -iname'
alias findfile='find . -type f -iname'
alias findlargefiles='du -S . | sort -rh | head -25'
alias encode='base64 <<<'
alias decode='base64 -d <<<'
alias prettyjson='echo $1 | jq .'
# Quick vim alias
alias v=vim
alias vi=vim
alias svi='sudo vi'
alias edit='vim'
alias frep=grep

# Common mistypes
alias pc=cp
alias bim=vim
alias vmi=vim
alias vin=vim
alias eexit=exit

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

