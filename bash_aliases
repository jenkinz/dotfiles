# Adds an alias to the current shell and to this file.
# Borrowed from Mislav (http://github.com/mislav/dotfiles/tree/master/bash_aliases)
add-alias ()
{
   local name=$1 value=$2
   echo "alias $name='$value'" >> ~/.bash_aliases
   eval "alias $name='$value'"
   alias $name
}

############################################################
## List
############################################################

if [[ `uname` == 'Darwin' ]]; then
  alias ls="ls -G"
  # good for dark backgrounds
  export LSCOLORS=gxfxcxdxbxegedabagacad
else
  alias ls="ls --color=auto"
  # good for dark backgrounds
  export LS_COLORS='no=00:fi=00:di=00;36:ln=00;35:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;31:'
  # For LS_COLORS template: $ dircolors /etc/DIR_COLORS
fi

alias ll="ls -lh"

############################################################
# Preview (file contents)
############################################################
p ()
{
  cat "$@" | less;
}

alias v="vim"

############################################################
## Mutt (email client)
############################################################
if [[ `uname` == 'Darwin' ]]; then
  alias mutt='cd ~/Downloads && mutt' # cd to Downloads before launching, which is where attachments etc. will be saved
fi

############################################################
## Git
############################################################

############################################################
## Subversion
############################################################

# Remove all .svn folders from directory recursively
alias svn-clean='find . -name .svn -print0 | xargs -0 rm -rf'

############################################################
## OS X
############################################################

# Get rid of those pesky .DS_Store files recursively
alias dstore-clean='find . -type f -name .DS_Store -print0 | xargs -0 rm'

# Track who is listening to your iTunes music
alias whotunes='lsof -r 2 -n -P -F n -c iTunes -a -i TCP@`hostname`:3689'

# Opus Make
if [[ `uname` == 'Darwin' ]]; then
  alias mk='wine ~/bin/omake/omake.exe'
fi

############################################################
## Ruby
############################################################

############################################################
## Bundler
############################################################

############################################################
## Rails
############################################################

############################################################
## Emacs
##
## On Mac,
## `brew install emacs --HEAD --use-git-head --cocoa --srgb`
############################################################

if [ -f /Applications/Emacs.app/Contents/MacOS/Emacs ]; then
  #alias emacsclient='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -t'
  alias emacsclient='/usr/local/Cellar/emacs/HEAD/bin/emacsclient'
fi

e ()
{
  emacsclient "$@" & # send to emacs server in the background
}

alias et='emacsclient -t' # open an emacs frame on the current terminal window

############################################################
## Misc
###########################################################

alias grep='GREP_COLOR="1;37;41" grep --color=auto'

alias flushdns='dscacheutil -flushcache'

alias whichlinux='uname -a; cat /etc/*release; cat /etc/issue'

############################################################
