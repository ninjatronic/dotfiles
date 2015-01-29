
#
# PATH
#

# rbenv (see https://github.com/sstephenson/rbenv) 
eval "$(rbenv init -)"

# nvm
source $(brew --prefix nvm)/nvm.sh

# macports paths
export PATH=${PATH}:/opt/local/bin:/opt/local/sbin

# android paths
export PATH=${PATH}:/Applications/adt-bundle/sdk/platform-tools:/Applications/adt-bundle/sdk/tools

# local npm path
export PATH=${PATH}:/Users/pete/.local-npm/bin

# heroku path
export PATH=${PATH}:/usr/local/heroku/bin

# python path
export PATH=${PATH}:/Library/Frameworks/Python.framework/Versions/3.4/bin

#
# aliases
#

# identify running livereload sessions
alias reloading='lsof -iTCP:35729'

#
# pretty colours
#

# colorisation for ls
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# bash prompt
export PS1="\[\e[00;33m\]\u@\h\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;32m\]\w\[\e[0m\]\[\e[00;37m\] \\$ \[\e[0m\]"

#
# completion
#

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# node completion
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOOME/.node-completion/$f"
  test -f "$f" && . "$f"
done

