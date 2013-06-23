# ~/.bash_profile: executed by bash for login shells.

if [ -e ~/.bashrc ] ; then
  . ~/.bashrc
fi

# Put all local machine customizations in ~/.bash_local
if [ -e ~/.bash_local ] ; then
  . ~/.bash_local
fi

if [[ `uname` == 'Darwin' ]]; then
  [[ -s "/Users/bjenkins/.rvm/scripts/rvm" ]] && source "/Users/bjenkins/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
fi
