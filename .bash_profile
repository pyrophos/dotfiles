#set -o vi
set -o emacs

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
export PATH=/usr/local/etc:${PATH}
export PATH=/usr/local/sbin:${PATH}
export PATH=/usr/local/bin:${PATH}
export PATH=~/bin:${PATH}
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:${PATH}"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:${PATH}"
export PATH=/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/gnu-tar/libexec/gnubin:${HOME}/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:${PATH}

# Maven path
export MAVEN_HOME=/Users/adamponcy/devtools/apache-maven-3.3.3
export M2_HOME=/Users/adamponcy/devtools/apache-maven-3.3.3
export PATH=${M2_HOME}/bin:${PATH}

# Python
#export PATH=${PATH}:/usr/local/opt/go/libexec/bin
# Add go to the path
#export PATH=${PATH}:/usr/local/opt/go/libexec/bin

export PROMPT_COMMAND=""
export PS1="${txtBlue}[\t] \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]$ "
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export EDITOR=vim

export ARCHFLAGS="-arch x86_64"
export FINDBUGS_HOME=/usr/local/bin/findbugs

# Some Java Paths for Automation Tests
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
#export JAVA6_HOME=/Library/Java/JavaVirtualMachines/1.6.0.jdk
export JAVA7_HOME=$(/usr/libexec/java_home -v 1.7)
export JAVA8_HOME=$(/usr/libexec/java_home -v 1.8)
#export UNBOUNDID_JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# Groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec

#MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

