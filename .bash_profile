# vi keybindings
#set -o vi

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi


export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

export PATH=/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/gnu-tar/libexec/gnubin:/Users/aponcy/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
export PATH=/usr/local/etc:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/bin:${PATH}
export MAVEN_HOME=/Users/aponcy/devtools/apache-maven-3.0.5
export M2_HOME=/Users/aponcy/devtools/apache-maven-3.0.5
export PATH=$M2_HOME/bin:$PATH

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export EDITOR=vim
export GREP_OPTIONS='--color'
export ARCHFLAGS="-arch x86_64"
export FINDBUGS_HOME=/usr/local/Cellar/findbugs/3.0.0/libexec
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
export PYTHONPATH=/usr/local/lib/python2.7/site-packages

# cd to the path of the front Finder window
cdf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
}

# Countdown timer
ctd(){
   date1=$((`date +%s` + $1));
   while [ "$date1" -ne `date +%s` ]; do
     echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
   done
   terminal-notifier -title 'Countdown Timer' -message 'Times up!'
}

# Stopwatch
stpw(){
  date1=`date +%s`;
   while true; do
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r";
   done
}

# Reload mac hosts file
reloadhosts() {
  dscacheutil -flushcache
  sudo killall -HUP mDNSResponder
}

# RunHere, Run something found in all subdirectories of current directory
# Example: $ rh start-ds
rh () {
  for file in $( find . -iname $1 )
  do
    echo "### Executing $file ###"
    $file
    echo "### Completed execution of $file ###"
    echo ""
  done
}

#   extract:  Extract most know archives with one command
extract () {
  if [ -f $1 ] ; then
    case $1 in
    *.tar.bz2)   tar xjf $1     ;;
    *.tar.gz)    tar xzf $1     ;;
    *.bz2)       bunzip2 $1     ;;
    *.rar)       unrar e $1     ;;
    *.gz)        gunzip $1      ;;
    *.tar)       tar xf $1      ;;
    *.tbz2)      tar xjf $1     ;;
    *.tgz)       tar xzf $1     ;;
    *.zip)       unzip $1       ;;
    *.Z)         uncompress $1  ;;
    *.7z)        7z x $1        ;;
    *)     echo "'$1' cannot be extracted via extract()" ;;
    esac
    else
    echo "'$1' is not a valid file"
  fi
}


MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

