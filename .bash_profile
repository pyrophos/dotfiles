#set -o vi
set -o emacs

if [ -f ~/.profile ]; then
  source ~/.profile
fi

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Color Variables
bk="\[\033[0;38m\]" #no background and white lines
txtBlue="\[\033[0;34m\]"   #letter color blue
txtRed="\[\033[0;31m\]"    #letter color red
txtCyan="\[\033[1;36m\]"   #letter color cyan
txtWhite="\[\033[1;37m\]"  #letter color white
txtYellow="\[\033[1;33m\]" #letter color yellow

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTCONTROL=ignoredups
export HISTSIZE=1000
export HISTFILESIZE=2000


# Generic PATH:
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#export PATH="$PATH:$HOME/.rvm/bin"
export PATH=${PATH}:/usr/local/etc
export PATH=${PATH}:/usr/local/sbin
export PATH=${PATH}:/usr/local/bin
export PATH=${PATH}:~/bin
#export PATH="${PATH}:/usr/local/opt/gnu-tar/libexec/gnubin"
#export PATH="${PATH}:$(brew --prefix coreutils)/libexec/gnubin"
#export PATH=${PATH}:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/gnu-tar/libexec/gnubin:${HOME}/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin

# Maven path
maven_version=3.3.9
export MAVEN_OPTS="-Xmx512m"
export MAVEN_HOME=~/devtools/apache-maven-${maven_version}
export M2_HOME=~/devtools/apache-maven-${maven_version}
export PATH=${PATH}:${M2_HOME}/bin

# Add go to the path
export PATH=${PATH}:/usr/local/opt/go/libexec/bin

export PROMPT_COMMAND=""
export PS1="${txtBlue}[\t] \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]$ "
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=ExFxBxDxCxegedabagacad
export EDITOR=vim

#export ARCHFLAGS="-arch x86_64"
#export FINDBUGS_HOME=/usr/local/bin/findbugs

# Some Java Paths for Automation Tests
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home
#export JAVA7_HOME=$(/usr/libexec/java_home -v 1.7)
#export JAVA8_HOME=$(/usr/libexec/java_home -v 1.8)

# Groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec

#MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

