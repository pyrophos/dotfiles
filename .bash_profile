# vi keybindings
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

#for f in $HOME/.bash-completion.unboundid/*; do
#  source $f
#done

export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

export PATH=/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/gnu-tar/libexec/gnubin:/Users/aponcy/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
export PATH=/usr/local/etc:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/bin:${PATH}

# Add go to the path
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Maven path
export MAVEN_HOME=/Users/aponcy/devtools/apache-maven-3.0.5
export M2_HOME=/Users/aponcy/devtools/apache-maven-3.0.5
export PATH=$M2_HOME/bin:$PATH

# Groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# Python
export PATH=$PATH:/usr/local/opt/go/libexec/bin

export PROMPT_COMMAND=""
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export EDITOR=vim
export GREP_OPTIONS='--color'
export ARCHFLAGS="-arch x86_64"
export FINDBUGS_HOME=/usr/local/Cellar/findbugs/3.0.0/libexec
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
export HISTCONTROL=ignoredups

MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
